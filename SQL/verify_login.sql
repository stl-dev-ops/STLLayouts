-- verify_login.sql
SELECT
  SUSER_SNAME() AS current_login,
  ORIGINAL_LOGIN() AS original_login,
  SYSTEM_USER AS system_user_name;
