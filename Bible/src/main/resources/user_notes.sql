-- Sequence: study_app.user_notes_id_seq

-- DROP SEQUENCE study_app.user_notes_id_seq;

CREATE SEQUENCE study_app.user_notes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

-- Table: study_app.user_notes

-- DROP TABLE study_app.user_notes;

CREATE TABLE study_app.user_notes
(
    book character varying(100) COLLATE pg_catalog."default" NOT NULL,
    chapter bigint NOT NULL,
    notes character varying COLLATE pg_catalog."default",
    id bigint NOT NULL DEFAULT nextval('study_app.user_notes_id_seq'::regclass)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE study_app.user_notes
    OWNER to postgres;
