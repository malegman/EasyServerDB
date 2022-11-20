DROP SCHEMA IF EXISTS "item" CASCADE;
CREATE SCHEMA "item" AUTHORIZATION easyserver_owner;

GRANT ALL ON SCHEMA "item" TO easyserver_owner;
REVOKE ALL ON SCHEMA "item" FROM public;
