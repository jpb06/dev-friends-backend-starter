--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 13.1 (Debian 13.1-1.pgdg100+1)

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
-- Name: Dev; Type: TABLE; Schema: public; Owner: POSTGRES_USER
--

CREATE TABLE public."Dev" (
    id integer NOT NULL,
    name text NOT NULL,
    role text NOT NULL,
    "idSquad" integer NOT NULL
);


ALTER TABLE public."Dev" OWNER TO "POSTGRES_USER";

--
-- Name: DevSkill; Type: TABLE; Schema: public; Owner: POSTGRES_USER
--

CREATE TABLE public."DevSkill" (
    id integer NOT NULL,
    "aquiredAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    level integer NOT NULL,
    "idDev" integer NOT NULL,
    "idSkill" integer NOT NULL
);


ALTER TABLE public."DevSkill" OWNER TO "POSTGRES_USER";

--
-- Name: DevSkill_id_seq; Type: SEQUENCE; Schema: public; Owner: POSTGRES_USER
--

CREATE SEQUENCE public."DevSkill_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."DevSkill_id_seq" OWNER TO "POSTGRES_USER";

--
-- Name: DevSkill_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: POSTGRES_USER
--

ALTER SEQUENCE public."DevSkill_id_seq" OWNED BY public."DevSkill".id;


--
-- Name: Dev_id_seq; Type: SEQUENCE; Schema: public; Owner: POSTGRES_USER
--

CREATE SEQUENCE public."Dev_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Dev_id_seq" OWNER TO "POSTGRES_USER";

--
-- Name: Dev_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: POSTGRES_USER
--

ALTER SEQUENCE public."Dev_id_seq" OWNED BY public."Dev".id;


--
-- Name: Repo; Type: TABLE; Schema: public; Owner: POSTGRES_USER
--

