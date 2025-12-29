
-- db/schema.sql

BEGIN;

CREATE TYPE traceability_t AS ENUM ('NONE','LOT','SERIAL');
CREATE TYPE reservation_type_t AS ENUM ('MATERIAL','TOOL');
CREATE TYPE uom_t AS ENUM ('EA','FT','IN','CM','M','KG','G','LB','L','GAL','BOX','PACK','HOUR');

CREATE TABLE items (
  item_id        TEXT PRIMARY KEY,
  description    TEXT NOT NULL,
  item_type      TEXT NOT NULL CHECK (item_type IN ('MATERIAL','PART','TOOL','CONSUMABLE','FINISHED_GOOD')),
  uom            uom_t NOT NULL DEFAULT 'EA',
  traceability   traceability_t NOT NULL DEFAULT 'NONE',
  active         BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE item_substitutions (
  item_id        TEXT NOT NULL REFERENCES items(item_id),
  sub_item_id    TEXT NOT NULL REFERENCES items(item_id),
  priority       INT NOT NULL DEFAULT 100,
  note           TEXT,
  PRIMARY KEY (item_id, sub_item_id)
);

CREATE TABLE locations (
  location_id    TEXT PRIMARY KEY,             -- e.g., MAIN, RMA, TOOLRM
  parent_id      TEXT REFERENCES locations(location_id),
  kind           TEXT NOT NULL CHECK (kind IN ('SITE','WH','ROOM','BIN')),
  path           TEXT GENERATED ALWAYS AS (
      CASE WHEN parent_id IS NULL THEN location_id ELSE (parent_id || '/' || location_id) END
  ) STORED
);

CREATE TABLE item_lots (
  item_id        TEXT NOT NULL REFERENCES items(item_id),
  lot_serial     TEXT NOT NULL,
  mfg_date       DATE,
  exp_date       DATE,
  attrs          JSONB DEFAULT '{{}}'::jsonb,
  PRIMARY KEY (item_id, lot_serial)
);

CREATE TABLE onhand (
  item_id        TEXT NOT NULL REFERENCES items(item_id),
  location_id    TEXT NOT NULL REFERENCES locations(location_id),
  lot_serial     TEXT,   -- nullable for NONE traceability
  qty            NUMERIC(18,4) NOT NULL DEFAULT 0,
  PRIMARY KEY (item_id, location_id, lot_serial)
);

CREATE TABLE suppliers (
  supplier_id    TEXT PRIMARY KEY,
  name           TEXT NOT NULL
);

CREATE TABLE po (
  po_id          TEXT PRIMARY KEY,
  supplier_id    TEXT NOT NULL REFERENCES suppliers(supplier_id),
  eta_date       DATE,
  status         TEXT NOT NULL CHECK (status IN ('OPEN','CLOSED','CANCELLED')) DEFAULT 'OPEN'
);

CREATE TABLE po_lines (
  po_id          TEXT NOT NULL REFERENCES po(po_id),
  line_no        INT NOT NULL,
  item_id        TEXT NOT NULL REFERENCES items(item_id),
  qty_ordered    NUMERIC(18,4) NOT NULL,
  qty_received   NUMERIC(18,4) NOT NULL DEFAULT 0,
  PRIMARY KEY (po_id, line_no)
);

CREATE TABLE bom_headers (
  bom_id         TEXT PRIMARY KEY,
  output_item_id TEXT NOT NULL REFERENCES items(item_id),
  revision       TEXT NOT NULL DEFAULT 'A',
  UNIQUE (output_item_id, revision)
);

CREATE TABLE bom_lines (
  bom_id         TEXT NOT NULL REFERENCES bom_headers(bom_id),
  line_no        INT NOT NULL,
  item_id        TEXT NOT NULL REFERENCES items(item_id),
  qty_per        NUMERIC(18,6) NOT NULL,
  is_tool        BOOLEAN NOT NULL DEFAULT FALSE,
  PRIMARY KEY (bom_id, line_no)
);

CREATE TABLE jobs (
  job_id         TEXT PRIMARY KEY,
  bom_id         TEXT NOT NULL REFERENCES bom_headers(bom_id),
  site_id        TEXT NOT NULL REFERENCES locations(location_id),
  qty_to_build   NUMERIC(18,4) NOT NULL,
  due_date       DATE
);

CREATE TABLE job_ops (
  job_id         TEXT NOT NULL REFERENCES jobs(job_id),
  op_no          INT NOT NULL,
  description    TEXT,
  PRIMARY KEY (job_id, op_no)
);

CREATE TABLE job_requirements (
  job_id         TEXT NOT NULL REFERENCES jobs(job_id),
  op_no          INT NOT NULL REFERENCES job_ops(op_no),
  item_id        TEXT NOT NULL REFERENCES items(item_id),
  qty_needed     NUMERIC(18,4) NOT NULL,
  reservation_type reservation_type_t NOT NULL DEFAULT 'MATERIAL',
  PRIMARY KEY (job_id, op_no, item_id)
);

CREATE TABLE reservations (
  reservation_id BIGSERIAL PRIMARY KEY,
  job_id         TEXT NOT NULL REFERENCES jobs(job_id),
  item_id        TEXT NOT NULL REFERENCES items(item_id),
  location_id    TEXT NOT NULL REFERENCES locations(location_id),
  lot_serial     TEXT,
  qty            NUMERIC(18,4) NOT NULL,
  reservation_type reservation_type_t NOT NULL DEFAULT 'MATERIAL',
  expires_at     TIMESTAMPTZ,
  created_at     TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE TABLE transacts (
  txn_id         BIGSERIAL PRIMARY KEY,
  ts             TIMESTAMPTZ NOT NULL DEFAULT now(),
  txn_type       TEXT NOT NULL CHECK (txn_type IN ('ISSUE','RECEIVE','ADJUST','MOVE','RETURN')),
  item_id        TEXT NOT NULL REFERENCES items(item_id),
  from_location  TEXT REFERENCES locations(location_id),
  to_location    TEXT REFERENCES locations(location_id),
  lot_serial     TEXT,
  qty            NUMERIC(18,4) NOT NULL,
  ref            TEXT
);

-- Useful indexes
CREATE INDEX idx_onhand_item_loc ON onhand(item_id, location_id);
CREATE INDEX idx_reservations_job ON reservations(job_id);
CREATE INDEX idx_transacts_item_ts ON transacts(item_id, ts);

COMMIT;
