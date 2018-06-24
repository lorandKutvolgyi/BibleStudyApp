--
-- PostgreSQL database dump
--

-- Dumped from database version 9.3.23
-- Dumped by pg_dump version 9.3.23
-- Started on 2018-06-24 19:53:34 CEST

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
-- TOC entry 184 (class 1259 OID 69103)
-- Name: translations; Type: TABLE; Schema: study_app; Owner: postgres; Tablespace: 
--

CREATE TABLE study_app.translations (
    id integer NOT NULL,
    abbrev character varying(10) NOT NULL,
    description character varying(200),
    language character varying(100)
);


ALTER TABLE study_app.translations OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 69101)
-- Name: translations_id_seq; Type: SEQUENCE; Schema: study_app; Owner: postgres
--

CREATE SEQUENCE study_app.translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE study_app.translations_id_seq OWNER TO postgres;

--
-- TOC entry 2076 (class 0 OID 0)
-- Dependencies: 183
-- Name: translations_id_seq; Type: SEQUENCE OWNED BY; Schema: study_app; Owner: postgres
--

ALTER SEQUENCE study_app.translations_id_seq OWNED BY study_app.translations.id;


--
-- TOC entry 1959 (class 2604 OID 69106)
-- Name: id; Type: DEFAULT; Schema: study_app; Owner: postgres
--

ALTER TABLE ONLY study_app.translations ALTER COLUMN id SET DEFAULT nextval('study_app.translations_id_seq'::regclass);


--
-- TOC entry 2070 (class 0 OID 69103)
-- Dependencies: 184
-- Data for Name: translations; Type: TABLE DATA; Schema: study_app; Owner: postgres
--

COPY study_app.translations (id, abbrev, description, language) FROM stdin;
47	ASV	American Standard Version (1901)	EN
48	HunKar	Hungarian Vizsoly (Karoli) Biblia (1590)	HU
49	HunUj	Magyar Bibliatársulat újfordítású Bibliája	HU
\.


--
-- TOC entry 2077 (class 0 OID 0)
-- Dependencies: 183
-- Name: translations_id_seq; Type: SEQUENCE SET; Schema: study_app; Owner: postgres
--

SELECT pg_catalog.setval('study_app.translations_id_seq', 49, true);


--
-- TOC entry 1961 (class 2606 OID 69108)
-- Name: translations_pkey; Type: CONSTRAINT; Schema: study_app; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY study_app.translations
    ADD CONSTRAINT translations_pkey PRIMARY KEY (id);


-- Completed on 2018-06-24 19:53:34 CEST

--
-- PostgreSQL database dump complete
--