CREATE TABLE public."Repo" (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public."Repo" OWNER TO "POSTGRES_USER";

--
-- Name: RepoOwner; Type: TABLE; Schema: public; Owner: POSTGRES_USER
--

CREATE TABLE public."RepoOwner" (
    id integer NOT NULL,
    "idDev" integer NOT NULL,
    "idRepo" integer NOT NULL
);


ALTER TABLE public."RepoOwner" OWNER TO "POSTGRES_USER";

--
-- Name: RepoOwner_id_seq; Type: SEQUENCE; Schema: public; Owner: POSTGRES_USER
--

CREATE SEQUENCE public."RepoOwner_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."RepoOwner_id_seq" OWNER TO "POSTGRES_USER";

--
-- Name: RepoOwner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: POSTGRES_USER
--

ALTER SEQUENCE public."RepoOwner_id_seq" OWNED BY public."RepoOwner".id;


--
-- Name: Repo_id_seq; Type: SEQUENCE; Schema: public; Owner: POSTGRES_USER
--

CREATE SEQUENCE public."Repo_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Repo_id_seq" OWNER TO "POSTGRES_USER";

--
-- Name: Repo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: POSTGRES_USER
--

ALTER SEQUENCE public."Repo_id_seq" OWNED BY public."Repo".id;


--
-- Name: Skill; Type: TABLE; Schema: public; Owner: POSTGRES_USER
--

CREATE TABLE public."Skill" (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public."Skill" OWNER TO "POSTGRES_USER";

--
-- Name: Skill_id_seq; Type: SEQUENCE; Schema: public; Owner: POSTGRES_USER
--

CREATE SEQUENCE public."Skill_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Skill_id_seq" OWNER TO "POSTGRES_USER";

--
-- Name: Skill_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: POSTGRES_USER
--

ALTER SEQUENCE public."Skill_id_seq" OWNED BY public."Skill".id;


--
-- Name: Squad; Type: TABLE; Schema: public; Owner: POSTGRES_USER
--

CREATE TABLE public."Squad" (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public."Squad" OWNER TO "POSTGRES_USER";

--
-- Name: Squad_id_seq; Type: SEQUENCE; Schema: public; Owner: POSTGRES_USER
--

CREATE SEQUENCE public."Squad_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Squad_id_seq" OWNER TO "POSTGRES_USER";

--
-- Name: Squad_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: POSTGRES_USER
--

ALTER SEQUENCE public."Squad_id_seq" OWNED BY public."Squad".id;


--
-- Name: _prisma_migrations; Type: TABLE; Schema: public; Owner: POSTGRES_USER
--

CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);


ALTER TABLE public._prisma_migrations OWNER TO "POSTGRES_USER";

--
-- Name: Dev id; Type: DEFAULT; Schema: public; Owner: POSTGRES_USER
--

ALTER TABLE ONLY public."Dev" ALTER COLUMN id SET DEFAULT nextval('public."Dev_id_seq"'::regclass);


--
-- Name: DevSkill id; Type: DEFAULT; Schema: public; Owner: POSTGRES_USER
--

ALTER TABLE ONLY public."DevSkill" ALTER COLUMN id SET DEFAULT nextval('public."DevSkill_id_seq"'::regclass);


--
-- Name: Repo id; Type: DEFAULT; Schema: public; Owner: POSTGRES_USER
--

ALTER TABLE ONLY public."Repo" ALTER COLUMN id SET DEFAULT nextval('public."Repo_id_seq"'::regclass);


--
-- Name: RepoOwner id; Type: DEFAULT; Schema: public; Owner: POSTGRES_USER
--

ALTER TABLE ONLY public."RepoOwner" ALTER COLUMN id SET DEFAULT nextval('public."RepoOwner_id_seq"'::regclass);


--
-- Name: Skill id; Type: DEFAULT; Schema: public; Owner: POSTGRES_USER
--

ALTER TABLE ONLY public."Skill" ALTER COLUMN id SET DEFAULT nextval('public."Skill_id_seq"'::regclass);


--
-- Name: Squad id; Type: DEFAULT; Schema: public; Owner: POSTGRES_USER
--

ALTER TABLE ONLY public."Squad" ALTER COLUMN id SET DEFAULT nextval('public."Squad_id_seq"'::regclass);


--
-- Data for Name: Dev; Type: TABLE DATA; Schema: public; Owner: POSTGRES_USER
--

COPY public."Dev" (id, name, role, "idSquad") FROM stdin;
1	Arthur	Champion	1
2	Sarah	Member	1
3	Hamza	Squad owner	2
4	Hammadi	Member	2
5	Vincent	Champion	2
6	Jean	Member	3
7	Pierrick	Squad owner	3
8	Kevin	Champion	3
\.


--
-- Data for Name: DevSkill; Type: TABLE DATA; Schema: public; Owner: POSTGRES_USER
--

COPY public."DevSkill" (id, "aquiredAt", level, "idDev", "idSkill") FROM stdin;
1	2011-01-31 23:00:00	2	1	1
2	2010-01-31 23:00:00	3	1	4
3	2012-01-31 23:00:00	4	2	6
4	2008-01-31 23:00:00	1	2	1
5	2007-01-31 23:00:00	3	2	4
6	2010-01-31 23:00:00	3	3	2
7	2000-01-31 23:00:00	3	3	1
8	2005-01-31 23:00:00	2	4	7
9	2012-01-31 23:00:00	3	5	4
10	2008-01-31 23:00:00	2	5	1
11	2009-01-31 23:00:00	4	3	3
12	2004-01-31 23:00:00	1	6	1
13	2003-01-31 23:00:00	2	7	3
14	2011-01-31 23:00:00	3	7	1
15	2010-01-31 23:00:00	2	7	6
16	2009-01-31 23:00:00	4	8	5
17	2005-01-31 23:00:00	3	8	7
\.


--
-- Data for Name: Repo; Type: TABLE DATA; Schema: public; Owner: POSTGRES_USER
--

COPY public."Repo" (id, name) FROM stdin;
1	front
2	missions
3	users
\.


--
-- Data for Name: RepoOwner; Type: TABLE DATA; Schema: public; Owner: POSTGRES_USER
--

COPY public."RepoOwner" (id, "idDev", "idRepo") FROM stdin;
1	1	1
2	5	1
3	7	1
4	3	2
5	4	2
6	6	2
7	7	3
8	3	3
9	8	3
10	5	3
\.


--
-- Data for Name: Skill; Type: TABLE DATA; Schema: public; Owner: POSTGRES_USER
--

COPY public."Skill" (id, name) FROM stdin;
1	Typescript
2	Observables
3	nestjs
4	jest
5	aws
6	Clean code
7	Architecture
\.


--
-- Data for Name: Squad; Type: TABLE DATA; Schema: public; Owner: POSTGRES_USER
--

COPY public."Squad" (id, name) FROM stdin;
1	Squad 1
2	Squad 2
3	Squad 3
\.


--
-- Data for Name: _prisma_migrations; Type: TABLE DATA; Schema: public; Owner: POSTGRES_USER
--

COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
e4f4b2e0-cc4b-41ff-846d-0f85d2f9ea7e	9c1686f2941049d7d7186ecb2659565afb21324057cbcf80f8efe689f8dd7d54	2021-10-16 11:21:48.753515+00	20211014190753_init	\N	\N	2021-10-16 11:21:48.71028+00	1
92fda73f-aa91-420a-b041-6fb30bbc5d3f	18d54dc04b79ffb716ea51be31db101a84cdf50fb6c466c3e2029f67bfcb341e	2021-10-16 11:21:48.767244+00	20211016110347_	\N	\N	2021-10-16 11:21:48.75645+00	1
\.


--
-- Name: DevSkill_id_seq; Type: SEQUENCE SET; Schema: public; Owner: POSTGRES_USER
--

SELECT pg_catalog.setval('public."DevSkill_id_seq"', 1, false);


--
-- Name: Dev_id_seq; Type: SEQUENCE SET; Schema: public; Owner: POSTGRES_USER
--

SELECT pg_catalog.setval('public."Dev_id_seq"', 1, false);


--
-- Name: RepoOwner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: POSTGRES_USER
--

SELECT pg_catalog.setval('public."RepoOwner_id_seq"', 1, false);


--
-- Name: Repo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: POSTGRES_USER
--

SELECT pg_catalog.setval('public."Repo_id_seq"', 1, false);


--
-- Name: Skill_id_seq; Type: SEQUENCE SET; Schema: public; Owner: POSTGRES_USER
--

SELECT pg_catalog.setval('public."Skill_id_seq"', 1, false);


--
-- Name: Squad_id_seq; Type: SEQUENCE SET; Schema: public; Owner: POSTGRES_USER
--

SELECT pg_catalog.setval('public."Squad_id_seq"', 3, true);


--
-- Name: DevSkill DevSkill_pkey; Type: CONSTRAINT; Schema: public; Owner: POSTGRES_USER
--

ALTER TABLE ONLY public."DevSkill"
    ADD CONSTRAINT "DevSkill_pkey" PRIMARY KEY (id);


--
-- Name: Dev Dev_pkey; Type: CONSTRAINT; Schema: public; Owner: POSTGRES_USER
--

ALTER TABLE ONLY public."Dev"
    ADD CONSTRAINT "Dev_pkey" PRIMARY KEY (id);


--
-- Name: RepoOwner RepoOwner_pkey; Type: CONSTRAINT; Schema: public; Owner: POSTGRES_USER
--

ALTER TABLE ONLY public."RepoOwner"
    ADD CONSTRAINT "RepoOwner_pkey" PRIMARY KEY (id);


--
-- Name: Repo Repo_pkey; Type: CONSTRAINT; Schema: public; Owner: POSTGRES_USER
--

ALTER TABLE ONLY public."Repo"
    ADD CONSTRAINT "Repo_pkey" PRIMARY KEY (id);


--
-- Name: Skill Skill_pkey; Type: CONSTRAINT; Schema: public; Owner: POSTGRES_USER
--

ALTER TABLE ONLY public."Skill"
    ADD CONSTRAINT "Skill_pkey" PRIMARY KEY (id);


--
-- Name: Squad Squad_pkey; Type: CONSTRAINT; Schema: public; Owner: POSTGRES_USER
--

ALTER TABLE ONLY public."Squad"
    ADD CONSTRAINT "Squad_pkey" PRIMARY KEY (id);


--
-- Name: _prisma_migrations _prisma_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: POSTGRES_USER
--

ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);


--
-- Name: DevSkill DevSkill_idDev_fkey; Type: FK CONSTRAINT; Schema: public; Owner: POSTGRES_USER
--

ALTER TABLE ONLY public."DevSkill"
    ADD CONSTRAINT "DevSkill_idDev_fkey" FOREIGN KEY ("idDev") REFERENCES public."Dev"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: DevSkill DevSkill_idSkill_fkey; Type: FK CONSTRAINT; Schema: public; Owner: POSTGRES_USER
--

ALTER TABLE ONLY public."DevSkill"
    ADD CONSTRAINT "DevSkill_idSkill_fkey" FOREIGN KEY ("idSkill") REFERENCES public."Skill"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: Dev Dev_idSquad_fkey; Type: FK CONSTRAINT; Schema: public; Owner: POSTGRES_USER
--

ALTER TABLE ONLY public."Dev"
    ADD CONSTRAINT "Dev_idSquad_fkey" FOREIGN KEY ("idSquad") REFERENCES public."Squad"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: RepoOwner RepoOwner_idDev_fkey; Type: FK CONSTRAINT; Schema: public; Owner: POSTGRES_USER
--

ALTER TABLE ONLY public."RepoOwner"
    ADD CONSTRAINT "RepoOwner_idDev_fkey" FOREIGN KEY ("idDev") REFERENCES public."Dev"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: RepoOwner RepoOwner_idRepo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: POSTGRES_USER
--

ALTER TABLE ONLY public."RepoOwner"
    ADD CONSTRAINT "RepoOwner_idRepo_fkey" FOREIGN KEY ("idRepo") REFERENCES public."Repo"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- PostgreSQL database dump complete
--

