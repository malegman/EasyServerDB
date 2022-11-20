DROP SCHEMA IF EXISTS "system" CASCADE;
CREATE SCHEMA IF NOT EXISTS "system" AUTHORIZATION easyserver_owner;

GRANT ALL ON SCHEMA "system" TO easyserver_owner;
REVOKE ALL ON SCHEMA "system" FROM public;
