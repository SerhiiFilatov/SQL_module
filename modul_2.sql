--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0
-- Dumped by pg_dump version 15.0

-- Started on 2023-01-07 13:55:28

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
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
-- TOC entry 214 (class 1259 OID 32991)
-- Name: task1; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.task1 (
    id character(50) NOT NULL,
    name text NOT NULL,
    pwd text NOT NULL,
    email text NOT NULL,
    gender text NOT NULL
);


ALTER TABLE public.task1 OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 33024)
-- Name: vocabulary; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vocabulary (
    id integer NOT NULL,
    name character varying(255),
    info text
);


ALTER TABLE public.vocabulary OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 33023)
-- Name: vocabulary_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vocabulary_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vocabulary_id_seq OWNER TO postgres;

--
-- TOC entry 3338 (class 0 OID 0)
-- Dependencies: 217
-- Name: vocabulary_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vocabulary_id_seq OWNED BY public.vocabulary.id;


--
-- TOC entry 216 (class 1259 OID 33019)
-- Name: word; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.word (
    id integer NOT NULL,
    word character varying(255),
    vocabulary_id integer
);


ALTER TABLE public.word OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 33018)
-- Name: word_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.word_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.word_id_seq OWNER TO postgres;

--
-- TOC entry 3339 (class 0 OID 0)
-- Dependencies: 215
-- Name: word_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.word_id_seq OWNED BY public.word.id;


--
-- TOC entry 3183 (class 2604 OID 33027)
-- Name: vocabulary id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vocabulary ALTER COLUMN id SET DEFAULT nextval('public.vocabulary_id_seq'::regclass);


--
-- TOC entry 3182 (class 2604 OID 33022)
-- Name: word id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.word ALTER COLUMN id SET DEFAULT nextval('public.word_id_seq'::regclass);


--
-- TOC entry 3328 (class 0 OID 32991)
-- Dependencies: 214
-- Data for Name: task1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.task1 (id, name, pwd, email, gender) FROM stdin;
2                                                 	Alex	21341234 	mmm@gmail.com 	m
1                                                 	 Vasya 	21341234qwfsdf 	mmm@mmail.com 	m
3                                                 	Alexey 	qq21341234Q 	alexey@gmail.com	m
4                                                 	Helen	MarryMeeee 	hell@gmail.com 	f
5                                                 	Jenny 	SmakeMyb 	eachup@gmail.com	f
6                                                 	 Lora	burn23 	tpicks@gmail.com 	f
\.


--
-- TOC entry 3332 (class 0 OID 33024)
-- Dependencies: 218
-- Data for Name: vocabulary; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vocabulary (id, name, info) FROM stdin;
1	animals	\N
2	school	\N
3	nature	\N
4	human	\N
5	SF	\N
\.


--
-- TOC entry 3330 (class 0 OID 33019)
-- Dependencies: 216
-- Data for Name: word; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.word (id, word, vocabulary_id) FROM stdin;
1	turtle	1
2	pig	1
3	dog	1
4	cat	1
5	lizard	1
6	cow	1
7	rabbit	1
8	frog	1
9	headgehog	1
10	goat	1
11	desk	2
12	book	2
13	chalk	2
14	pen	2
15	pencil	2
16	copybook	2
17	lesson	2
18	teacher	2
19	pupils	2
20	school	2
21	ray	3
22	thunder	3
23	sun	3
24	field	3
25	hill	3
26	mountain	3
27	river	3
28	forest	3
29	grass	3
30	rain	3
31	hair	4
32	nail	4
33	finger	4
34	eye	4
35	tooth	4
36	knee	4
37	elbow	4
38	leg	4
39	arm	4
40	head	4
41	engine	5
42	steel	5
43	power	5
44	nuclear	5
45	shotgun	5
46	laser	5
47	flight	5
48	energy	5
49	Moon	5
50	splace	5
\.


--
-- TOC entry 3340 (class 0 OID 0)
-- Dependencies: 217
-- Name: vocabulary_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vocabulary_id_seq', 5, true);


--
-- TOC entry 3341 (class 0 OID 0)
-- Dependencies: 215
-- Name: word_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.word_id_seq', 50, true);


--
-- TOC entry 3185 (class 2606 OID 33017)
-- Name: task1 task1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.task1
    ADD CONSTRAINT task1_pkey PRIMARY KEY (id);


-- Completed on 2023-01-07 13:55:33

--
-- PostgreSQL database dump complete
--

