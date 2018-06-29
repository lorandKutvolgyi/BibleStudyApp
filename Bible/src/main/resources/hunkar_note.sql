--
-- PostgreSQL database dump
--

-- Dumped from database version 9.3.23
-- Dumped by pg_dump version 9.3.23
-- Started on 2018-06-27 12:11:45 CEST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 193 (class 1259 OID 94283)
-- Name: hunkar_note; Type: TABLE; Schema: study_app; Owner: postgres; Tablespace: 
--

CREATE TABLE study_app.hunkar_note (
    id integer NOT NULL,
    book character varying(100) NOT NULL,
    chapter integer NOT NULL,
    verse integer NOT NULL,
    note character varying(4000) NOT NULL
);


ALTER TABLE study_app.hunkar_note OWNER TO postgres;

--
-- TOC entry 192 (class 1259 OID 94281)
-- Name: hunkar_note_id_seq; Type: SEQUENCE; Schema: study_app; Owner: postgres
--

CREATE SEQUENCE study_app.hunkar_note_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE study_app.hunkar_note_id_seq OWNER TO postgres;

--
-- TOC entry 2074 (class 0 OID 0)
-- Dependencies: 192
-- Name: hunkar_note_id_seq; Type: SEQUENCE OWNED BY; Schema: study_app; Owner: postgres
--

ALTER SEQUENCE study_app.hunkar_note_id_seq OWNED BY study_app.hunkar_note.id;


--
-- TOC entry 1957 (class 2604 OID 94286)
-- Name: id; Type: DEFAULT; Schema: study_app; Owner: postgres
--

ALTER TABLE ONLY study_app.hunkar_note ALTER COLUMN id SET DEFAULT nextval('study_app.hunkar_note_id_seq'::regclass);


--
-- TOC entry 2068 (class 0 OID 94283)
-- Dependencies: 193
-- Data for Name: hunkar_note; Type: TABLE DATA; Schema: study_app; Owner: postgres
--



--
-- TOC entry 2075 (class 0 OID 0)
-- Dependencies: 192
-- Name: hunkar_note_id_seq; Type: SEQUENCE SET; Schema: study_app; Owner: postgres
--

SELECT pg_catalog.setval('study_app.hunkar_note_id_seq', 1, false);


--
-- TOC entry 1959 (class 2606 OID 94291)
-- Name: hunkar_note_pkey; Type: CONSTRAINT; Schema: study_app; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY study_app.hunkar_note
    ADD CONSTRAINT hunkar_note_pkey PRIMARY KEY (id);


-- Completed on 2018-06-27 12:11:45 CEST

--
-- PostgreSQL database dump complete
--

