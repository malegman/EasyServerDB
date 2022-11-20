CREATE TABLE IF NOT EXISTS "system".t_user (
    id SERIAL NOT NULL,
    c_login VARCHAR(50) NOT NULL,
    c_password VARCHAR(255) NOT NULL,
    c_date_create TIMESTAMP WITH TIME ZONE NOT NULL,
    c_date_update TIMESTAMP WITH TIME ZONE NOT NULL
);

ALTER TABLE "system".t_user ADD CONSTRAINT system__t_user__id__pk PRIMARY KEY (id);
ALTER TABLE "system".t_user ADD CONSTRAINT system__t_user__c_login__uq UNIQUE (c_login);

ALTER TABLE "system".t_user OWNER TO easyserver_owner;

GRANT ALL ON TABLE "system".t_user TO easyserver_owner;
REVOKE ALL ON TABLE "system".t_user FROM public;

COMMENT ON TABLE "system".t_user IS 'Пользователь';
COMMENT ON COLUMN "system".t_user.id IS 'Идентификатор пользователя.';
COMMENT ON COLUMN "system".t_user.c_login IS 'Логин пользователя.';
COMMENT ON COLUMN "system".t_user.c_password IS 'Пароль пользователя в виде хэша.';
COMMENT ON COLUMN "system".t_user.c_date_create IS 'Дата создания пользователя.';
COMMENT ON COLUMN "system".t_user.c_date_update IS 'Дата последнего обновления пользователя.';
