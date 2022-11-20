CREATE TABLE IF NOT EXISTS item.t_item (
    id SERIAL NOT NULL,
    c_name VARCHAR(50) NOT NULL,
    c_date_create TIMESTAMP WITH TIME ZONE NOT NULL,
    c_date_update TIMESTAMP WITH TIME ZONE NOT NULL,
    id_user INTEGER
);

ALTER TABLE item.t_item ADD CONSTRAINT item__t_item__id__pk PRIMARY KEY (id);
ALTER TABLE item.t_item ADD CONSTRAINT item__t_item__c_name__uq UNIQUE (c_name);
ALTER TABLE item.t_item ADD CONSTRAINT item__t_item__id_user__fk FOREIGN KEY (id_user) REFERENCES "system".t_user (id) ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE item.t_item OWNER TO easyserver_owner;

GRANT ALL ON TABLE "item".t_item TO easyserver_owner;
REVOKE ALL ON TABLE "item".t_item FROM public;

COMMENT ON TABLE item.t_item IS 'easy item, предмет.';
COMMENT ON COLUMN item.t_item.id IS 'Идентификатор предмета.';
COMMENT ON COLUMN item.t_item.c_name IS 'Наименование предмета.';
COMMENT ON COLUMN item.t_item.c_date_create IS 'Дата создания предмета.';
COMMENT ON COLUMN item.t_item.c_date_update IS 'Дата последнего обновления предмета.';
COMMENT ON COLUMN item.t_item.id_user IS 'Идентификатор пользователя, создавшего предмет.';
