--
-- PostgreSQL database dump
--

-- Dumped from database version 9.3.23
-- Dumped by pg_dump version 9.3.23
-- Started on 2018-06-24 19:49:49 CEST

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
-- TOC entry 188 (class 1259 OID 94194)
-- Name: asv_reference; Type: TABLE; Schema: study_app; Owner: postgres; Tablespace: 
--

CREATE TABLE study_app.asv_reference (
    id integer NOT NULL,
    book character varying(100) NOT NULL,
    chapter integer NOT NULL,
    verse integer NOT NULL,
    refs character varying(1000) NOT NULL
);


ALTER TABLE study_app.asv_reference OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 94192)
-- Name: asv_reference_id_seq; Type: SEQUENCE; Schema: study_app; Owner: postgres
--

CREATE SEQUENCE study_app.asv_reference_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE study_app.asv_reference_id_seq OWNER TO postgres;

--
-- TOC entry 2076 (class 0 OID 0)
-- Dependencies: 187
-- Name: asv_reference_id_seq; Type: SEQUENCE OWNED BY; Schema: study_app; Owner: postgres
--

ALTER SEQUENCE study_app.asv_reference_id_seq OWNED BY study_app.asv_reference.id;


--
-- TOC entry 1959 (class 2604 OID 94197)
-- Name: id; Type: DEFAULT; Schema: study_app; Owner: postgres
--

ALTER TABLE ONLY study_app.asv_reference ALTER COLUMN id SET DEFAULT nextval('study_app.asv_reference_id_seq'::regclass);


--
-- TOC entry 2070 (class 0 OID 94194)
-- Dependencies: 188
-- Data for Name: asv_reference; Type: TABLE DATA; Schema: study_app; Owner: postgres
--

COPY study_app.asv_reference (id, book, chapter, verse, refs) FROM stdin;
\.


--
-- TOC entry 2077 (class 0 OID 0)
-- Dependencies: 187
-- Name: asv_reference_id_seq; Type: SEQUENCE SET; Schema: study_app; Owner: postgres
--

SELECT pg_catalog.setval('study_app.asv_reference_id_seq', 1, false);


--
-- TOC entry 1961 (class 2606 OID 94202)
-- Name: asv_reference_pkey; Type: CONSTRAINT; Schema: study_app; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY study_app.asv_reference
    ADD CONSTRAINT asv_reference_pkey PRIMARY KEY (id);


-- Completed on 2018-06-24 19:49:49 CEST

--
-- PostgreSQL database dump complete
--

