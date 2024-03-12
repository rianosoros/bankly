--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE admin;
ALTER ROLE admin WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:8XKvez2mVjcscL6TQH0cEQ==$yhyqNaCif9zPu/h6Euvq/2t3vQGgXebo19jtZsZXTtU=:b35PqMYa8g4+V4fOXHRDmBmS9G7wMjAkWTwK9zA/rZg=';
CREATE ROLE rian;
ALTER ROLE rian WITH NOSUPERUSER INHERIT NOCREATEROLE CREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:oMWjGz1ZjHAJcPssOQR1ow==$PBGgF8NFyobuF+e4Xc09NIdApAX3CrJUrgfeRd7aT04=:JKmo1cU8od5SMbwLptAYATpwBKUIV7rToyV/sy6J22Y=';
CREATE ROLE worm;
ALTER ROLE worm WITH NOSUPERUSER INHERIT NOCREATEROLE CREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:1qL5geQGfiwEThP++zzZFg==$Kf3Q4GRRttACat763bCHJPAi04nMKSZIbBLHCDZnWtM=:YcuV1W4ZSn6oCNT1+yaJPv3FN88ttCPW9KPcS0AlMIE=';






--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.11 (Ubuntu 14.11-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)

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

--
-- PostgreSQL database dump complete
--

--
-- Database "CapstoneProject" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.11 (Ubuntu 14.11-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)

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

--
-- Name: CapstoneProject; Type: DATABASE; Schema: -; Owner: worm
--

CREATE DATABASE "CapstoneProject" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C.UTF-8';


ALTER DATABASE "CapstoneProject" OWNER TO worm;

\connect "CapstoneProject"

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
-- Name: alembic_version; Type: TABLE; Schema: public; Owner: worm
--

CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);


ALTER TABLE public.alembic_version OWNER TO worm;

--
-- Data for Name: alembic_version; Type: TABLE DATA; Schema: public; Owner: worm
--

COPY public.alembic_version (version_num) FROM stdin;
\.


--
-- Name: alembic_version alembic_version_pkc; Type: CONSTRAINT; Schema: public; Owner: worm
--

ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);


--
-- PostgreSQL database dump complete
--

--
-- Database "bankly" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.11 (Ubuntu 14.11-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)

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

--
-- Name: bankly; Type: DATABASE; Schema: -; Owner: worm
--

CREATE DATABASE bankly WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C.UTF-8';


ALTER DATABASE bankly OWNER TO worm;

\connect bankly

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
-- Name: users; Type: TABLE; Schema: public; Owner: worm
--

CREATE TABLE public.users (
    username text NOT NULL,
    first_name text NOT NULL,
    last_name text NOT NULL,
    email text NOT NULL,
    phone text NOT NULL,
    password text NOT NULL,
    admin boolean DEFAULT false
);


ALTER TABLE public.users OWNER TO worm;

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: worm
--

COPY public.users (username, first_name, last_name, email, phone, password, admin) FROM stdin;
\.


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: worm
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (username);


--
-- PostgreSQL database dump complete
--

--
-- Database "bankly_test" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.11 (Ubuntu 14.11-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)

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

--
-- Name: bankly_test; Type: DATABASE; Schema: -; Owner: worm
--

CREATE DATABASE bankly_test WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C.UTF-8';


ALTER DATABASE bankly_test OWNER TO worm;

\connect bankly_test

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
-- Name: users; Type: TABLE; Schema: public; Owner: worm
--

CREATE TABLE public.users (
    username text NOT NULL,
    first_name text NOT NULL,
    last_name text NOT NULL,
    email text NOT NULL,
    phone text NOT NULL,
    password text NOT NULL,
    admin boolean DEFAULT false
);


ALTER TABLE public.users OWNER TO worm;

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: worm
--

COPY public.users (username, first_name, last_name, email, phone, password, admin) FROM stdin;
\.


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: worm
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (username);


--
-- PostgreSQL database dump complete
--

--
-- Database "capstoneproject" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.11 (Ubuntu 14.11-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)

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

--
-- Name: capstoneproject; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE capstoneproject WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C.UTF-8';


ALTER DATABASE capstoneproject OWNER TO postgres;

\connect capstoneproject

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
-- Name: alembic_version; Type: TABLE; Schema: public; Owner: worm
--

CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);


ALTER TABLE public.alembic_version OWNER TO worm;

