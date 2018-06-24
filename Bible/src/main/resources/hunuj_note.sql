--
-- PostgreSQL database dump
--

-- Dumped from database version 9.3.23
-- Dumped by pg_dump version 9.3.23
-- Started on 2018-06-24 19:52:22 CEST

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
-- TOC entry 202 (class 1259 OID 94331)
-- Name: hunuj_note; Type: TABLE; Schema: study_app; Owner: postgres; Tablespace: 
--

CREATE TABLE study_app.hunuj_note (
    id integer NOT NULL,
    book character varying(100) NOT NULL,
    chapter integer NOT NULL,
    verse integer NOT NULL,
    note character varying(4000) NOT NULL
);


ALTER TABLE study_app.hunuj_note OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 94329)
-- Name: hunuj_note_id_seq; Type: SEQUENCE; Schema: study_app; Owner: postgres
--

CREATE SEQUENCE study_app.hunuj_note_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE study_app.hunuj_note_id_seq OWNER TO postgres;

--
-- TOC entry 2076 (class 0 OID 0)
-- Dependencies: 201
-- Name: hunuj_note_id_seq; Type: SEQUENCE OWNED BY; Schema: study_app; Owner: postgres
--

ALTER SEQUENCE study_app.hunuj_note_id_seq OWNED BY study_app.hunuj_note.id;


--
-- TOC entry 1959 (class 2604 OID 94334)
-- Name: id; Type: DEFAULT; Schema: study_app; Owner: postgres
--

ALTER TABLE ONLY study_app.hunuj_note ALTER COLUMN id SET DEFAULT nextval('study_app.hunuj_note_id_seq'::regclass);


--
-- TOC entry 2070 (class 0 OID 94331)
-- Dependencies: 202
-- Data for Name: hunuj_note; Type: TABLE DATA; Schema: study_app; Owner: postgres
--

COPY study_app.hunuj_note (id, book, chapter, verse, note) FROM stdin;
\.


--
-- TOC entry 2077 (class 0 OID 0)
-- Dependencies: 201
-- Name: hunuj_note_id_seq; Type: SEQUENCE SET; Schema: study_app; Owner: postgres
--

SELECT pg_catalog.setval('study_app.hunuj_note_id_seq', 1, false);


--
-- TOC entry 1961 (class 2606 OID 94339)
-- Name: hunuj_note_pkey; Type: CONSTRAINT; Schema: study_app; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY study_app.hunuj_note
    ADD CONSTRAINT hunuj_note_pkey PRIMARY KEY (id);


-- Completed on 2018-06-24 19:52:22 CEST

--
-- PostgreSQL database dump complete
--

