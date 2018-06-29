--
-- PostgreSQL database dump
--

-- Dumped from database version 9.3.23
-- Dumped by pg_dump version 9.3.23
-- Started on 2018-06-27 12:12:27 CEST

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
-- TOC entry 191 (class 1259 OID 94272)
-- Name: hunkar_reference; Type: TABLE; Schema: study_app; Owner: postgres; Tablespace: 
--

CREATE TABLE study_app.hunkar_reference (
    id integer NOT NULL,
    book character varying(100) NOT NULL,
    chapter integer NOT NULL,
    verse integer NOT NULL,
    refs character varying(1000) NOT NULL
);


ALTER TABLE study_app.hunkar_reference OWNER TO postgres;

--
-- TOC entry 190 (class 1259 OID 94270)
-- Name: hunkar_reference_id_seq; Type: SEQUENCE; Schema: study_app; Owner: postgres
--

CREATE SEQUENCE study_app.hunkar_reference_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE study_app.hunkar_reference_id_seq OWNER TO postgres;

--
-- TOC entry 2074 (class 0 OID 0)
-- Dependencies: 190
-- Name: hunkar_reference_id_seq; Type: SEQUENCE OWNED BY; Schema: study_app; Owner: postgres
--

ALTER SEQUENCE study_app.hunkar_reference_id_seq OWNED BY study_app.hunkar_reference.id;


--
-- TOC entry 1957 (class 2604 OID 94275)
-- Name: id; Type: DEFAULT; Schema: study_app; Owner: postgres
--

ALTER TABLE ONLY study_app.hunkar_reference ALTER COLUMN id SET DEFAULT nextval('study_app.hunkar_reference_id_seq'::regclass);


--
-- TOC entry 2068 (class 0 OID 94272)
-- Dependencies: 191
-- Data for Name: hunkar_reference; Type: TABLE DATA; Schema: study_app; Owner: postgres
--



--
-- TOC entry 2075 (class 0 OID 0)
-- Dependencies: 190
-- Name: hunkar_reference_id_seq; Type: SEQUENCE SET; Schema: study_app; Owner: postgres
--

SELECT pg_catalog.setval('study_app.hunkar_reference_id_seq', 1, false);


--
-- TOC entry 1959 (class 2606 OID 94280)
-- Name: hunkar_reference_pkey; Type: CONSTRAINT; Schema: study_app; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY study_app.hunkar_reference
    ADD CONSTRAINT hunkar_reference_pkey PRIMARY KEY (id);


-- Completed on 2018-06-27 12:12:27 CEST

--
-- PostgreSQL database dump complete
--

