--
-- PostgreSQL database dump
--

-- Dumped from database version 10.4
-- Dumped by pg_dump version 10.4

-- Started on 2018-09-15 21:33:57 CEST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 221 (class 1259 OID 16546)
-- Name: bookmark; Type: TABLE; Schema: study_app; Owner: postgres
--

CREATE TABLE study_app.bookmark (
    id bigint NOT NULL,
    book character varying NOT NULL,
    chapter bigint NOT NULL,
    label character varying,
    "time" timestamp without time zone[]
);


ALTER TABLE study_app.bookmark OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16549)
-- Name: bookmark_id_seq; Type: SEQUENCE; Schema: study_app; Owner: postgres
--

CREATE SEQUENCE study_app.bookmark_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE study_app.bookmark_id_seq OWNER TO postgres;

--
-- TOC entry 2913 (class 0 OID 0)
-- Dependencies: 222
-- Name: bookmark_id_seq; Type: SEQUENCE OWNED BY; Schema: study_app; Owner: postgres
--

ALTER SEQUENCE study_app.bookmark_id_seq OWNED BY study_app.bookmark.id;


--
-- TOC entry 2782 (class 2604 OID 16551)
-- Name: bookmark id; Type: DEFAULT; Schema: study_app; Owner: postgres
--

ALTER TABLE ONLY study_app.bookmark ALTER COLUMN id SET DEFAULT nextval('study_app.bookmark_id_seq'::regclass);


--
-- TOC entry 2906 (class 0 OID 16546)
-- Dependencies: 221
-- Data for Name: bookmark; Type: TABLE DATA; Schema: study_app; Owner: postgres
--



--
-- TOC entry 2914 (class 0 OID 0)
-- Dependencies: 222
-- Name: bookmark_id_seq; Type: SEQUENCE SET; Schema: study_app; Owner: postgres
--

SELECT pg_catalog.setval('study_app.bookmark_id_seq', 1, false);


--
-- TOC entry 2784 (class 2606 OID 16559)
-- Name: bookmark bookmark_pk; Type: CONSTRAINT; Schema: study_app; Owner: postgres
--

ALTER TABLE ONLY study_app.bookmark
    ADD CONSTRAINT bookmark_pk PRIMARY KEY (id);


-- Completed on 2018-09-15 21:33:58 CEST

--
-- PostgreSQL database dump complete
--