--
-- Name: liked_drinks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.liked_drinks (
    id integer NOT NULL,
    user_id integer,
    drink_id character varying
);


ALTER TABLE public.liked_drinks OWNER TO postgres;

--
-- Name: liked_drinks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.liked_drinks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.liked_drinks_id_seq OWNER TO postgres;

--
-- Name: liked_drinks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.liked_drinks_id_seq OWNED BY public.liked_drinks.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(80) NOT NULL,
    hashed_password character varying(200) NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: liked_drinks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.liked_drinks ALTER COLUMN id SET DEFAULT nextval('public.liked_drinks_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: alembic_version; Type: TABLE DATA; Schema: public; Owner: worm
--

COPY public.alembic_version (version_num) FROM stdin;
\.


--
-- Data for Name: liked_drinks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.liked_drinks (id, user_id, drink_id) FROM stdin;
1	1	12093
3	2	12093
4	2	11000
5	2	17207
6	2	14578
7	2	14586
8	2	13621
9	2	12097
14	1	16354
17	1	12786
20	1	12782
22	1	16405
26	1	14978
28	1	12093
29	1	17831
30	1	12097
31	1	178354
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, username, hashed_password) FROM stdin;
1	test	$2b$12$m15630wbYHrktWU0nI19NOrhiwTdbgYqhS.QLVE/eRPiCsLRZtP.C
2	bugs	$2b$12$BHxxEwQ3/LgGizsTaOTGhewQ7CVTcjvctYKiH3j7LYpw2045koXam
\.


--
-- Name: liked_drinks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.liked_drinks_id_seq', 31, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 2, true);


--
-- Name: alembic_version alembic_version_pkc; Type: CONSTRAINT; Schema: public; Owner: worm
--

ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);


--
-- Name: liked_drinks liked_drinks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.liked_drinks
    ADD CONSTRAINT liked_drinks_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: liked_drinks liked_drinks_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.liked_drinks
    ADD CONSTRAINT liked_drinks_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

--
-- Database "movies_db" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.11 (Ubuntu 14.11-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)

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

--
-- Name: movies_db; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE movies_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C.UTF-8';


ALTER DATABASE movies_db OWNER TO postgres;

\connect movies_db

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
-- Name: movies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movies (
    id integer NOT NULL,
    title text NOT NULL,
    release_year integer NOT NULL,
    runtime integer NOT NULL,
    rating text NOT NULL,
    studio_id integer
);


ALTER TABLE public.movies OWNER TO postgres;

--
-- Name: movies_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.movies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.movies_id_seq OWNER TO postgres;

--
-- Name: movies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.movies_id_seq OWNED BY public.movies.id;


