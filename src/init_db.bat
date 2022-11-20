@echo off

del "init_db.sql"

type nul > init_db.sql

copy /b init_db.sql + .\schema\system\init_schema.sql init_db.sql
copy /b init_db.sql + .\schema\item\init_schema.sql init_db.sql
copy /b init_db.sql + .\schema\system\table\t_user.sql init_db.sql
copy /b init_db.sql + .\schema\item\table\t_item.sql init_db.sql