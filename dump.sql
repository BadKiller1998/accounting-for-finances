--
-- PostgreSQL database dump
--

\restrict RRkl6bOSXMMSPLbe994E1Y4uZNfIHOC1Vd4h9vbXRRzJaQaQdoS906npgxaydF4

-- Dumped from database version 17.4 (Debian 17.4-1.pgdg120+2)
-- Dumped by pg_dump version 17.6 (Ubuntu 17.6-1.pgdg24.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: box_office; Type: TABLE; Schema: public; Owner: zhoglikovk
--

CREATE TABLE public.box_office (
    id integer NOT NULL,
    name_station character varying(100) NOT NULL,
    amount_in_box real DEFAULT 0
);


ALTER TABLE public.box_office OWNER TO zhoglikovk;

--
-- Name: box_office_id_seq; Type: SEQUENCE; Schema: public; Owner: zhoglikovk
--

CREATE SEQUENCE public.box_office_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.box_office_id_seq OWNER TO zhoglikovk;

--
-- Name: box_office_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zhoglikovk
--

ALTER SEQUENCE public.box_office_id_seq OWNED BY public.box_office.id;


--
-- Name: box_office id; Type: DEFAULT; Schema: public; Owner: zhoglikovk
--

ALTER TABLE ONLY public.box_office ALTER COLUMN id SET DEFAULT nextval('public.box_office_id_seq'::regclass);


--
-- Data for Name: box_office; Type: TABLE DATA; Schema: public; Owner: zhoglikovk
--

COPY public.box_office (id, name_station, amount_in_box) FROM stdin;
1	Тюкалинск	0
\.


--
-- Name: box_office_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zhoglikovk
--

SELECT pg_catalog.setval('public.box_office_id_seq', 1, true);


--
-- Name: box_office box_office_pkey; Type: CONSTRAINT; Schema: public; Owner: zhoglikovk
--

ALTER TABLE ONLY public.box_office
    ADD CONSTRAINT box_office_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

\unrestrict RRkl6bOSXMMSPLbe994E1Y4uZNfIHOC1Vd4h9vbXRRzJaQaQdoS906npgxaydF4

