CREATE OR REPLACE FUNCTION "system".register_user(_login VARCHAR(50), _password VARCHAR(255)) RETURNS INTEGER AS $$
    BEGIN
        INSERT INTO "system".t_user (c_login, c_password, c_date_create, c_date_update)
        VALUES (_login, _password, now(), now())
        RETURNING id;
    END;
$$
    LANGUAGE plpgsql
    SECURITY DEFINER;

ALTER FUNCTION "system".register_user(_login VARCHAR(50), _password VARCHAR(255)) OWNER TO easyserver_owner;

GRANT ALL ON FUNCTION "system".register_user(_login VARCHAR(50), _password VARCHAR(255)) TO easyserver_owner;
REVOKE ALL ON FUNCTION "system".register_user(_login VARCHAR(50), _password VARCHAR(255)) FROM public;

COMMENT ON FUNCTION "system".register_user(_login VARCHAR(50), _password VARCHAR(255)) IS 'Регистрация пользователя';
