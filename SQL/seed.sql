
-- db/seed.sql

BEGIN;

INSERT INTO locations (location_id, parent_id, kind) VALUES
('MAIN', NULL, 'SITE'),
('MAIN-WH', 'MAIN', 'WH'),
('BIN-A1', 'MAIN-WH', 'BIN'),
('BIN-A2', 'MAIN-WH', 'BIN'),
('TOOLRM', 'MAIN', 'ROOM');

INSERT INTO items (item_id, description, item_type, uom, traceability) VALUES
('WIRE-600V', '600V Copper Wire 16AWG', 'MATERIAL', 'FT', 'NONE'),
('TAPE-3M-471', '3M Vinyl Tape 471 Yellow', 'CONSUMABLE', 'EA', 'NONE'),
('SCREW-M4x12', 'Machine Screw M4x12', 'PART', 'EA', 'NONE'),
('GLUE-EPOXY-A', 'Epoxy A Part', 'CONSUMABLE', 'EA', 'LOT'),
('GLUE-EPOXY-B', 'Epoxy B Part', 'CONSUMABLE', 'EA', 'LOT'),
('TOOL-TORQUE-5NM', 'Torque Wrench 5Nm', 'TOOL', 'EA', 'SERIAL'),
('FG-BOX-100', 'Finished Good Box 100', 'FINISHED_GOOD', 'EA', 'NONE');

INSERT INTO item_lots (item_id, lot_serial, mfg_date) VALUES
('GLUE-EPOXY-A', 'A-2025-001', '2025-07-01'),
('GLUE-EPOXY-B', 'B-2025-002', '2025-07-02'),
('TOOL-TORQUE-5NM', 'SN-0001', NULL);

INSERT INTO onhand (item_id, location_id, lot_serial, qty) VALUES
('WIRE-600V', 'BIN-A1', NULL, 500),
('TAPE-3M-471', 'BIN-A1', NULL, 24),
('SCREW-M4x12', 'BIN-A2', NULL, 1000),
('GLUE-EPOXY-A', 'BIN-A2', 'A-2025-001', 10),
('GLUE-EPOXY-B', 'BIN-A2', 'B-2025-002', 10),
('TOOL-TORQUE-5NM', 'TOOLRM', 'SN-0001', 1);

INSERT INTO suppliers (supplier_id, name) VALUES
('3M', '3M Industrial'),
('NIT', 'Nitto');

INSERT INTO po (po_id, supplier_id, eta_date, status) VALUES
('PO1001', '3M', '2025-09-25', 'OPEN');

INSERT INTO po_lines (po_id, line_no, item_id, qty_ordered, qty_received) VALUES
('PO1001', 1, 'TAPE-3M-471', 48, 0);

INSERT INTO bom_headers (bom_id, output_item_id, revision) VALUES
('BOM-FG-100', 'FG-BOX-100', 'A');

INSERT INTO bom_lines (bom_id, line_no, item_id, qty_per, is_tool) VALUES
('BOM-FG-100', 1, 'WIRE-600V', 2.5, FALSE),
('BOM-FG-100', 2, 'SCREW-M4x12', 4, FALSE),
('BOM-FG-100', 3, 'TAPE-3M-471', 1, FALSE),
('BOM-FG-100', 4, 'TOOL-TORQUE-5NM', 1, TRUE);

INSERT INTO jobs (job_id, bom_id, site_id, qty_to_build, due_date) VALUES
('J1001', 'BOM-FG-100', 'MAIN', 10, '2025-09-30');

INSERT INTO job_ops (job_id, op_no, description) VALUES
('J1001', 10, 'Assemble'),
('J1001', 20, 'Torque Fasteners');

-- derived requirements for demo (normally generated)
INSERT INTO job_requirements (job_id, op_no, item_id, qty_needed, reservation_type) VALUES
('J1001', 10, 'WIRE-600V', 25, 'MATERIAL'),
('J1001', 10, 'SCREW-M4x12', 40, 'MATERIAL'),
('J1001', 10, 'TAPE-3M-471', 10, 'MATERIAL'),
('J1001', 20, 'TOOL-TORQUE-5NM', 1, 'TOOL');

COMMIT;