--
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles (
    id integer NOT NULL,
    movie_id integer,
    star_id integer
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roles_id_seq OWNER TO postgres;

--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- Name: stars; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stars (
    id integer NOT NULL,
    first_name text NOT NULL,
    last_name text,
    birth_date date NOT NULL
);


ALTER TABLE public.stars OWNER TO postgres;

--
-- Name: stars_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stars_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stars_id_seq OWNER TO postgres;

--
-- Name: stars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stars_id_seq OWNED BY public.stars.id;


--
-- Name: studios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.studios (
    id integer NOT NULL,
    name text NOT NULL,
    start_date date
);


ALTER TABLE public.studios OWNER TO postgres;

--
-- Name: studios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.studios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.studios_id_seq OWNER TO postgres;

--
-- Name: studios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.studios_id_seq OWNED BY public.studios.id;


--
-- Name: movies id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies ALTER COLUMN id SET DEFAULT nextval('public.movies_id_seq'::regclass);


--
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- Name: stars id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stars ALTER COLUMN id SET DEFAULT nextval('public.stars_id_seq'::regclass);


--
-- Name: studios id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.studios ALTER COLUMN id SET DEFAULT nextval('public.studios_id_seq'::regclass);


--
-- Data for Name: movies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movies (id, title, release_year, runtime, rating, studio_id) FROM stdin;
1	Star Wars: The Force Awakens	2015	136	PG-13	1
5	Marvel's The Avengers	2012	142	PG-13	1
6	Star Wars: The Last Jedi	2017	151	PG-13	1
7	Black Panther	2018	140	PG-13	1
9	Rogue One: A Star Wars Story	2016	133	PG-13	1
10	Beauty and the Beast	2017	129	PG	1
11	Finding Dory	2016	103	PG	1
14	Avengers: Age of Ultron	2015	141	PG-13	1
19	Pirates of the Caribbean: Dead Man's Chest	2006	151	PG-13	1
20	The Lion King	1994	89	G	1
2	Avatar	2009	160	PG-13	2
12	Star Wars: Episode I - The Phantom Menace	1999	133	PG	2
13	Star Wars	1977	121	PG	2
34	Star Wars: Episode III - Revenge of the Sith	2005	146	PG-13	2
41	Deadpool	2016	106	R	2
66	Star Wars: Episode II - Attack of the Clones	2002	132	PG-13	2
68	Return of the Jedi	1983	134	PG	2
69	Independence Day	1996	153	PG-13	2
84	The Empire Strikes Back	1980	129	PG	2
87	Home Alone	1990	105	PG	2
3	Titanic	1997	194	PG-13	3
28	Transformers: Revenge of the Fallen	2009	144	PG-13	3
44	Transformers: Dark of the Moon	2011	154	PG-13	3
55	Forrest Gump	1994	141	PG-13	3
58	Shrek the Third	2007	92	PG	3
59	Transformers	2007	143	PG-13	3
60	Iron Man	2008	126	PG-13	3
62	Indiana Jones & Kingdom of the Crystal Skull	2008	120	PG-13	3
65	Iron Man 2	2010	125	PG-13	3
4	Jurassic World	2015	124	PG-13	4
17	E. T.: The Extra-Terrestrial	1982	117	PG	4
27	Jurassic Park	1993	127	PG-13	4
38	The Secret Life of Pets	2016	90	PG	4
39	Despicable Me 2	2013	98	PG	4
43	Furious 7	2015	137	PG-13	4
50	Minions	2015	91	PG	4
91	Meet the Fockers	2004	114	PG-13	4
94	Sing	2016	110	PG	4
97	Despicable Me 3	2017	90	PG	4
8	The Dark Knight	2008	150	PG-13	5
15	The Dark Knight Rises	2012	165	PG-13	5
22	Wonder Woman	2017	141	PG-13	5
32	Harry Potter and the Deathly Hallows: Part 2	2011	130	PG-13	5
45	American Sniper	2014	132	R	5
54	Batman v Superman: Dawn of Justice	2016	151	PG-13	5
56	It	2017	135	R	5
57	Suicide Squad	2016	130	PG-13	5
61	Harry Potter and the Sorcerer's Stone	2001	153	PG	5
72	The Hobbit: An Unexpected Journey	2012	166	PG-13	5
73	Harry Potter and the Half-Blood Prince	2009	153	PG-13	5
76	Harry Potter and the Deathly Hallows: Part 1	2010	150	PG-13	5
79	Inception	2010	148	PG-13	5
81	Harry Potter and the Order of the Phoenix	2007	139	PG-13	5
83	Man of Steel	2013	143	PG-13	5
89	The Matrix Reloaded	2003	138	R	5
16	Shrek 2	2004	93	PG	6
96	Shrek	2001	90	PG	6
18	The Hunger Games: Catching Fire	2013	146	PG-13	7
25	The Hunger Games	2012	142	PG-13	7
48	The Hunger Games: Mockingjay - Part 1	2014	123	PG-13	7
80	The Twilight Saga: Breaking Dawn Part 2	2012	116	PG-13	7
88	The Hunger Games: Mockingjay - Part 2	2015	137	PG-13	7
26	Spider-Man	2002	121	PG-13	8
30	Jumanji: Welcome to the Jungle	2018	119	PG-13	8
36	Spider-Man 2	2004	127	PG-13	8
49	Spider-Man 3	2007	140	PG-13	8
51	Spider-Man: Homecoming	2017	133	PG-13	8
71	Skyfall	2012	143	PG-13	8
98	The Amazing Spider-Man	2012	136	PG-13	8
35	The Lord of the Rings: Return of the King	2003	200	PG-13	9
46	The Lord of the Rings: The Two Towers	2002	179	PG-13	9
63	The Lord of the Rings: Fellowship of the Ring	2001	178	PG-13	9
37	The Passion of the Christ	2004	126	R	10
74	The Twilight Saga: Eclipse	2010	124	PG-13	11
75	The Twilight Saga: New Moon	2009	130	PG-13	11
90	The Twilight Saga: Breaking Dawn Part 1	2011	108	PG-13	11
21	Toy Story 3	2010	103	G	1
23	Iron Man 3	2013	129	PG-13	1
24	Captain America: Civil War	2016	147	PG-13	1
29	Frozen	2013	108	PG	1
31	Guardians of the Galaxy Vol. 2	2017	137	PG-13	1
33	Finding Nemo	2003	104	G	1
40	The Jungle Book	2016	105	PG	1
42	Inside Out	2015	94	PG	1
47	Zootopia	2016	108	PG	1
52	Alice in Wonderland	2010	109	PG-13	1
53	Guardians of the Galaxy	2014	121	PG-13	1
64	Thor: Ragnarok	2017	130	PG-13	1
67	Pirates of the Caribbean: At World's End	2007	168	PG-13	1
70	Pirates of the Caribbean: Curse of the Black Pearl	2003	135	PG-13	1
77	The Sixth Sense	1999	107	PG-13	1
78	Up	2009	96	PG	1
82	The Chronicles of Narnia: Lion, Witch & Wardrobe	2005	132	PG	1
86	Monsters, Inc.	2001	90	G	1
95	Monsters University	2013	107	G	1
100	The Incredibles	2004	115	PG	1
101	Toy Story 2	1999	95	G	1
85	Harry Potter and the Goblet of Fire	2005	153	PG-13	5
92	The Hangover	2009	96	R	5
93	Gravity	2013	91	PG-13	5
99	Harry Potter and the Chamber of Secrets	2002	161	PG	5
\.


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.roles (id, movie_id, star_id) FROM stdin;
1	44	1
2	10	3
3	61	3
4	73	3
5	81	3
6	85	3
7	99	3
8	32	3
9	76	3
10	32	4
11	61	4
12	73	4
13	76	4
14	81	4
15	85	4
16	99	4
17	8	6
18	15	6
19	57	7
20	69	7
21	16	8
22	58	8
23	96	8
24	3	9
25	12	10
26	34	10
27	66	10
28	30	12
29	43	12
30	5	14
31	14	14
32	24	14
33	40	14
34	65	14
35	94	14
36	12	15
37	19	15
38	67	15
39	70	15
40	5	17
41	12	17
42	14	17
43	27	17
44	34	17
45	60	17
46	65	17
47	66	17
48	100	17
49	21	18
50	55	18
51	101	18
52	78	19
53	18	20
54	25	20
55	48	20
56	88	20
57	3	22
58	1	24
59	13	24
60	62	24
61	68	24
62	84	24
63	57	26
64	31	27
65	45	27
66	53	27
67	92	27
68	42	28
69	58	28
70	6	29
71	15	29
72	79	29
73	7	30
74	7	32
75	10	33
76	35	33
77	46	33
78	63	33
79	72	33
80	58	34
81	38	35
82	47	35
83	97	35
84	11	36
85	14	36
86	40	36
87	47	36
88	64	36
89	26	37
90	47	37
91	7	38
92	24	38
93	21	39
94	50	39
95	51	39
96	39	40
97	97	40
98	89	41
99	32	43
100	52	43
101	73	43
102	76	43
103	81	43
104	1	44
105	71	44
106	98	45
107	2	46
108	31	46
109	53	46
110	70	46
111	4	47
112	13	47
113	31	47
114	53	47
115	15	48
116	52	48
117	11	49
118	33	49
119	5	50
120	14	50
121	23	50
122	24	50
123	51	50
124	60	50
125	65	50
\.


--
-- Data for Name: stars; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stars (id, first_name, last_name, birth_date) FROM stdin;
1	Frances	McDormand	1957-06-23
2	Jim	Carrey	1962-01-17
3	Emma	Watson	1990-04-15
4	Daniel	Radcliffe	1989-07-23
5	Charles	Chaplin	1889-04-16
6	Morgan	Freeman	1937-06-01
7	Will	Smith	1968-09-25
8	Cameron	Diaz	1972-08-30
9	Kate	Winslet	1975-10-05
10	Natalie	Portman	1981-06-09
11	Sean	Connery	1930-08-25
12	Dwayne	Johnson	1972-05-02
13	Angelina	Jolie	1975-06-04
14	Scarlett	Johansson	1984-11-22
15	Keira	Knightley	1985-03-26
16	Halle	Berry	1966-08-14
17	Samuel	Jackson	1948-12-21
18	Tom	Hanks	1956-07-09
19	Christopher	Plummer	1929-12-13
20	Jennifer	Lawrence	1990-08-15
21	Mila	Kunis	1983-08-14
22	Kathy	Bates	1948-06-28
23	Chris	Rock	1965-02-07
24	Harrison	Ford	1942-07-13
25	Wesley	Snipes	1962-07-31
26	Viola	Davis	1965-08-11
27	Bradley	Cooper	1975-01-05
28	Amy	Poehler	1971-09-16
29	Joseph	Gordon-Levitt	1981-02-17
30	Danai	Gurira	1978-02-14
31	Jamie	Foxx	1967-12-13
32	Angela	Bassett	1958-08-16
33	Ian	McKellen	1939-05-25
34	Maya	Rudolph	1972-07-27
35	Jenny	Slate	1982-03-25
36	Idris	Elba	1972-09-06
37	Octavia	Spencer	1972-05-25
38	Chadwick	Boseman	1977-11-29
39	Michael	Keaton	1951-09-05
40	Kristen	Wiig	1973-08-22
41	Keanu	Reeves	1964-09-02
42	Charlize	Theron	1975-08-07
43	Helena	Carter	1966-05-26
44	Daniel	Craig	1968-03-02
45	Emma	Stone	1988-11-06
46	Zoe	Saldana	1978-06-19
47	Chris	Pratt	1979-06-21
48	Anne	Hathaway	1982-11-12
49	Ellen	DeGeneres	1958-01-26
50	Robert	Downey Jr.	1965-04-04
\.


--
-- Data for Name: studios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.studios (id, name, start_date) FROM stdin;
1	Walt Disney Studios Motion Pictures	1953-06-23
2	20th Century Fox	1935-05-31
3	Paramount Pictures	1912-05-08
4	Universal Pictures	1912-04-30
5	Warner Bros.	1923-04-04
6	Dreamworks SKG	1994-10-12
7	Lionsgate	1997-07-10
8	Sony / Columbia Pictures	1924-01-10
9	New Line Cinema	1967-01-01
10	Newmarket Films	1994-01-01
11	Summit Entertainment	1991-07-26
12	Orion Pictures	1978-01-01
13	Sony Pictures Classics	1992-01-01
\.


--
-- Name: movies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.movies_id_seq', 101, true);


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.roles_id_seq', 125, true);


--
-- Name: stars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stars_id_seq', 50, true);


--
-- Name: studios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.studios_id_seq', 13, true);


--
-- Name: movies movies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_pkey PRIMARY KEY (id);


--
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: stars stars_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stars
    ADD CONSTRAINT stars_pkey PRIMARY KEY (id);


--
-- Name: studios studios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.studios
    ADD CONSTRAINT studios_pkey PRIMARY KEY (id);


--
-- Name: movies fk_studio; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies
    ADD CONSTRAINT fk_studio FOREIGN KEY (studio_id) REFERENCES public.studios(id);


--
-- Name: movies movies_studio_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_studio_id_fkey FOREIGN KEY (studio_id) REFERENCES public.studios(id);


--
-- Name: roles roles_movie_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_movie_id_fkey FOREIGN KEY (movie_id) REFERENCES public.movies(id) ON DELETE CASCADE;


--
-- Name: roles roles_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.stars(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

--
-- Database "playlist-app" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.11 (Ubuntu 14.11-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)

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

--
-- Name: playlist-app; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "playlist-app" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C.UTF-8';


ALTER DATABASE "playlist-app" OWNER TO postgres;

\connect -reuse-previous=on "dbname='playlist-app'"

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
-- Name: playlist; Type: TABLE; Schema: public; Owner: worm
--

CREATE TABLE public.playlist (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255)
);


ALTER TABLE public.playlist OWNER TO worm;

--
-- Name: playlist_id_seq; Type: SEQUENCE; Schema: public; Owner: worm
--

CREATE SEQUENCE public.playlist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.playlist_id_seq OWNER TO worm;

--
-- Name: playlist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: worm
--

ALTER SEQUENCE public.playlist_id_seq OWNED BY public.playlist.id;


--
-- Name: playlist_song; Type: TABLE; Schema: public; Owner: worm
--

CREATE TABLE public.playlist_song (
    id integer NOT NULL,
    playlist_id integer,
    song_id integer
);


ALTER TABLE public.playlist_song OWNER TO worm;

--
-- Name: playlist_song_id_seq; Type: SEQUENCE; Schema: public; Owner: worm
--

CREATE SEQUENCE public.playlist_song_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.playlist_song_id_seq OWNER TO worm;

--
-- Name: playlist_song_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: worm
--

ALTER SEQUENCE public.playlist_song_id_seq OWNED BY public.playlist_song.id;


--
-- Name: song; Type: TABLE; Schema: public; Owner: worm
--

CREATE TABLE public.song (
    id integer NOT NULL,
    title character varying(255),
    artist character varying(255)
);


ALTER TABLE public.song OWNER TO worm;

--
-- Name: song_id_seq; Type: SEQUENCE; Schema: public; Owner: worm
--

CREATE SEQUENCE public.song_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.song_id_seq OWNER TO worm;

--
-- Name: song_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: worm
--

ALTER SEQUENCE public.song_id_seq OWNED BY public.song.id;


--
-- Name: playlist id; Type: DEFAULT; Schema: public; Owner: worm
--

ALTER TABLE ONLY public.playlist ALTER COLUMN id SET DEFAULT nextval('public.playlist_id_seq'::regclass);


--
-- Name: playlist_song id; Type: DEFAULT; Schema: public; Owner: worm
--

ALTER TABLE ONLY public.playlist_song ALTER COLUMN id SET DEFAULT nextval('public.playlist_song_id_seq'::regclass);


--
-- Name: song id; Type: DEFAULT; Schema: public; Owner: worm
--

ALTER TABLE ONLY public.song ALTER COLUMN id SET DEFAULT nextval('public.song_id_seq'::regclass);


--
-- Data for Name: playlist; Type: TABLE DATA; Schema: public; Owner: worm
--

COPY public.playlist (id, name, description) FROM stdin;
1	My Playlist 1	This is my first playlist.
2	My Playlist 2	Another playlist with a description.
3	R&B Fire Beats	sfdiubvhs
4	Mi Vida	Songs for mi gusanito
5	Amine	fave ongs
\.


--
-- Data for Name: playlist_song; Type: TABLE DATA; Schema: public; Owner: worm
--

COPY public.playlist_song (id, playlist_id, song_id) FROM stdin;
1	1	1
2	4	1
3	4	4
4	4	1
5	4	5
6	4	1
7	4	1
8	4	1
9	1	4
10	1	2
11	1	3
12	1	5
13	2	1
14	2	2
15	2	3
16	2	3
17	2	1
18	2	4
19	2	5
20	5	1
\.


--
-- Data for Name: song; Type: TABLE DATA; Schema: public; Owner: worm
--

COPY public.song (id, title, artist) FROM stdin;
1	PINEAPPLE UPSIDE DOWN	QJ
2	CEO OF MY A**	Dev Lemons
3	Help Me Out	Nick Green
4	poo poo	caca
5	wefivbuwhefv	YEP!
\.


--
-- Name: playlist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: worm
--

SELECT pg_catalog.setval('public.playlist_id_seq', 5, true);


--
-- Name: playlist_song_id_seq; Type: SEQUENCE SET; Schema: public; Owner: worm
--

SELECT pg_catalog.setval('public.playlist_song_id_seq', 20, true);


--
-- Name: song_id_seq; Type: SEQUENCE SET; Schema: public; Owner: worm
--

SELECT pg_catalog.setval('public.song_id_seq', 5, true);


--
-- Name: playlist playlist_pkey; Type: CONSTRAINT; Schema: public; Owner: worm
--

ALTER TABLE ONLY public.playlist
    ADD CONSTRAINT playlist_pkey PRIMARY KEY (id);


--
-- Name: playlist_song playlist_song_pkey; Type: CONSTRAINT; Schema: public; Owner: worm
--

ALTER TABLE ONLY public.playlist_song
    ADD CONSTRAINT playlist_song_pkey PRIMARY KEY (id);


--
-- Name: song song_pkey; Type: CONSTRAINT; Schema: public; Owner: worm
--

ALTER TABLE ONLY public.song
    ADD CONSTRAINT song_pkey PRIMARY KEY (id);


--
-- Name: playlist_song playlist_song_playlist_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: worm
--

ALTER TABLE ONLY public.playlist_song
    ADD CONSTRAINT playlist_song_playlist_id_fkey FOREIGN KEY (playlist_id) REFERENCES public.playlist(id);


--
-- Name: playlist_song playlist_song_song_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: worm
--

ALTER TABLE ONLY public.playlist_song
    ADD CONSTRAINT playlist_song_song_id_fkey FOREIGN KEY (song_id) REFERENCES public.song(id);


--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.11 (Ubuntu 14.11-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)

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

--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

