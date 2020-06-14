--
-- PostgreSQL database dump
--

-- Dumped from database version 10.12 (Ubuntu 10.12-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.12 (Ubuntu 10.12-0ubuntu0.18.04.1)

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

DROP DATABASE tefuni;
--
-- Name: tefuni; Type: DATABASE; Schema: -; Owner: tefuni
--

CREATE DATABASE tefuni WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'pl_PL.UTF-8' LC_CTYPE = 'pl_PL.UTF-8';


ALTER DATABASE tefuni OWNER TO tefuni;

\connect tefuni

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
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: tefuni_assign; Type: TABLE; Schema: public; Owner: tefuni
--

CREATE TABLE public.tefuni_assign (
    id integer NOT NULL,
    tefuni_id integer,
    teacher_id integer,
    week text,
    hours integer
);


ALTER TABLE public.tefuni_assign OWNER TO tefuni;

--
-- Name: tefuni_assign_id_seq; Type: SEQUENCE; Schema: public; Owner: tefuni
--

CREATE SEQUENCE public.tefuni_assign_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tefuni_assign_id_seq OWNER TO tefuni;

--
-- Name: tefuni_assign_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tefuni
--

ALTER SEQUENCE public.tefuni_assign_id_seq OWNED BY public.tefuni_assign.id;


--
-- Name: tefuni_groups; Type: TABLE; Schema: public; Owner: tefuni
--

CREATE TABLE public.tefuni_groups (
    gr text,
    struct text
);


ALTER TABLE public.tefuni_groups OWNER TO tefuni;

--
-- Name: tefuni_input; Type: TABLE; Schema: public; Owner: tefuni
--

CREATE TABLE public.tefuni_input (
    id integer,
    gr character varying(30),
    semester integer,
    form text,
    subject character varying(50),
    hours integer,
    blocks text,
    subjectf character varying(200)
);


ALTER TABLE public.tefuni_input OWNER TO tefuni;

--
-- Name: tefuni_teachers; Type: TABLE; Schema: public; Owner: tefuni
--

CREATE TABLE public.tefuni_teachers (
    id integer,
    name text
);


ALTER TABLE public.tefuni_teachers OWNER TO tefuni;

--
-- Name: tefuni_weeks; Type: TABLE; Schema: public; Owner: tefuni
--

CREATE TABLE public.tefuni_weeks (
    meta text,
    weeks text
);


ALTER TABLE public.tefuni_weeks OWNER TO tefuni;

--
-- Name: v_tefuni; Type: VIEW; Schema: public; Owner: tefuni
--

CREATE VIEW public.v_tefuni AS
 SELECT i.id,
    i.gr,
    i.semester,
    i.form,
    i.subject,
    i.hours,
    i.blocks,
    i.subjectf,
    g.struct
   FROM (public.tefuni_input i
     LEFT JOIN public.tefuni_groups g ON (((i.gr)::text = g.gr)));


ALTER TABLE public.v_tefuni OWNER TO tefuni;

--
-- Name: v_tefuni_assign; Type: VIEW; Schema: public; Owner: tefuni
--

CREATE VIEW public.v_tefuni_assign AS
 SELECT a.id,
    a.tefuni_id,
    a.teacher_id,
    a.week,
    a.hours,
    t.name
   FROM (public.tefuni_assign a
     LEFT JOIN public.tefuni_teachers t ON ((a.teacher_id = t.id)));


ALTER TABLE public.v_tefuni_assign OWNER TO tefuni;

--
-- Name: tefuni_assign id; Type: DEFAULT; Schema: public; Owner: tefuni
--

ALTER TABLE ONLY public.tefuni_assign ALTER COLUMN id SET DEFAULT nextval('public.tefuni_assign_id_seq'::regclass);


--
-- Data for Name: tefuni_assign; Type: TABLE DATA; Schema: public; Owner: tefuni
--

COPY public.tefuni_assign (id, tefuni_id, teacher_id, week, hours) FROM stdin;
142	6942	614	31.08-06.09	5
143	6942	614	31.08-06.09	2
144	6942	1390	31.08-06.09	4
145	6942	269	07.09-13.09	6
146	6942	674	07.09-13.09	5
147	6942	674	14.09-20.09	4
148	6942	1390	14.09-20.09	22
\.


--
-- Data for Name: tefuni_groups; Type: TABLE DATA; Schema: public; Owner: tefuni
--

COPY public.tefuni_groups (gr, struct) FROM stdin;
Erasmus	{"labs":[[10]],"teachers":[[1]]}
Inne	{"labs":[[16,15]],"teachers":[[2,2]]}
ND-BW4	{"labs":[[13]],"teachers":[[2]]}
ND-BW5	{"labs":[[15,15],[16,16]],"teachers":[[2,2],[2,2]]}
ND-BW6	{"labs":[[20]],"teachers":[[2]]}
ND-P34	{"labs":[[15,14],[15,14],[15,15],[13,13],[14,13],[13,13]],"teachers":[[2,2],[2,2],[2,2],[2,2],[2,2],[2,2]]}
ND-P35	{"labs":[[15,16],[16,15],[13,13],[16,15],[12,12],[16,16]],"teachers":[[2,2],[2,2],[2,2],[2,2],[1,1],[2,2]]}
ND-P36	{"labs":[[15,14],[14,14],[15,14],[15,15],[8,13],[14,13]],"teachers":[[2,2],[2,2],[2,2],[2,2],[1,2],[2,2]]}
ND-P37	{"labs":[[15,15],[15,15],[15,15],[15,15],[15,15],[15,15]],"teachers":[[2,2],[2,2],[2,2],[2,2],[2,2],[2,2]]}
NP-C15	{"labs":[[13]],"teachers":[[2]]}
NP-C16	{"labs":[[19]],"teachers":[[2]]}
NP-CBW6	{"labs":[[16]],"teachers":[[2]]}
NP-CBW7	{"labs":[[8]],"teachers":[[1]]}
NP-CBW8	{"labs":[[20]],"teachers":[[2]]}
NP-PC18	{"labs":[[18],[18]],"teachers":[[2],[2]]}
NP-PC19	{"labs":[[13],[13,13]],"teachers":[[2],[2,2]]}
NP-PC20	{"labs":[[15,15]],"teachers":[[2,2]]}
NP-PC21	{"labs":[[18]],"teachers":[[2]]}
NP-PC22	{"labs":[[12,13]],"teachers":[[1,2]]}
NP-PC23	{"labs":[[12,12],[12,12]],"teachers":[[1,1],[1,1]]}
NP-PS43	{"labs":[[17,16],[18,16],[14,17],[17,15],[18,17],[15,14]],"teachers":[[2,2],[2,2],[2,2],[2,2],[2,2],[2,2]]}
NP-PS44	{"labs":[[19,16],[16,17],[19,15],[17,16],[18,14],[13,14]],"teachers":[[2,2],[2,2],[2,2],[2,2],[2,2],[2,2]]}
NP-PS45	{"labs":[[14,15],[15,16],[16,16],[15,15],[13,12],[15,15]],"teachers":[[2,2],[2,2],[2,2],[2,2],[2,1],[2,2]]}
NP-PS46	{"labs":[[13,13],[15,16],[12,12],[14,14],[14,13],[17,17],[17,16]],"teachers":[[2,2],[2,2],[1,1],[2,2],[2,2],[2,2],[2,2]]}
NP-PS47A	{"labs":[[15,15],[14,13],[15,14],[16,15]],"teachers":[[2,2],[2,2],[2,2],[2,2]]}
NP-PS47B	{"labs":[[15,15],[14,14],[14,17]],"teachers":[[2,2],[2,2],[2,2]]}
NP-PS48A	{"labs":[[15,15],[14,13],[15,14],[16,15]],"teachers":[[2,2],[2,2],[2,2],[2,2]]}
NP-PS48B	{"labs":[[15,15],[14,14],[14,17]],"teachers":[[2,2],[2,2],[2,2]]}
SD-BW3	{"labs":[[16,18]],"teachers":[[2,2]]}
SD-BW4	{"labs":[[11]],"teachers":[[1]]}
SD-BW5	{"labs":[[18]],"teachers":[[2]]}
SD-BW6	{"labs":[[30]],"teachers":[[2]]}
SD-P12	{"labs":[[13,22]],"teachers":[[2,2]]}
SD-P13	{"labs":[[14,12]],"teachers":[[2,1]]}
SD-P14	{"labs":[[12,12],[10,9]],"teachers":[[1,1],[1,1]]}
SD-P15	{"labs":[[13,12],[11,12]],"teachers":[[2,1],[1,1]]}
SP-C17.IBC	{"labs":[[26]],"teachers":[[2]]}
SP-C18.IBC	{"labs":[[10,10]],"teachers":[[1,1]]}
SP-C18.IBPr	{"labs":[[13,12]],"teachers":[[2,1]]}
SP-C19	{"labs":[[9,9]],"teachers":[[1,1]]}
SP-CBW4.OL	{"labs":[[20]],"teachers":[[2]]}
SP-CBW4.ZB	{"labs":[[15]],"teachers":[[2]]}
SP-CBW5	{"labs":[[35]],"teachers":[[2]]}
SP-CBW5.OL	{"labs":[[17,18]],"teachers":[[2,2]]}
SP-CBW6	{"labs":[[28]],"teachers":[[2]]}
SP-CBW6.ZB	{"labs":[[15,15],[16,16]],"teachers":[[2,2],[2,2]]}
SP-CBW7	{"labs":[[23]],"teachers":[[2]]}
SP-CBW8	{"labs":[[15,15]],"teachers":[[2,2]]}
SP-PC15	{"labs":[[16,15],[15,17]],"teachers":[[2,2],[2,2]]}
SP-PC16	{"labs":[[17,16]],"teachers":[[2,2]]}
SP-PC17	{"labs":[[15],[15]],"teachers":[[2],[2]]}
SP-PC18	{"labs":[[11,10],[16]],"teachers":[[1,1],[2]]}
SP-PC19	{"labs":[[14],[11,9],[10,9]],"teachers":[[2],[1,1],[1,1]]}
SP-PC20	{"labs":[[12,12],[12,12],[12,12]],"teachers":[[1,1],[1,1],[1,1]]}
SP-PK15	{"labs":[[14,15],[14,14],[15,15]],"teachers":[[2,2],[2,2],[2,2]]}
SP-PK16	{"labs":[[15,15],[15,14],[15,15]],"teachers":[[2,2],[2,2],[2,2]]}
SP-PK17	{"labs":[[13,12],[13,14],[13,16]],"teachers":[[2,1],[2,2],[2,2]]}
SP-PK18	{"labs":[[14,14],[16,16],[15,15]],"teachers":[[2,2],[2,2],[2,2]]}
SP-PK19	{"labs":[[15,15],[15,15],[15,15]],"teachers":[[2,2],[2,2],[2,2]]}
SP-PK20	{"labs":[[15,15],[15,15],[15,15]],"teachers":[[2,2],[2,2],[2,2]]}
\.


--
-- Data for Name: tefuni_input; Type: TABLE DATA; Schema: public; Owner: tefuni
--

COPY public.tefuni_input (id, gr, semester, form, subject, hours, blocks, subjectf) FROM stdin;
635	ND-BW4	3	exc	roz.pro.sta	9	0,2,0,2	Rozpoznawanie i prognozowanie stanów zagrożenia
716	ND-BW4	3	exc	Inf.kry	9	2,0,2,0	Infrastruktura krytyczna
1398	ND-BW4	3	exc	Sił.zbr.bez	9	2,0,2,0	Siły Zbrojne w bezpieczeństwie wewnętrznym
4171	SP-PK18	3	lab	Mec.wyt.mat	30	2,2,2,2	Mechanika i wytrzymałość materiałów
4176	SP-PK18	3	lab	Hyd.prz.zao	30	2,2,2,2	Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4182	SP-PK18	3	lab	Ele.ele.poz	30	2,2,2,2	Elektrotechnika i elektronika w pożarnictwie
4186	SP-PK17	5	lab	Fiz.spa	30	2,2,2,2	Fizykochemia spalania
4190	SP-PK18	4	lab	Tec.sys.zab	30	2,2,2,2	Techniczne systemy zabezpieczeń
4193	SP-PK18	4	lab	Śro.gaś.neu	30	2,2,2,2	Środki gaśnicze i neutralizujące
1723	SP-CBW6	3	lec	Zar.kry	15	2,2,2,2	Zarządzanie kryzysowe
644	ND-BW4	3	exc	Seminarium	16	2,2,2,2	Seminarium
717	ND-BW4	3	exc	Jęz.ang	18	2,2,2,2	Język angielski
732	ND-BW4	3	exc	Zas.log.bez	18	2,2,2,2	Zasilanie logistyczne w bezpieczeństwie
1260	SD-BW4	3	exc	Jęz.ang	30	2,2,2,2	Język angielski
1400	ND-BW4	3	exc	Wsp.mię.bez	18	2,2,2,2	Współpraca międzynarodowa w bezpieczeństwie wewnętrznym
1600	SP-CBW6	3	exc	Jęz.ang	30	2,2,2,2	Język angielski
1782	SP-CBW6	4	exc	Bez.spo.lok	15	2,2,2,2	Bezpieczeństwo społeczności lokalnych i kształtowanie bezpiecznych przestrzeni
1856	SP-PK18	4	exc	Jęz.ang	30	2,2,2,2	Język angielski
2031	SP-PK17	5	exc	Jęz.ang	30	2,2,2,2	Język angielski
2990	SD-BW4	3	exc	Inf.kry	45	2,2,2,2	Infrastruktura krytyczna
3553	SD-BW4	3	exc	Sił.zbr.bez	30	2,2,2,2	Siły Zbrojne w bezpieczeństwie wewnętrznym
3557	SD-BW4	3	exc	Wsp.mię.bez	20	2,2,2,2	Współpraca międzynarodowa w bezpieczeństwie wewnętrznym
3659	SP-CBW6	3	exc	Ins.źró.pra	30	2,2,2,2	Instytucje i źródła prawa UE
3681	SD-BW4	3	exc	Pra.zawodowe	80	2,2,2,2	Praktyki zawodowe
3778	SP-CBW6	3	exc	Pos.adm.cyw	30	2,2,2,2	Postępowanie administracyjne i cywilne
3842	SP-CBW6	3	exc	Bez.spo.lok	15	2,2,2,2	Bezpieczeństwo społeczności lokalnych i kształtowanie bezpiecznych przestrzeni
3906	SP-CBW6	3	exc	Pla.cyw	15	2,2,2,2	Planowanie cywilne
3983	SP-CBW6	3	exc	Sys.ins.bez	30	2,2,2,2	Systemy i instytucje bezpieczeństwa wewnętrznego
3984	SP-CBW6	3	exc	Zar.kry	15	2,2,2,2	Zarządzanie kryzysowe
3997	SP-CBW6	4	exc	Psy.soc	15	2,2,2,2	Psychologia i socjologia
4199	SP-PK17	6	lab	Spr.rat	30	2,2,2,2	Sprzęt ratowniczo - gaśniczy
4203	SP-PK17	5	lab	Rat.che.i.eko	30	2,2,2,2	Ratownictwo chemiczne i ekologiczne
4206	SP-PK17	5	lab	Med.kat	30	2,2,2,2	Medycyna katastrof
4213	SP-PK17	6	lab	Org.łąc.ala	15	2,2,2,2	Organizacja łączności i alarmowanie
4216	SP-PK17	6	lab	Bez.dzi.rat	30	2,2,2,2	Bezpieczeństwo działań ratowniczych
4226	SP-PK16	7	lab	Met.bad.prz	15	2,2,2,2	Metodyka badań przyczyn pożarów
4237	SP-PK16	8	lab	Sys.wsp.dzi	28	2,2,2,2	Systemy wspomagania działań ratowniczych
4313	SP-PC18	3	lab	Mec.wyt.mat	30	2,2,2,2	Mechanika i wytrzymałość materiałów
4318	SP-PC18	3	lab	Hyd.prz.zao	30	2,2,2,2	Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4324	SP-PC18	3	lab	Ele.ele.poz	30	2,2,2,2	Elektrotechnika i elektronika w pożarnictwie
4326	SP-PC18	4	lab	Teo.poż	15	2,2,2,2	Teoria pożarów
4332	SP-PC18	4	lab	Tec.sys.zab	30	2,2,2,2	Techniczne systemy zabezpieczeń
4334	SP-PC18	4	lab	Śro.gaś.neu	30	2,2,2,2	Środki gaśnicze i neutralizujące
4340	SP-PC17	5	lab	Fiz.spa	30	2,2,2,2	Fizykochemia spalania
4198	SP-PK17	5	exc	Spr.rat	30	2,2,2,2	Sprzęt ratowniczo - gaśniczy
4204	SP-PK17	6	exc	Rat.che.i.eko	30	2,2,2,2	Ratownictwo chemiczne i ekologiczne
4208	SP-PK17	6	exc	Rat.tec	30	2,2,2,2	Ratownictwo techniczne
4210	SP-PK17	6	exc	Ewa.int	30	2,2,2,2	Ewakuacja interwencyjna
4212	SP-PK17	6	exc	Org.łąc.ala	15	2,2,2,2	Organizacja łączności i alarmowanie
4215	SP-PK17	5	exc	Bez.dzi.rat	30	2,2,2,2	Bezpieczeństwo działań ratowniczych
4218	SP-PK17	6	exc	Tak.dow	30	2,2,2,2	Taktyka i dowodzenie
4225	SP-PK16	7	exc	Met.bad.prz	30	2,2,2,2	Metodyka badań przyczyn pożarów
4228	SP-PK16	7	exc	Pla.ope	30	2,2,2,2	Planowanie operacyjne
4230	SP-PK16	7	exc	Sem.dyp	15	2,2,2,2	Seminarium dyplomowe
4231	SP-PK16	8	exc	Sem.dyp	14	2,2,2,2	Seminarium dyplomowe
4239	SP-PK18	3	exc	Słu.wew.cer	15	2,2,2,2	Służba wewnętrzna i ceremoniał pożarniczy
4240	SP-PK18	4	exc	Słu.wew.cer	15	2,2,2,2	Służba wewnętrzna i ceremoniał pożarniczy
4241	SP-PK17	5	exc	Słu.wew.cer	15	2,2,2,2	Służba wewnętrzna i ceremoniał pożarniczy
4242	SP-PK17	6	exc	Słu.wew.cer	15	2,2,2,2	Służba wewnętrzna i ceremoniał pożarniczy
4243	SP-PK16	7	exc	Słu.wew.cer	15	2,2,2,2	Służba wewnętrzna i ceremoniał pożarniczy
4346	SP-PC17	6	lab	Spr.rat	30	2,2,2,2	Sprzęt ratowniczo - gaśniczy
4362	SP-PC17	5	lab	Rat.che.i.eko	30	2,2,2,2	Ratownictwo chemiczne i ekologiczne
4365	SP-PC17	5	lab	Med.kat	30	2,2,2,2	Medycyna katastrof
4372	SP-PC17	6	lab	Org.łąc.ala	15	2,2,2,2	Organizacja łączności i alarmowanie
4375	SP-PC17	6	lab	Bez.dzi.rat	30	2,2,2,2	Bezpieczeństwo działań ratowniczych
4379	SP-PC17	5	lab	Wen.poz	15	2,2,2,2	Wentylacja pożarowa
4389	SP-PC16	7	lab	Met.bad.prz	15	2,2,2,2	Metodyka badań przyczyn pożarów
4401	SP-PC16	8	lab	Sys.wsp.dzi	28	2,2,2,2	Systemy wspomagania działań ratowniczych
4485	SD-P13	3	lab	Str.ope.rat	20	2,2,2,2	Strategiczne operacje ratownicze
4515	ND-P35	3	lab	Str.ope.rat	12	2,2,2,2	Strategiczne operacje ratownicze
4567	NP-PC21	3	lab	Mec.wyt.mat	18	2,2,2,2	Mechanika i wytrzymałość materiałów
4344	SP-PC17	5	lec	Spr.rat	30	2,2,2,2	Sprzęt ratowniczo - gaśniczy
4343	SP-PC17	6	exc	Sam.poj.rat	15	2,2,2,2	Samochody i pojazdy ratownicze
4619	NP-PC20	5	lab	Wen.poz	9	0,2,0,2	Wentylacja pożarowa
4629	NP-PC19	7	lab	Met.bad.prz	9	0,2,0,2	Metodyka badań przyczyn pożarów
4595	NP-PC20	6	exc	Sam.poj.rat	9	0,2,0,2	Samochody i pojazdy ratownicze
4611	NP-PC20	6	exc	Org.łąc.ala	9	0,2,0,2	Organizacja łączności i alarmowanie
4635	NP-PC19	8	exc	Sem.dyp	9	0,2,0,2	Seminarium dyplomowe
4580	NP-PC21	4	lab	Teo.poż	9	2,0,2,0	Teoria pożarów
4612	NP-PC20	6	lab	Org.łąc.ala	9	2,0,2,0	Organizacja łączności i alarmowanie
4584	NP-PC21	4	exc	Pod.kon.mas	9	2,0,2,0	Podstawy konstrukcji maszyn
4634	NP-PC19	7	exc	Sem.dyp	9	2,0,2,0	Seminarium dyplomowe
4572	NP-PC21	3	lab	Hyd.prz.zao	18	2,2,2,2	Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4578	NP-PC21	3	lab	Ele.ele.poz	18	2,2,2,2	Elektrotechnika i elektronika w pożarnictwie
4586	NP-PC21	4	lab	Tec.sys.zab	18	2,2,2,2	Techniczne systemy zabezpieczeń
4588	NP-PC21	4	lab	Śro.gaś.neu	18	2,2,2,2	Środki gaśnicze i neutralizujące
4592	NP-PC20	5	lab	Fiz.spa	18	2,2,2,2	Fizykochemia spalania
4598	NP-PC20	6	lab	Spr.rat	18	2,2,2,2	Sprzęt ratowniczo - gaśniczy
4602	NP-PC20	5	lab	Rat.che.i.eko	18	2,2,2,2	Ratownictwo chemiczne i ekologiczne
4605	NP-PC20	5	lab	Med.kat	18	2,2,2,2	Medycyna katastrof
4615	NP-PC20	6	lab	Bez.dzi.rat	18	2,2,2,2	Bezpieczeństwo działań ratowniczych
4639	NP-PC19	8	lab	Sys.wsp.dzi	16	2,2,2,2	Systemy wspomagania działań ratowniczych
4675	NP-PS46	3	lab	Mec.wyt.mat	18	2,2,2,2	Mechanika i wytrzymałość materiałów
4582	NP-PC21	4	exc	Fiz.spa	18	2,2,2,2	Fizykochemia spalania
4597	NP-PC20	5	exc	Spr.rat	18	2,2,2,2	Sprzęt ratowniczo - gaśniczy
4603	NP-PC20	6	exc	Rat.che.i.eko	18	2,2,2,2	Ratownictwo chemiczne i ekologiczne
4607	NP-PC20	6	exc	Rat.tec	18	2,2,2,2	Ratownictwo techniczne
4609	NP-PC20	6	exc	Ewa.int	18	2,2,2,2	Ewakuacja interwencyjna
4614	NP-PC20	5	exc	Bez.dzi.rat	18	2,2,2,2	Bezpieczeństwo działań ratowniczych
4617	NP-PC20	6	exc	Tak.dow	18	2,2,2,2	Taktyka i dowodzenie
4622	NP-PC19	7	exc	Zab.pro.tec	18	2,2,2,2	Zabezpieczenia w procesach technologicznych
4628	NP-PC19	7	exc	Met.bad.prz	18	2,2,2,2	Metodyka badań przyczyn pożarów
4642	NP-PC19	8	exc	Pro.bie.zab	16	2,2,2,2	Projektowanie biernych zabezpieczeń przeciwpożarowych
4646	NP-PS46	3	exc	Jęz.ang	16	2,2,2,2	Język angielski
4647	NP-PS46	4	exc	Jęz.ang	16	2,2,2,2	Język angielski
4717	NP-PS45	6	lab	Org.łąc.ala	9	0,2,0,2	Organizacja łączności i alarmowanie
4729	NP-PS44	7	lab	Met.bad.prz	9	0,2,0,2	Metodyka badań przyczyn pożarów
4733	NP-PS44	7	exc	Sem.dyp	9	0,2,0,2	Seminarium dyplomowe
4909	NP-C15	7	exc	Wyb.zag.eko	8	0,2,0,2	Wybrane zagadnienia z ekonomii
4692	NP-PS46	4	exc	Pod.kon.mas	9	2,0,2,0	Podstawy konstrukcji maszyn
4700	NP-PS45	6	exc	Sam.poj.rat	9	2,0,2,0	Samochody i pojazdy ratownicze
4716	NP-PS45	6	exc	Org.łąc.ala	9	2,0,2,0	Organizacja łączności i alarmowanie
4734	NP-PS44	8	exc	Sem.dyp	9	2,0,2,0	Seminarium dyplomowe
4680	NP-PS46	3	lab	Hyd.prz.zao	18	2,2,2,2	Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4686	NP-PS46	3	lab	Ele.ele.poz	18	2,2,2,2	Elektrotechnika i elektronika w pożarnictwie
4690	NP-PS45	5	lab	Fiz.spa	18	2,2,2,2	Fizykochemia spalania
4694	NP-PS46	4	lab	Tec.sys.zab	18	2,2,2,2	Techniczne systemy zabezpieczeń
4697	NP-PS46	4	lab	Śro.gaś.neu	18	2,2,2,2	Środki gaśnicze i neutralizujące
4703	NP-PS45	6	lab	Spr.rat	18	2,2,2,2	Sprzęt ratowniczo - gaśniczy
4707	NP-PS45	5	lab	Rat.che.i.eko	18	2,2,2,2	Ratownictwo chemiczne i ekologiczne
4710	NP-PS45	5	lab	Med.kat	18	2,2,2,2	Medycyna katastrof
4720	NP-PS45	6	lab	Bez.dzi.rat	18	2,2,2,2	Bezpieczeństwo działań ratowniczych
4738	NP-PS44	8	lab	Sys.wsp.dzi	16	2,2,2,2	Systemy wspomagania działań ratowniczych
4913	NP-C15	7	lab	Lab.BHP	24	2,2,2,2	Laboratorium BHP
4689	NP-PS46	4	exc	Fiz.spa	18	2,2,2,2	Fizykochemia spalania
4702	NP-PS45	5	exc	Spr.rat	18	2,2,2,2	Sprzęt ratowniczo - gaśniczy
4708	NP-PS45	6	exc	Rat.che.i.eko	18	2,2,2,2	Ratownictwo chemiczne i ekologiczne
4712	NP-PS45	6	exc	Rat.tec	18	2,2,2,2	Ratownictwo techniczne
4714	NP-PS45	6	exc	Ewa.int	18	2,2,2,2	Ewakuacja interwencyjna
4719	NP-PS45	5	exc	Bez.dzi.rat	18	2,2,2,2	Bezpieczeństwo działań ratowniczych
4722	NP-PS45	6	exc	Tak.dow	18	2,2,2,2	Taktyka i dowodzenie
4728	NP-PS44	7	exc	Met.bad.prz	18	2,2,2,2	Metodyka badań przyczyn pożarów
4731	NP-PS44	7	exc	Pla.ope	18	2,2,2,2	Planowanie operacyjne
4745	SP-PK18	3	exc	Jęz.nie	30	2,2,2,2	Język niemiecki
4746	SP-PK18	4	exc	Jęz.nie	30	2,2,2,2	Język niemiecki
4748	SP-PK17	5	exc	Jęz.nie	30	2,2,2,2	Język niemiecki
4749	SP-PK17	6	exc	Jęz.nie	30	2,2,2,2	Język niemiecki
4770	SP-PK17	5	exc	Jęz.ros	30	2,2,2,2	Język rosyjski
4771	SP-PK17	6	exc	Jęz.ros	30	2,2,2,2	Język rosyjski
5391	SD-BW4	4	lab	Sym.gra.dec	18	2,2,2,2	Symulacyjna gra decyzyjna
4972	SP-C17.IBC	7	exc	Sem.dyp	30	2,2,2,2	Seminarium dyplomowe
5371	SD-BW4	4	exc	Pod.pra.och	15	2,2,2,2	Podstawy prawne ochrony ludzi i mienia
5373	SD-BW4	4	exc	Ewa.ludz.mie	15	2,2,2,2	Ewakuacja ludzi i mienia
5375	SD-BW4	4	exc	Bez.imp.mas	30	2,2,2,2	Bezpieczeństwo imprez masowych
5377	SD-BW4	4	exc	Obr.cyw.lud	30	2,2,2,2	Obrona cywilna, ochrona ludności i pomoc humanitarna
5379	SD-BW4	4	exc	Str.zap.prz	15	2,2,2,2	Strategie zapobiegania przestępczości
5487	SP-PK18	3	exc	Mec.wyt.mat	30	2,2,2,2	Mechanika i wytrzymałość materiałów
5513	SP-PC18	3	exc	Jęz.nie	30	2,2,2,2	Język niemiecki
5518	SP-PC18	4	exc	Jęz.nie	30	2,2,2,2	Język niemiecki
5520	SP-PC17	5	exc	Jęz.nie	30	2,2,2,2	Język niemiecki
5523	SP-PC17	6	exc	Jęz.nie	30	2,2,2,2	Język niemiecki
5547	SP-CBW6	4	exc	Jęz.ang	30	2,2,2,2	Język angielski
5551	SP-CBW6	4	exc	Wsp.sys.pol	15	2,2,2,2	Współczesne systemy polityczne
5554	SP-CBW6	4	exc	Prz.obr.pań	15	2,2,2,2	Przygotowania obronne panstwa
5558	SP-CBW6	4	exc	Bez.spo.pan	30	2,2,2,2	Bezpieczeństwo społeczno - ekonomiczne państwa
6175	NP-C16	5	lec	Mod.zag	8	0,2,0,2	Modelowanie zagrożeń
5989	NP-PC19	8	exc	Jęz.nie	8	0,2,0,2	Język niemiecki
6151	ND-BW4	4	exc	Pod.pra.och	9	0,2,0,2	Podstawy prawne ochrony ludzi i mienia
6153	ND-BW4	4	exc	Ewa.ludz.mie	9	0,2,0,2	Ewakuacja ludzi i mienia
6159	ND-BW4	4	exc	Str.zap.prz	9	0,2,0,2	Strategie zapobiegania przestępczości
6170	NP-C16	5	exc	Psy.soc	8	2,0,2,0	Psychologia i socjologia
5824	SP-CBW5.OL	6	lab	Sym.gra.dec	30	2,2,2,2	Symulacyjna gra decyzyjna
6148	ND-BW4	4	lab	Sym.gra.dec	18	2,2,2,2	Symulacyjna gra decyzyjna
6176	NP-C16	5	lab	Mod.zag	24	2,2,2,2	Modelowanie zagrożeń
6191	NP-C16	6	lab	Mul.tre.dec	24	2,2,2,2	Multimedialny trening decyzyjny
6210	NP-C16	6	lab	Erg.pro.sta	16	2,2,2,2	Ergonomia i projektowanie stanowisk pracy
5637	SP-CBW6	4	exc	Zar.kry	15	2,2,2,2	Zarządzanie kryzysowe
5792	SP-CBW5.OL	5	exc	Pod.pra.cel	15	2,2,2,2	Podstawy prawne i cele działania obrony cywilnej
5794	SP-CBW5.OL	5	exc	Zag.nat	30	2,2,2,2	Zagrożenia naturalne
5797	SP-CBW5.OL	5	exc	Sem.dyp	30	2,2,2,2	Seminarium dyplomowe
5808	SP-CBW5.OL	5	exc	Pom.hum.wym	15	2,2,2,2	Pomoc humanitarna w wymiarze międzynarodowym
5809	SP-CBW5.OL	5	exc	Zag.cyw.tec	30	2,2,2,2	Zagrożenia cywilizacyjno - techniczne
5812	SP-CBW5.OL	5	exc	Org.poz.och	15	2,2,2,2	Organizacje pozarządowe w ochronie ludności
5814	SP-CBW5.OL	5	exc	Słu.pań.och	15	2,2,2,2	Służby państwowe w ochronie ludności
5816	SP-CBW5.OL	6	exc	Pow.Sys.Och	30	2,2,2,2	Powszechny System Ochrony Ludności
5825	SP-CBW5.OL	6	exc	Rat.ewa.lud	30	2,2,2,2	Ratownictwo i ewakuacja ludności i mienia
5828	SP-CBW5.OL	6	exc	Org.obr.cyw	15	2,2,2,2	Organizacja obrony cywilnej i obrony narodowej
5829	SP-CBW5.OL	6	exc	Sys.wyk.ska	15	2,2,2,2	Systemy wykrywania skażeń i alarmowania
5986	NP-PC20	5	exc	Jęz.nie	16	2,2,2,2	Język niemiecki
5987	NP-PC20	6	exc	Jęz.nie	16	2,2,2,2	Język niemiecki
5988	NP-PC19	7	exc	Jęz.nie	14	2,2,2,2	Język niemiecki
6149	ND-BW4	4	exc	DP	15	2,2,2,2	Praca dyplomowa
6155	ND-BW4	4	exc	Bez.imp.mas	18	2,2,2,2	Bezpieczeństwo imprez masowych
6157	ND-BW4	4	exc	Obr.cyw.lud	18	2,2,2,2	Obrona cywilna, ochrona ludności i pomoc humanitarna
6169	NP-C16	5	exc	Jęz.ang	24	2,2,2,2	Język angielski
6215	NP-C16	6	exc	Pro.opt.wid	8	0,2,0,2	Promieniowanie optyczne i widzialne
6217	NP-C16	6	exc	Oce.ryz.zaw	8	0,2,0,2	Ocena ryzyka zawodowego w systemie zarządzania bezpieczeństwem pracy
6225	NP-CBW6	3	exc	Pla.cyw	9	0,2,0,2	Planowanie cywilne
6227	NP-CBW6	3	exc	Zar.kry	9	0,2,0,2	Zarządzanie kryzysowe
6229	NP-CBW6	3	exc	Bez.spo.lok	9	0,2,0,2	Bezpieczeństwo społeczności lokalnych i kształtowanie bezpiecznych przestrzeni
6237	NP-CBW6	4	exc	Psy.soc	9	0,2,0,2	Psychologia i socjologia
6239	NP-CBW6	4	exc	Wsp.sys.pol	9	0,2,0,2	Współczesne systemy polityczne
6255	NP-CBW6	4	exc	Prosem.dyp	9	0,2,0,2	Proseminarium dyplomowe
6242	NP-CBW6	4	exc	Prz.obr.pań	9	2,0,2,0	Przygotowania obronne panstwa
6244	NP-CBW6	4	exc	Zar.kry	9	2,0,2,0	Zarządzanie kryzysowe
6246	NP-CBW6	4	exc	Bez.spo.lok	9	2,0,2,0	Bezpieczeństwo społeczności lokalnych i kształtowanie bezpiecznych przestrzeni
6252	NP-CBW6	4	exc	Pra.czł.ety	9	2,0,2,0	Prawa człowieka i etyka zawodowa funkcjonariuszy służb publicznych
6254	NP-CBW6	4	exc	Inf.kry	9	2,0,2,0	Infrastruktura krytyczna
6218	NP-C16	6	lab	Pra.pom	30	2,2,2,2	Praktyki pomiarowe
6260	SP-C19	3	lab	Mec.wyt.mat	30	2,2,2,2	Mechanika i wytrzymałość materiałów
6270	SP-C19	3	lab	Nau.mat	15	2,2,2,2	Nauka o materiałach
6219	NP-C16	6	exc	Pra.zawodowe	160	2,2,2,2	Praktyki zawodowe
6220	NP-C16	6	exc	Sem.dyp	16	2,2,2,2	Seminarium dyplomowe
6221	NP-CBW6	3	exc	Jęz.ang	18	2,2,2,2	Język angielski
6223	NP-CBW6	3	exc	Ins.źró.pra	18	2,2,2,2	Instytucje i źródła prawa UE
6232	NP-CBW6	3	exc	Sys.ins.bez	18	2,2,2,2	Systemy i instytucje bezpieczeństwa wewnętrznego
6234	NP-CBW6	3	exc	Pos.adm.cyw	18	2,2,2,2	Postępowanie administracyjne i cywilne
6235	NP-CBW6	4	exc	Jęz.ang	18	2,2,2,2	Język angielski
6248	NP-CBW6	4	exc	Bez.spo.pan	18	2,2,2,2	Bezpieczeństwo społeczno - ekonomiczne państwa
6250	NP-CBW6	4	exc	Och.osó.mie	18	2,2,2,2	Ochrona osób, mienia, obiektów i obszarów
6256	NP-CBW6	4	exc	Praktyka	120	2,2,2,2	Praktyka
6257	SP-C19	3	exc	Jęz.ang	30	2,2,2,2	Język angielski
6259	SP-C19	3	exc	Mec.wyt.mat	30	2,2,2,2	Mechanika i wytrzymałość materiałów
6262	SP-C19	3	exc	Org.fun.sys	15	2,2,2,2	Organizacja i funkcjonowanie systemów bezpieczeństwa
6264	SP-C19	3	exc	Sku.zag.śro	30	2,2,2,2	Skutki zagrożeń środowiska naturalnego
6295	SP-C18.IBC	5	lab	Mod.zag	45	2,2,2,2	Modelowanie zagrożeń
6312	SP-C18.IBC	5	lab	Sys.inf.prz	15	2,2,2,2	Systemy informacji przestrzennej
6326	SP-C18.IBPr	5	lab	Mod.zag	45	2,2,2,2	Modelowanie zagrożeń
6341	SP-C18.IBC	6	lab	Mul.tre.dec	45	2,2,2,2	Multimedialny trening decyzyjny
6351	SP-C18.IBC	6	lab	Pra.mod.bez	30	2,2,2,2	Pracownia modelowania bezpieczeństwa
6359	SP-C18.IBC	6	lab	Pra.pom	30	2,2,2,2	Praktyki pomiarowe
6364	SP-C18.IBPr	6	lab	Mul.tre.dec	45	2,2,2,2	Multimedialny trening decyzyjny
6298	SP-C18.IBC	5	exc	Inf.kry	15	2,2,2,2	Infrastruktura krytyczna
6300	SP-C19	4	exc	Zar.bez.pra	30	2,2,2,2	Zarządzanie bezpieczeństwem pracy
6301	SP-C18.IBC	5	exc	Prosem.dyp	15	2,2,2,2	Proseminarium dyplomowe
6306	SP-C18.IBC	5	exc	Ele.teo.dec	15	2,2,2,2	Elementy teorii decyzji
6308	SP-C18.IBC	5	exc	Zar.kry	30	2,2,2,2	Zarządzanie kryzysowe
6310	SP-C19	4	exc	Mon.sta.bez	15	2,2,2,2	Monitorowanie stanu bezpieczeństwa i higieny pracy
6314	SP-C19	4	exc	Szk.sub.che	15	2,2,2,2	Szkodliwe substancje chemiczne
6316	SP-C18.IBC	5	exc	Int.dzi.bez	15	2,2,2,2	Integracja działań bezpieczeństwa cywilnego
6319	SP-C18.IBPr	5	exc	Jęz.ang	30	2,2,2,2	Język angielski
6320	SP-C18.IBPr	5	exc	Jęz.nie	30	2,2,2,2	Język niemiecki
6324	SP-C18.IBPr	5	exc	Sku.zag.bio	15	2,2,2,2	Skutki zagrożeń biologicznych i ekologicznych
6328	SP-C18.IBPr	5	exc	Inf.kry	15	2,2,2,2	Infrastruktura krytyczna
6329	SP-C18.IBPr	5	exc	Prosem.dyp	15	2,2,2,2	Proseminarium dyplomowe
6373	SP-C18.IBPr	6	lab	Erg.pro.sta	30	2,2,2,2	Ergonomia i projektowanie stanowisk pracy
6381	SP-C18.IBPr	6	lab	Pra.pom	30	2,2,2,2	Praktyki pomiarowe
6498	SP-PK19	2	lab	Fizyka	30	2,2,2,2	Fizyka
6551	NP-PS47A	2	lab	Fizyka	18	2,2,2,2	Fizyka
6616	NP-PS47A	2	lab	Tec.inf	18	2,2,2,2	Technologie informacyjne
6648	NP-PS47B	2	lab	Fizyka	18	2,2,2,2	Fizyka
6390	SP-PK19	1	lec	Fizyka	30	2,2,2,2	Fizyka
6375	SP-C18.IBPr	6	exc	Zag.ele	15	2,2,2,2	Zagrożenia elektroenergetyczne
6378	SP-C18.IBPr	6	exc	Pro.opt.wid	15	2,2,2,2	Promieniowanie optyczne i widzialne
6380	SP-C18.IBPr	6	exc	Oce.ryz.zaw	15	2,2,2,2	Ocena ryzyka zawodowego w systemie zarządzania bezpieczeństwem pracy
6382	SP-C18.IBPr	6	exc	Pra.zawodowe	160	2,2,2,2	Praktyki zawodowe
6392	SP-PK19	1	exc	Fizyka	30	2,2,2,2	Fizyka
6418	SP-PK19	1	exc	Chemia	30	2,2,2,2	Chemia
6428	SP-PK19	1	exc	Jęz.ang	30	2,2,2,2	Język angielski
6429	SP-PK19	2	exc	Chemia	30	2,2,2,2	Chemia
6485	SP-PK19	1	exc	Matematyka	45	2,2,2,2	Matematyka
6486	SP-PK19	2	exc	Matematyka	45	2,2,2,2	Matematyka
6487	SP-PK19	2	exc	Jęz.ang	30	2,2,2,2	Język angielski
6488	SP-PK19	2	exc	Mec.wyt.mat	30	2,2,2,2	Mechanika i wytrzymałość materiałów
6489	SP-PK19	2	exc	Hyd.prz.zao	30	2,2,2,2	Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
6493	SP-PK19	1	exc	Rys.tec	30	2,2,2,2	Rysunek techniczny
6496	SP-PK19	2	exc	Wyc.fiz	30	2,2,2,2	Wychowanie fizyczne
6513	SP-PK19	1	exc	Wyc.fiz	30	2,2,2,2	Wychowanie fizyczne
6517	NP-PS47A	1	exc	Jęz.ros	18	2,2,2,2	Język rosyjski
6526	NP-PS47A	2	exc	Jęz.nie	18	2,2,2,2	Język niemiecki
6536	NP-PS47A	2	exc	Jęz.ros	18	2,2,2,2	Język rosyjski
6537	NP-PS47A	2	exc	Matematyka	32	2,2,2,2	Matematyka
6547	NP-PS47A	2	exc	Jęz.ang	18	2,2,2,2	Język angielski
6548	NP-PS47A	1	exc	Chemia	18	2,2,2,2	Chemia
6549	NP-PS47A	2	exc	Chemia	18	2,2,2,2	Chemia
6556	NP-PS47A	2	exc	Mec.wyt.mat	18	2,2,2,2	Mechanika i wytrzymałość materiałów
6576	NP-PS47A	1	exc	Rys.tec	18	2,2,2,2	Rysunek techniczny
6578	NP-PS47A	2	exc	Hyd.prz.zao	18	2,2,2,2	Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
6703	ND-BW5	2	exc	Poz.ins.org	9	0,2,0,2	Pozarządowe instytucje i organizacje bezpieczeństwa
6727	ND-BW5	1	exc	Edu.dla.bez	9	0,2,0,2	Edukacja dla bezpieczeństwa
6735	ND-BW5	2	exc	Zar.jak.bez	9	0,2,0,2	Zarządzanie jakością w bezpieczeństwie
6737	ND-BW5	1	exc	Kom.spo	9	0,2,0,2	Komunikowanie społeczne
6722	ND-BW5	1	exc	Str.bez.wew	9	2,0,2,0	Strategie bezpieczeństwa wewnętrznego
6732	ND-BW5	2	exc	Syt.kry.kry	9	2,0,2,0	Sytuacje kryzysowe, kryzysy i patologie społeczne
6738	ND-BW5	2	exc	Met.bad.nad	9	2,0,2,0	Metodologia badań nad bezpieczeństwem
6666	NP-PS47B	2	lab	Tec.inf	18	2,2,2,2	Technologie informacyjne
6677	NP-PC22	2	lab	Fizyka	18	2,2,2,2	Fizyka
6695	NP-PC22	2	lab	Tec.inf	18	2,2,2,2	Technologie informacyjne
6663	NP-PS47B	1	exc	Jęz.ang	18	2,2,2,2	Język angielski
6667	NP-PC22	1	exc	Jęz.ros	18	2,2,2,2	Język rosyjski
6670	NP-PC22	1	exc	Jęz.nie	18	2,2,2,2	Język niemiecki
6671	NP-PC22	2	exc	Jęz.nie	18	2,2,2,2	Język niemiecki
6672	NP-PC22	2	exc	Jęz.ros	18	2,2,2,2	Język rosyjski
6673	NP-PC22	2	exc	Matematyka	32	2,2,2,2	Matematyka
6674	NP-PC22	2	exc	Jęz.ang	18	2,2,2,2	Język angielski
6675	NP-PC22	1	exc	Chemia	18	2,2,2,2	Chemia
6676	NP-PC22	2	exc	Chemia	18	2,2,2,2	Chemia
6678	NP-PC22	2	exc	Mec.wyt.mat	18	2,2,2,2	Mechanika i wytrzymałość materiałów
6681	NP-PC22	1	exc	Rys.tec	18	2,2,2,2	Rysunek techniczny
6683	NP-PC22	2	exc	Hyd.prz.zao	18	2,2,2,2	Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
6686	NP-PC22	1	exc	Fizyka	18	2,2,2,2	Fizyka
6689	NP-PC22	1	exc	Matematyka	32	2,2,2,2	Matematyka
6692	NP-PC22	1	exc	Jęz.ang	18	2,2,2,2	Język angielski
6696	SP-C18.IBPr	5	exc	Psy.soc	15	2,2,2,2	Psychologia i socjologia
6697	SP-PK19	1	exc	Jęz.nie	30	2,2,2,2	Język niemiecki
6698	SP-PK19	1	exc	Jęz.ros	30	2,2,2,2	Język rosyjski
6699	SP-PK19	2	exc	Jęz.nie	30	2,2,2,2	Język niemiecki
6700	SP-PK19	2	exc	Jęz.ros	30	2,2,2,2	Język rosyjski
6729	ND-BW5	1	exc	Org.fun.adm.pub	18	2,2,2,2	Organizacja i funkcjonowanie administracji publicznej
6739	ND-BW5	1	exc	Jęz.ang	18	2,2,2,2	Język angielski
6741	ND-BW5	2	exc	Geo.uwa.bez	15	2,2,2,2	Geopolityczne uwarunkowania bezpieczeństwa wewnętrznego
6743	ND-BW5	1	exc	Wyc.fiz	18	2,2,2,2	Wychowanie fizyczne
6751	ND-BW5	1	exc	Bez.pań.oby	18	2,2,2,2	Bezpieczeństwo państwa i obywateli
6754	ND-BW5	2	exc	Jęz.ang	18	2,2,2,2	Język angielski
6665	NP-PS47B	2	exc	Gra.inż	18	2,2,2,2	Grafika inżynierska
6694	NP-PC22	2	exc	Gra.inż	18	2,2,2,2	Grafika inżynierska
6945	NP-CBW7	2	exc	Pra.kar.mat	9	0,2,0,2	Prawo karne materialne w bezpieczeństwie
6947	NP-CBW7	1	exc	Erg.fiz.bez	9	0,2,0,2	Ergonomia i fizjologia w bezpieczeństwie pracy
6955	NP-CBW7	2	exc	Och.dan.oso	9	0,2,0,2	Ochrona danych osobowych i informacji niejawnych
6950	NP-CBW7	1	exc	Tec.inf	9	2,0,2,0	Technologie informacyjne
6954	NP-CBW7	2	exc	Sys.bez.RP	9	2,0,2,0	System Bezpieczeństwa RP
6956	NP-CBW7	1	exc	Pod.teo.bez	9	2,0,2,0	Podstawy teorii bezpieczeństwa
6820	SD-BW5	1	exc	Org.fun.adm.pub	30	2,2,2,2	Organizacja i funkcjonowanie administracji publicznej
6823	SD-BW5	2	exc	Poz.ins.org	20	2,2,2,2	Pozarządowe instytucje i organizacje bezpieczeństwa
6824	SD-BW5	1	exc	Edu.dla.bez	20	2,2,2,2	Edukacja dla bezpieczeństwa
6825	SD-BW5	2	exc	Jęz.ang	40	2,2,2,2	Język angielski
6829	SD-BW5	1	exc	Bez.pań.oby	20	2,2,2,2	Bezpieczeństwo państwa i obywateli
6834	SD-BW5	2	exc	Met.bad.nad	20	2,2,2,2	Metodologia badań nad bezpieczeństwem
6858	SP-CBW7	1	exc	Och.wła.int	15	2,2,2,2	Ochrona własności intelektualnej
6860	SP-CBW7	2	exc	Pra.kar.mat	15	2,2,2,2	Prawo karne materialne w bezpieczeństwie
6869	SP-CBW7	2	exc	Sys.bez.RP	15	2,2,2,2	System Bezpieczeństwa RP
6874	SP-CBW7	2	exc	Nau.pań.pra	30	2,2,2,2	Nauki o państwie i prawie
6875	SP-CBW7	2	exc	Jęz.ang	30	2,2,2,2	Język angielski
6883	SP-CBW7	2	exc	Och.dan.oso	15	2,2,2,2	Ochrona danych osobowych i informacji niejawnych
6891	SP-CBW7	1	exc	Ekonomia	10	2,2,2,2	Ekonomia
6893	SP-CBW7	1	exc	Wyc.fiz	30	2,2,2,2	Wychowanie fizyczne
6896	SP-CBW7	1	exc	Jęz.ang	30	2,2,2,2	Język angielski
6897	SP-CBW7	1	exc	Org.fun.adm.pub	15	2,2,2,2	Organizacja i funkcjonowanie administracji publicznej
6899	SP-CBW7	2	exc	Wsp.pro.bez	20	2,2,2,2	Współczesne problemy bezpieczeństwa
6902	SP-CBW7	2	exc	Wyc.fiz	30	2,2,2,2	Wychowanie fizyczne
6905	SP-CBW7	1	exc	Wsp.zag.bez	40	2,2,2,2	Współczesne zagrożenia bezpieczeństwa
6906	SP-CBW7	1	exc	Pod.teo.bez	20	2,2,2,2	Podstawy teorii bezpieczeństwa
6909	SP-CBW7	1	exc	Org.i.zar	15	2,2,2,2	Organizacja i zarządzanie
6912	SP-CBW7	2	exc	Org.i.zar	15	2,2,2,2	Organizacja i zarządzanie
6913	SP-CBW7	1	exc	Edu.dla.bez	10	2,2,2,2	Edukacja dla bezpieczeństwa
6914	SP-CBW7	1	exc	Erg.fiz.bez	15	2,2,2,2	Ergonomia i fizjologia w bezpieczeństwie pracy
6921	SP-CBW7	2	exc	Org.fun.adm.pub	15	2,2,2,2	Organizacja i funkcjonowanie administracji publicznej
6942	SP-CBW7	1	exc	Tec.inf	15	2,2,2,2	Technologie informacyjne
6943	SP-CBW7	2	exc	Pra.cyw.adm	20	2,2,2,2	Prawo cywilne i administracyjne
6946	NP-CBW7	1	exc	Wsp.zag.bez	18	2,2,2,2	Współczesne zagrożenia bezpieczeństwa
6949	NP-CBW7	2	exc	Wsp.pro.bez	18	2,2,2,2	Współczesne problemy bezpieczeństwa
6957	NP-CBW7	1	exc	Wyc.fiz	18	2,2,2,2	Wychowanie fizyczne
7035	ND-P36	1	lab	Wsp.pro.inż	9	0,2,0,2	Współczesne problemy inżynierii środowiska
6977	NP-CBW7	1	exc	Edu.dla.bez	9	0,2,0,2	Edukacja dla bezpieczeństwa
7053	ND-P36	2	exc	Sem.mag	9	0,2,0,2	Seminarium magisterskie
7069	ND-P36	2	exc	Ana.ryz.inz	9	0,2,0,2	Analiza ryzyka w inżynierii bezpieczeństwa
6978	NP-CBW7	2	exc	Org.fun.adm.pub	9	2,0,2,0	Organizacja i funkcjonowanie administracji publicznej
6980	NP-CBW7	1	exc	Org.i.zar	9	2,0,2,0	Organizacja i zarządzanie
7032	ND-P36	1	exc	Jęz.ros	9	2,0,2,0	Język rosyjski
7058	ND-P36	2	exc	Zar.eks.spr.rg	9	2,0,2,0	Zarządzanie eksploatacją sprzętu ratowniczo - gaśniczego
7074	ND-P36	2	exc	Kra.sys.wyk	9	2,0,2,0	Krajowy system wykrywania skażeń i alarmowania
7033	ND-P36	2	lab	Mod.poż	18	2,2,2,2	Modelowanie pożarów
7040	ND-P36	1	lab	Sys.inf.prz	18	2,2,2,2	Systemy informacji przestrzennej
7088	SD-P14	2	lab	Mod.poż	30	2,2,2,2	Modelowanie pożarów
7103	SD-P14	1	lab	Wsp.pro.inż	15	2,2,2,2	Współczesne problemy inżynierii środowiska
7106	SD-P14	1	lab	Sys.inf.prz	30	2,2,2,2	Systemy informacji przestrzennej
6976	NP-CBW7	2	exc	Pra.cyw.adm	18	2,2,2,2	Prawo cywilne i administracyjne
7019	NP-CBW7	1	exc	Jęz.ang	18	2,2,2,2	Język angielski
7024	SD-BW5	2	exc	Geo.uwa.bez	35	2,2,2,2	Geopolityczne uwarunkowania bezpieczeństwa wewnętrznego
7034	ND-P36	1	exc	Mat.wsp.dec	18	2,2,2,2	Matematyczne wspomaganie decyzji
7044	ND-P36	2	exc	Jęz.ang	18	2,2,2,2	Język angielski
7047	ND-P36	2	exc	Ana.sku.wyb	18	2,2,2,2	Analiza skutków wybuchu
7049	ND-P36	2	exc	Jęz.ros	18	2,2,2,2	Język rosyjski
7051	ND-P36	1	exc	Mod.poż	18	2,2,2,2	Modelowanie pożarów
7054	ND-P36	2	exc	Kie.dzi.rat	18	2,2,2,2	Kierowanie działaniami ratowniczymi
7055	ND-P36	1	exc	Sta.opi	18	2,2,2,2	Statystyka opisowa
7060	ND-P36	2	exc	Jęz.nie	18	2,2,2,2	Język niemiecki
7073	ND-P36	1	exc	Zas.now.tec	18	2,2,2,2	Zastosowanie nowoczesnych technik w inżynierii bezpieczeństwa
7164	Erasmus	3	lab	Era.intr.fir.mod	6	2,0,2,0	Erasmus: An Introduction to Fire Modeling
7149	Erasmus	3	lab	Era.fire.sci.com	24	2,2,2,2	Erasmus: Fire Science and Combustion
7155	Erasmus	3	lab	Era.for.fir.saf	15	2,2,2,2	Erasmus: Forest Fire Safety
7158	Erasmus	3	lab	Era.hydro	30	2,2,2,2	Erasmus: Hydromechanics
7159	Erasmus	3	lab	Era.chem.eco	30	2,2,2,2	Erasmus: Chemical and Ecological Rescue
7168	Erasmus	3	lab	Era.fir.and	15	2,2,2,2	Erasmus: Fire and explosion hazard assessment
7173	SP-PC19	2	lab	Tec.inf	30	2,2,2,2	Technologie informacyjne
7188	SP-PC19	2	lab	Fizyka	30	2,2,2,2	Fizyka
7219	Erasmus	4	lab	Era.chem.eco	30	2,2,2,2	Erasmus: Chemical and Ecological Rescue
7114	SD-P14	1	exc	Jęz.ang	15	2,2,2,2	Język angielski
7122	SD-P14	1	exc	Sta.opi	30	2,2,2,2	Statystyka opisowa
7123	SD-P14	2	exc	Ana.sku.wyb	30	2,2,2,2	Analiza skutków wybuchu
7124	SD-P14	2	exc	Ana.ryz.inz	30	2,2,2,2	Analiza ryzyka w inżynierii bezpieczeństwa
7136	SD-P14	2	exc	Kra.sys.wyk	15	2,2,2,2	Krajowy system wykrywania skażeń i alarmowania
7151	Erasmus	3	exc	Era.int.saf	30	2,2,2,2	Erasmus: International Safety and Security Institutions
7153	Erasmus	3	exc	Era.cri.man	30	2,2,2,2	Erasmus: Crisis Management
7157	Erasmus	3	exc	Era.civ.eme	15	2,2,2,2	Erasmus: Civil Emergency Planning
7162	Erasmus	3	exc	Era.ide.ana.biol	15	2,2,2,2	Erasmus: Identification and Analysis of Biological Treats
7167	Erasmus	3	exc	Era.fir.and	15	2,2,2,2	Erasmus: Fire and explosion hazard assessment
7169	SP-PC19	1	exc	Fizyka	30	2,2,2,2	Fizyka
7174	SP-PC19	2	exc	Hyd.prz.zao	30	2,2,2,2	Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
7177	SP-PC19	1	exc	Chemia	30	2,2,2,2	Chemia
7181	SP-PC19	2	exc	Mec.wyt.mat	30	2,2,2,2	Mechanika i wytrzymałość materiałów
691	SD-BW4	3	lec	Inf.kry	30	2,2,2,2	Infrastruktura krytyczna
939	SD-BW4	3	lec	roz.pro.sta	30	2,2,2,2	Rozpoznawanie i prognozowanie stanów zagrożenia
1323	SD-BW4	3	lec	Zas.log.bez	30	2,2,2,2	Zasilanie logistyczne w bezpieczeństwie
1389	SD-BW4	3	lec	Wsp.mię.bez	30	2,2,2,2	Współpraca międzynarodowa w bezpieczeństwie wewnętrznym
1598	SP-CBW6	3	lec	Ins.źró.pra	15	2,2,2,2	Instytucje i źródła prawa UE
1717	SP-CBW6	3	lec	Kry.kry	30	2,2,2,2	Kryminalistyka i kryminologia
199	ND-BW4	3	lec	roz.pro.sta	9	0,2,0,2	Rozpoznawanie i prognozowanie stanów zagrożenia
1191	ND-BW4	3	lec	Sił.zbr.bez	9	0,2,0,2	Siły Zbrojne w bezpieczeństwie wewnętrznym
1399	ND-BW4	3	lec	Wsp.mię.bez	9	0,2,0,2	Współpraca międzynarodowa w bezpieczeństwie wewnętrznym
1405	ND-BW4	3	lec	Zas.log.bez	9	0,2,0,2	Zasilanie logistyczne w bezpieczeństwie
46	ND-BW4	3	lec	Inf.kry	9	2,0,2,0	Infrastruktura krytyczna
4711	NP-PS45	5	lec	Rat.tec	9	0,2,0,2	Ratownictwo techniczne
7170	SP-PC19	1	lec	Fizyka	30	2,2,2,2	Fizyka
4034	SD-BW4	3	exc	roz.pro.sta	20	2,2,2,2	Rozpoznawanie i prognozowanie stanów zagrożenia
4035	SD-BW4	3	exc	Zas.log.bez	30	2,2,2,2	Zasilanie logistyczne w bezpieczeństwie
4091	SP-PK17	6	exc	Jęz.ang	30	2,2,2,2	Język angielski
4105	SP-PK18	3	exc	Jęz.ang	30	2,2,2,2	Język angielski
4142	SP-PK18	4	exc	Psy.soc	15	2,2,2,2	Psychologia i socjologia
4147	SP-PK18	3	exc	Prz.kon	30	2,2,2,2	Przygotowanie kondycyjne
4148	SP-PK18	4	exc	Prz.kon	30	2,2,2,2	Przygotowanie kondycyjne
4149	SP-PK17	5	exc	Prz.kon	30	2,2,2,2	Przygotowanie kondycyjne
4150	SP-PK17	6	exc	Prz.kon	30	2,2,2,2	Przygotowanie kondycyjne
4151	SP-PK16	7	exc	Prz.kon	30	2,2,2,2	Przygotowanie kondycyjne
4185	SP-PK18	4	exc	Fiz.spa	30	2,2,2,2	Fizykochemia spalania
4180	SP-PK18	3	exc	Pod.bud	30	2,2,2,2	Podstawy budownictwa
4191	SP-PK17	5	exc	Tec.sys.zab	30	2,2,2,2	Techniczne systemy zabezpieczeń
4291	SP-PC18	3	exc	Jęz.ang	30	2,2,2,2	Język angielski
4292	SP-PC18	4	exc	Jęz.ang	30	2,2,2,2	Język angielski
4294	SP-PC18	4	exc	Psy.soc	15	2,2,2,2	Psychologia i socjologia
4312	SP-PC18	3	exc	Mec.wyt.mat	30	2,2,2,2	Mechanika i wytrzymałość materiałów
4328	SP-PC18	4	exc	Fiz.spa	30	2,2,2,2	Fizykochemia spalania
4330	SP-PC18	4	exc	Pod.kon.mas	15	2,2,2,2	Podstawy konstrukcji maszyn
4336	SP-PC17	5	exc	Jęz.ang	30	2,2,2,2	Język angielski
4337	SP-PC17	6	exc	Jęz.ang	30	2,2,2,2	Język angielski
4201	SP-PK17	6	exc	Dzi.gas	30	2,2,2,2	Działania gaśnicze
4219	SP-PK17	6	exc	Ćwi.pol	80	2,2,2,2	Ćwiczenia poligonowe
4221	SP-PK16	7	exc	Bez.poż.budy	30	2,2,2,2	Bezpieczeństwo pożarowe budynków
4223	SP-PK16	7	exc	Ana.ryz.pro	30	2,2,2,2	Analiza ryzyka w procesach przemysłowych
4229	SP-PK16	7	exc	Str.rea.rat	15	2,2,2,2	Strategiczne reagowanie ratownicze
4232	SP-PK16	7	exc	Org.kie.dzi	30	2,2,2,2	Organizacja i kierowanie działaniami ratowniczymi (ćw. terenowe)
4233	SP-PK16	8	exc	Org.kie.dzi	14	2,2,2,2	Organizacja i kierowanie działaniami ratowniczymi (ćw. terenowe)
4309	SP-PC18	3	exc	Gra.inż	30	2,2,2,2	Grafika inżynierska
4345	SP-PC17	5	exc	Spr.rat	30	2,2,2,2	Sprzęt ratowniczo - gaśniczy
4351	SP-PC17	6	exc	Rat.che.i.eko	30	2,2,2,2	Ratownictwo chemiczne i ekologiczne
4357	SP-PC16	8	exc	Sem.dyp	14	2,2,2,2	Seminarium dyplomowe
4358	SP-PC16	7	exc	Sem.dyp	15	2,2,2,2	Seminarium dyplomowe
4367	SP-PC17	6	exc	Rat.tec	30	2,2,2,2	Ratownictwo techniczne
4369	SP-PC17	6	exc	Ewa.int	30	2,2,2,2	Ewakuacja interwencyjna
4371	SP-PC17	6	exc	Org.łąc.ala	15	2,2,2,2	Organizacja łączności i alarmowanie
4374	SP-PC17	5	exc	Bez.dzi.rat	30	2,2,2,2	Bezpieczeństwo działań ratowniczych
4377	SP-PC17	6	exc	Tak.dow	30	2,2,2,2	Taktyka i dowodzenie
4382	SP-PC16	7	exc	Zab.pro.tec	30	2,2,2,2	Zabezpieczenia w procesach technologicznych
4388	SP-PC16	7	exc	Met.bad.prz	30	2,2,2,2	Metodyka badań przyczyn pożarów
4404	SP-PC16	8	exc	Pro.bie.zab	28	2,2,2,2	Projektowanie biernych zabezpieczeń przeciwpożarowych
4462	SD-P13	3	exc	Sem.mag	15	2,2,2,2	Seminarium magisterskie
4477	SD-P13	3	exc	Opt.śro.gas	15	2,2,2,2	Optymalizacja środków gaśniczych i neutralizacji
4538	NP-PC21	3	exc	Jęz.ang	16	2,2,2,2	Język angielski
4539	NP-PC21	4	exc	Jęz.ang	16	2,2,2,2	Język angielski
4540	NP-PC20	5	exc	Jęz.ang	16	2,2,2,2	Język angielski
4541	NP-PC20	6	exc	Jęz.ang	16	2,2,2,2	Język angielski
4542	NP-PC19	7	exc	Jęz.ang	14	2,2,2,2	Język angielski
4566	NP-PC21	3	exc	Mec.wyt.mat	18	2,2,2,2	Mechanika i wytrzymałość materiałów
4348	SP-PC17	6	exc	Dzi.gas	30	2,2,2,2	Działania gaśnicze
4380	SP-PC17	6	exc	Wen.poz	30	2,2,2,2	Wentylacja pożarowa
4384	SP-PC16	7	exc	Bez.poż.budy	30	2,2,2,2	Bezpieczeństwo pożarowe budynków
4386	SP-PC16	7	exc	Ana.ryz.pro	30	2,2,2,2	Analiza ryzyka w procesach przemysłowych
4391	SP-PC16	7	exc	Bez.poż.las	15	2,2,2,2	Bezpieczeństwo pożarowe lasów
4398	SP-PC16	7	exc	Awa.prz	30	2,2,2,2	Awarie przemysłowe
4481	SD-P13	3	exc	Noś.kon.war	30	2,2,2,2	Nośność konstrukcji w warunkach pożaru
4486	SD-P13	3	exc	Str.ope.rat	10	2,2,2,2	Strategiczne operacje ratownicze
4488	SD-P13	3	exc	Rze.prz	30	2,2,2,2	Rzeczoznawstwo przeciwpożarowe
4511	ND-P35	3	exc	Noś.kon.war	18	2,2,2,2	Nośność konstrukcji w warunkach pożaru
4518	ND-P35	3	exc	Rze.prz	18	2,2,2,2	Rzeczoznawstwo przeciwpożarowe
4563	NP-PC21	3	exc	Gra.inż	18	2,2,2,2	Grafika inżynierska
4648	NP-PS45	5	exc	Jęz.ang	16	2,2,2,2	Język angielski
4649	NP-PS45	6	exc	Jęz.ang	16	2,2,2,2	Język angielski
4650	NP-PS44	7	exc	Jęz.ang	14	2,2,2,2	Język angielski
4674	NP-PS46	3	exc	Mec.wyt.mat	18	2,2,2,2	Mechanika i wytrzymałość materiałów
4576	NP-PC21	3	exc	Pod.bud	18	2,2,2,2	Podstawy budownictwa
4593	NP-PC20	5	exc	Tec.sys.zab	18	2,2,2,2	Techniczne systemy zabezpieczeń
4600	NP-PC20	6	exc	Dzi.gas	18	2,2,2,2	Działania gaśnicze
4620	NP-PC20	6	exc	Wen.poz	18	2,2,2,2	Wentylacja pożarowa
4624	NP-PC19	7	exc	Bez.poż.budy	24	2,2,2,2	Bezpieczeństwo pożarowe budynków
4626	NP-PC19	7	exc	Ana.ryz.pro	18	2,2,2,2	Analiza ryzyka w procesach przemysłowych
4633	NP-PC19	7	exc	Awa.prz	18	2,2,2,2	Awarie przemysłowe
4910	NP-C15	7	exc	Sem.dyp	16	2,2,2,2	Seminarium dyplomowe
4971	SP-C17.IBC	7	exc	Wyb.zag.eko	15	2,2,2,2	Wybrane zagadnienia z ekonomii
4684	NP-PS46	3	exc	Pod.bud	18	2,2,2,2	Podstawy budownictwa
4695	NP-PS45	5	exc	Tec.sys.zab	18	2,2,2,2	Techniczne systemy zabezpieczeń
4705	NP-PS45	6	exc	Dzi.gas	18	2,2,2,2	Działania gaśnicze
4724	NP-PS44	7	exc	Bez.poż.budy	24	2,2,2,2	Bezpieczeństwo pożarowe budynków
4726	NP-PS44	7	exc	Ana.ryz.pro	18	2,2,2,2	Analiza ryzyka w procesach przemysłowych
4969	SP-C17.IBC	7	exc	Zar.cią.dzi	15	2,2,2,2	Zarządzanie ciągłością działania
6172	NP-C16	5	exc	Met.ilo.jak	24	2,2,2,2	Metody ilościowej i jakościowej oceny ryzyka
6213	NP-C16	6	exc	Zag.ele	16	2,2,2,2	Zagrożenia elektroenergetyczne
6268	SP-C19	3	exc	Sku.zag.spo	15	2,2,2,2	Skutki zagrożeń społecznych
6273	SP-C18.IBC	5	exc	Jęz.nie	30	2,2,2,2	Język niemiecki
4516	ND-P35	3	exc	Str.ope.rat	6	2,0,2,0	Strategiczne operacje ratownicze
4732	NP-PS44	7	exc	Str.rea.rat	9	2,0,2,0	Strategiczne reagowanie ratownicze
4912	NP-C15	7	exc	Rat.sys.pie	8	2,0,2,0	Ratownictwo i systemy pierwszej pomocy w przedsiębiorstwie
6174	NP-C16	5	exc	Sku.zag.bio	8	2,0,2,0	Skutki zagrożeń biologicznych i ekologicznych
6178	NP-C16	5	exc	Inf.kry	8	2,0,2,0	Infrastruktura krytyczna
6186	NP-C16	5	exc	Zag.poż.wyb	8	2,0,2,0	Zagrożenia pożarowe i wybuchowe
6277	SP-C19	3	exc	Ide.ana.zag	15	2,2,2,2	Identyfikacja i analiza zagrożeń biologicznych
6279	SP-C19	4	exc	Jęz.ang	30	2,2,2,2	Język angielski
6281	SP-C19	4	exc	Psy.soc	15	2,2,2,2	Psychologia i socjologia
6283	SP-C19	4	exc	Ana.ryz	30	2,2,2,2	Analiza ryzyka
6285	SP-C19	4	exc	Log.bez	15	2,2,2,2	Logistyka w bezpieczeństwie
6286	SP-C18.IBC	5	exc	Jęz.ang	30	2,2,2,2	Język angielski
6266	SP-C19	3	exc	Sku.zag.inf.kom	15	2,2,2,2	Skutki zagrożeń infrastruktury komunalnej
6289	SP-C18.IBC	5	exc	Met.ilo.jak	45	2,2,2,2	Metody ilościowej i jakościowej oceny ryzyka
6290	SP-C19	4	exc	Log.bez	15	2,2,2,2	Logistyka w bezpieczeństwie
6331	SP-C18.IBPr	5	exc	Śro.och.ind	15	2,2,2,2	Środki ochrony indywidualnej i zbiorowej
6333	SP-C18.IBPr	5	exc	Pra.zmi	15	2,2,2,2	Praca zmianowa
6335	SP-C18.IBPr	5	exc	Zag.poż.wyb	15	2,2,2,2	Zagrożenia pożarowe i wybuchowe
6338	SP-C18.IBPr	5	exc	Mik.śro.pra	15	2,2,2,2	Mikroklimat środowiska pracy
6339	SP-C18.IBC	6	exc	Jęz.ang	30	2,2,2,2	Język angielski
6340	SP-C18.IBC	6	exc	Jęz.nie	30	2,2,2,2	Język niemiecki
6344	SP-C18.IBC	6	exc	Erg.fiz.bez	30	2,2,2,2	Ergonomia i fizjologia w bezpieczeństwie pracy
6346	SP-C18.IBC	6	exc	Zar.zas.lud	15	2,2,2,2	Zarządzanie zasobami ludzkimi
6347	SP-C18.IBC	6	exc	Sem.dyp	30	2,2,2,2	Seminarium dyplomowe
6349	SP-C18.IBC	6	exc	Pos.adm	15	2,2,2,2	Postępowanie administracyjne
6353	SP-C18.IBC	6	exc	Zar.bez.cyw	15	2,2,2,2	Zarządzanie bezpieczeństwem cywilnym
6358	SP-C18.IBC	6	exc	Wyb.pro.bez	15	2,2,2,2	Wybrane problemy bezpieczeństwa
6360	SP-C18.IBC	6	exc	Pra.zawodowe	160	2,2,2,2	Praktyki zawodowe
6361	SP-C18.IBPr	6	exc	Jęz.ang	30	2,2,2,2	Język angielski
6362	SP-C18.IBPr	6	exc	Jęz.nie	30	2,2,2,2	Język niemiecki
6366	SP-C18.IBPr	6	exc	Erg.fiz.bez	30	2,2,2,2	Ergonomia i fizjologia w bezpieczeństwie pracy
6297	SP-C19	4	exc	Bez.zak.zwi	30	2,2,2,2	Bezpieczeństwo zakładów zwiększonego i dużego ryzyka
6302	SP-C19	4	exc	Zar.bez.pra	15	2,2,2,2	Zarządzanie bezpieczeństwem pracy
6304	SP-C19	4	exc	Erg.pro.sta	15	2,2,2,2	Ergonomia i projektowanie stanowisk pracy
6315	SP-C19	4	exc	Szk.sub.che	30	2,2,2,2	Szkodliwe substancje chemiczne
6317	SP-C18.IBC	5	exc	Int.dzi.bez	30	2,2,2,2	Integracja działań bezpieczeństwa cywilnego
6322	SP-C18.IBPr	5	exc	Met.ilo.jak	45	2,2,2,2	Metody ilościowej i jakościowej oceny ryzyka
6336	SP-C18.IBPr	5	exc	Zag.poż.wyb	15	2,2,2,2	Zagrożenia pożarowe i wybuchowe
6354	SP-C18.IBC	6	exc	Zar.bez.cyw	30	2,2,2,2	Zarządzanie bezpieczeństwem cywilnym
6356	SP-C18.IBC	6	exc	Edu.dla.bez.cyw	15	2,2,2,2	Edukacja dla bezpieczeństwa cywilnego
6589	NP-PS47A	1	exc	Fizyka	18	2,2,2,2	Fizyka
6376	SP-C18.IBPr	6	exc	Zag.ele	30	2,2,2,2	Zagrożenia elektroenergetyczne
6495	SP-PK19	2	exc	Gra.inż	30	2,2,2,2	Grafika inżynierska
6615	NP-PS47A	2	exc	Gra.inż	18	2,2,2,2	Grafika inżynierska
7086	SD-P14	1	exc	Mod.poż	30	2,2,2,2	Modelowanie pożarów
7090	SD-P14	1	exc	Mat.wsp.dec	30	2,2,2,2	Matematyczne wspomaganie decyzji
7091	SD-P14	2	exc	Zar.eks.spr.rg	15	2,2,2,2	Zarządzanie eksploatacją sprzętu ratowniczo - gaśniczego
7094	SD-P14	2	exc	Jęz.ang	30	2,2,2,2	Język angielski
7097	SD-P14	1	exc	Zas.now.tec	30	2,2,2,2	Zastosowanie nowoczesnych technik w inżynierii bezpieczeństwa
7101	SD-P14	1	exc	Met.tec.zar	15	2,2,2,2	Metody i techniki zarządzania zasobami ludzkimi
7105	SD-P14	2	exc	Kie.dzi.rat	30	2,2,2,2	Kierowanie działaniami ratowniczymi
7112	SD-P14	2	exc	Sem.mag	15	2,2,2,2	Seminarium magisterskie
7037	ND-P36	2	exc	Zar.inf.kom	18	2,2,2,2	Zarządzanie infrastrukturą komunalną w sytuacjach kryzysowych
7065	ND-P36	1	exc	Prz.ope.och	18	2,2,2,2	Przygotowanie operacyjne w ochronie ludności
7078	ND-P36	1	exc	Nie.bez.bud	18	2,2,2,2	Niezawodność i bezpieczeństwo budowli
7100	SD-P14	1	exc	Nie.bez.bud	30	2,2,2,2	Niezawodność i bezpieczeństwo budowli
7183	SP-PC19	2	exc	Jęz.ang	30	2,2,2,2	Język angielski
7185	SP-PC19	2	exc	Wyc.fiz	30	2,2,2,2	Wychowanie fizyczne
7186	SP-PC19	1	exc	Matematyka	45	2,2,2,2	Matematyka
7187	SP-PC19	2	exc	Matematyka	45	2,2,2,2	Matematyka
7189	SP-PC19	2	exc	Chemia	30	2,2,2,2	Chemia
7194	SP-PC19	1	exc	Rys.tec	30	2,2,2,2	Rysunek techniczny
7195	SP-PC19	1	exc	Wyc.fiz	30	2,2,2,2	Wychowanie fizyczne
7196	SP-PC19	2	exc	Jęz.ros	30	2,2,2,2	Język rosyjski
7197	SP-PC19	2	exc	Jęz.nie	30	2,2,2,2	Język niemiecki
7198	SP-PC19	1	exc	Jęz.ros	30	2,2,2,2	Język rosyjski
7199	SP-PC19	1	exc	Jęz.nie	30	2,2,2,2	Język niemiecki
7202	SP-PC19	1	exc	Jęz.ang	30	2,2,2,2	Język angielski
7205	SP-CBW7	1	exc	Jęz.nie	30	2,2,2,2	Język niemiecki
7210	SP-CBW7	1	exc	Jęz.ros	30	2,2,2,2	Język rosyjski
7214	NP-PS47A	1	exc	Jęz.nie	18	2,2,2,2	Język niemiecki
7215	SP-CBW7	2	exc	Jęz.ros	30	2,2,2,2	Język rosyjski
7216	SP-CBW7	2	exc	Jęz.nie	30	2,2,2,2	Język niemiecki
7218	Erasmus	4	exc	Era.Hum.aid	15	2,2,2,2	Erasmus: Humanitarian aid in international dimension
7321	SD-BW4	3	exc	Prosem.dyp	25	2,2,2,2	Proseminarium dyplomowe
9414	SD-BW5	1	exc	Jęz.nie	40	2,2,2,2	Język niemiecki
7119	SD-P14	1	exc	Prz.ope.och	30	2,2,2,2	Przygotowanie operacyjne w ochronie ludności
7121	SD-P14	2	exc	Zar.inf.kom	30	2,2,2,2	Zarządzanie infrastrukturą komunalną w sytuacjach kryzysowych
7076	ND-P36	1	exc	Jęz.nie	9	2,0,2,0	Język niemiecki
7082	ND-P36	1	exc	Jęz.ang	9	2,0,2,0	Język angielski
7129	SD-P14	2	exc	Pro.doc.pop	15	2,2,2,2	Procedura dochodzeń popożarowych
7176	SP-PC19	2	exc	Gra.inż	30	2,2,2,2	Grafika inżynierska
1902	SP-CBW6	4	lec	Bez.spo.lok	15	2,2,2,2	Bezpieczeństwo społeczności lokalnych i kształtowanie bezpiecznych przestrzeni
3552	SD-BW4	3	lec	Sił.zbr.bez	30	2,2,2,2	Siły Zbrojne w bezpieczeństwie wewnętrznym
3782	SP-CBW6	3	lec	Sys.ins.bez	30	2,2,2,2	Systemy i instytucje bezpieczeństwa wewnętrznego
3903	SP-CBW6	3	lec	Pla.cyw	30	2,2,2,2	Planowanie cywilne
3962	SP-CBW6	3	lec	Bez.spo.lok	15	2,2,2,2	Bezpieczeństwo społeczności lokalnych i kształtowanie bezpiecznych przestrzeni
3982	SP-CBW6	3	lec	Pos.adm.cyw	15	2,2,2,2	Postępowanie administracyjne i cywilne
3996	SP-CBW6	4	lec	Psy.soc	15	2,2,2,2	Psychologia i socjologia
4141	SP-PK18	4	lec	Psy.soc	15	2,2,2,2	Psychologia i socjologia
4155	SP-PK16	8	lec	Szk.obr	21	2,2,2,2	Szkolenie obronne
4172	SP-PK18	3	lec	Termodynamika	30	2,2,2,2	Termodynamika
4173	SP-PK18	3	lec	Pra.kra.mię.lud	30	2,2,2,2	Prawo krajowe i międzynarodowe w ochronie ludności
4177	SP-PK18	3	lec	Mon.zag.bez	30	2,2,2,2	Monitorowanie zagrożeń bezpieczeństwa
4178	SP-PK18	3	lec	Org.fun.rat	30	2,2,2,2	Organizacja i funkcjonowanie ratownictwa i innych systemów bezpieczeństwa
4181	SP-PK18	3	lec	Ele.ele.poz	30	2,2,2,2	Elektrotechnika i elektronika w pożarnictwie
4183	SP-PK18	4	lec	Teo.poż	30	2,2,2,2	Teoria pożarów
4184	SP-PK18	4	lec	Fiz.spa	15	2,2,2,2	Fizykochemia spalania
4187	SP-PK18	4	lec	Pod.kon.mas	15	2,2,2,2	Podstawy konstrukcji maszyn
4189	SP-PK18	4	lec	Tec.sys.zab	30	2,2,2,2	Techniczne systemy zabezpieczeń
4192	SP-PK18	4	lec	Śro.gaś.neu	30	2,2,2,2	Środki gaśnicze i neutralizujące
4194	SP-PK18	4	lec	Inf.kom	30	2,2,2,2	Infrastruktura komunalna
4195	SP-PK17	5	lec	Sam.poj.rat	30	2,2,2,2	Samochody i pojazdy ratownicze
4197	SP-PK17	5	lec	Spr.rat	30	2,2,2,2	Sprzęt ratowniczo - gaśniczy
4200	SP-PK17	6	lec	Dzi.gas	30	2,2,2,2	Działania gaśnicze
4202	SP-PK17	5	lec	Rat.che.i.eko	30	2,2,2,2	Ratownictwo chemiczne i ekologiczne
4205	SP-PK17	5	lec	Med.kat	15	2,2,2,2	Medycyna katastrof
4207	SP-PK17	5	lec	Rat.tec	15	2,2,2,2	Ratownictwo techniczne
4209	SP-PK17	5	lec	Ewa.int	15	2,2,2,2	Ewakuacja interwencyjna
4211	SP-PK17	5	lec	Org.łąc.ala	15	2,2,2,2	Organizacja łączności i alarmowanie
4214	SP-PK17	5	lec	Bez.dzi.rat	30	2,2,2,2	Bezpieczeństwo działań ratowniczych
4217	SP-PK17	6	lec	Tak.dow	30	2,2,2,2	Taktyka i dowodzenie
4220	SP-PK16	7	lec	Bez.poż.budy	30	2,2,2,2	Bezpieczeństwo pożarowe budynków
4222	SP-PK16	7	lec	Ana.ryz.pro	30	2,2,2,2	Analiza ryzyka w procesach przemysłowych
4224	SP-PK16	7	lec	Met.bad.prz	15	2,2,2,2	Metodyka badań przyczyn pożarów
4227	SP-PK16	7	lec	Bez.poż.las	15	2,2,2,2	Bezpieczeństwo pożarowe lasów
4234	SP-PK16	8	lec	Inż.bez.tec	21	2,2,2,2	Inżynieria bezpieczeństwa technicznego
4235	SP-PK16	8	lec	Mię.wsp.rat	14	2,2,2,2	Międzynarodowa współpraca ratownicza
4236	SP-PK16	8	lec	Log.wsp.dłu	14	2,2,2,2	Logistyczne wsparcie długotrwałych działań ratowniczych
6774	SD-BW5	2	exc	Wyc.fiz	20	2,2,2,2	Wychowanie fizyczne
4238	SP-PK16	8	lec	Dzi.rat.pod	14	2,2,2,2	Działania ratownicze podczas klęsk żywiołowych
4293	SP-PC18	4	lec	Psy.soc	15	2,2,2,2	Psychologia i socjologia
4314	SP-PC18	3	lec	Termodynamika	30	2,2,2,2	Termodynamika
4315	SP-PC18	3	lec	Pra.kra.mię.lud	30	2,2,2,2	Prawo krajowe i międzynarodowe w ochronie ludności
4319	SP-PC18	3	lec	Mon.zag.bez	30	2,2,2,2	Monitorowanie zagrożeń bezpieczeństwa
4320	SP-PC18	3	lec	Org.fun.rat	30	2,2,2,2	Organizacja i funkcjonowanie ratownictwa i innych systemów bezpieczeństwa
4323	SP-PC18	3	lec	Ele.ele.poz	30	2,2,2,2	Elektrotechnika i elektronika w pożarnictwie
4325	SP-PC18	4	lec	Teo.poż	30	2,2,2,2	Teoria pożarów
4327	SP-PC18	4	lec	Fiz.spa	15	2,2,2,2	Fizykochemia spalania
4329	SP-PC18	4	lec	Pod.kon.mas	15	2,2,2,2	Podstawy konstrukcji maszyn
4331	SP-PC18	4	lec	Tec.sys.zab	30	2,2,2,2	Techniczne systemy zabezpieczeń
4333	SP-PC18	4	lec	Śro.gaś.neu	30	2,2,2,2	Środki gaśnicze i neutralizujące
4335	SP-PC18	4	lec	Inf.kom	30	2,2,2,2	Infrastruktura komunalna
4338	SP-PC16	7	lec	Och.wła.int	15	2,2,2,2	Ochrona własności intelektualnej
4339	SP-PC16	8	lec	Szk.obr	21	2,2,2,2	Szkolenie obronne
4342	SP-PC17	5	lec	Sam.poj.rat	30	2,2,2,2	Samochody i pojazdy ratownicze
4347	SP-PC17	6	lec	Dzi.gas	30	2,2,2,2	Działania gaśnicze
4349	SP-PC17	5	lec	Rat.che.i.eko	30	2,2,2,2	Ratownictwo chemiczne i ekologiczne
4364	SP-PC17	5	lec	Med.kat	15	2,2,2,2	Medycyna katastrof
4366	SP-PC17	5	lec	Rat.tec	15	2,2,2,2	Ratownictwo techniczne
4368	SP-PC17	5	lec	Ewa.int	15	2,2,2,2	Ewakuacja interwencyjna
4370	SP-PC17	5	lec	Org.łąc.ala	15	2,2,2,2	Organizacja łączności i alarmowanie
4373	SP-PC17	5	lec	Bez.dzi.rat	30	2,2,2,2	Bezpieczeństwo działań ratowniczych
4376	SP-PC17	6	lec	Tak.dow	30	2,2,2,2	Taktyka i dowodzenie
4378	SP-PC17	5	lec	Wen.poz	30	2,2,2,2	Wentylacja pożarowa
4381	SP-PC17	6	lec	Zab.pro.tec	30	2,2,2,2	Zabezpieczenia w procesach technologicznych
4383	SP-PC16	7	lec	Bez.poż.budy	30	2,2,2,2	Bezpieczeństwo pożarowe budynków
4385	SP-PC16	7	lec	Ana.ryz.pro	30	2,2,2,2	Analiza ryzyka w procesach przemysłowych
4387	SP-PC16	7	lec	Met.bad.prz	15	2,2,2,2	Metodyka badań przyczyn pożarów
4390	SP-PC16	7	lec	Bez.poż.las	15	2,2,2,2	Bezpieczeństwo pożarowe lasów
4392	SP-PC16	8	lec	Inż.bez.tec	21	2,2,2,2	Inżynieria bezpieczeństwa technicznego
4397	SP-PC16	7	lec	Awa.prz	30	2,2,2,2	Awarie przemysłowe
4399	SP-PC16	8	lec	Mię.wsp.rat	14	2,2,2,2	Międzynarodowa współpraca ratownicza
4400	SP-PC16	8	lec	Log.wsp.dłu	14	2,2,2,2	Logistyczne wsparcie długotrwałych działań ratowniczych
6687	NP-PC22	1	lec	Fizyka	18	2,2,2,2	Fizyka
4402	SP-PC16	8	lec	Dzi.rat.pod	14	2,2,2,2	Działania ratownicze podczas klęsk żywiołowych
4403	SP-PC16	8	lec	Pro.bie.zab	14	2,2,2,2	Projektowanie biernych zabezpieczeń przeciwpożarowych
4480	SD-P13	3	lec	Noś.kon.war	15	2,2,2,2	Nośność konstrukcji w warunkach pożaru
4484	SD-P13	3	lec	Str.ope.rat	15	2,2,2,2	Strategiczne operacje ratownicze
4487	SD-P13	3	lec	Rze.prz	15	2,2,2,2	Rzeczoznawstwo przeciwpożarowe
4568	NP-PC21	3	lec	Termodynamika	18	2,2,2,2	Termodynamika
4569	NP-PC21	3	lec	Pra.kra.mię.lud	18	2,2,2,2	Prawo krajowe i międzynarodowe w ochronie ludności
4573	NP-PC21	3	lec	Mon.zag.bez	18	2,2,2,2	Monitorowanie zagrożeń bezpieczeństwa
4574	NP-PC21	3	lec	Org.fun.rat	18	2,2,2,2	Organizacja i funkcjonowanie ratownictwa i innych systemów bezpieczeństwa
4577	NP-PC21	3	lec	Ele.ele.poz	18	2,2,2,2	Elektrotechnika i elektronika w pożarnictwie
4579	NP-PC21	4	lec	Teo.poż	18	2,2,2,2	Teoria pożarów
4585	NP-PC21	4	lec	Tec.sys.zab	24	2,2,2,2	Techniczne systemy zabezpieczeń
4587	NP-PC21	4	lec	Śro.gaś.neu	18	2,2,2,2	Środki gaśnicze i neutralizujące
4589	NP-PC21	4	lec	Inf.kom	18	2,2,2,2	Infrastruktura komunalna
4591	NP-PC19	8	lec	Szk.obr	12	2,2,2,2	Szkolenie obronne
4594	NP-PC20	5	lec	Sam.poj.rat	18	2,2,2,2	Samochody i pojazdy ratownicze
4596	NP-PC20	5	lec	Spr.rat	24	2,2,2,2	Sprzęt ratowniczo - gaśniczy
4599	NP-PC20	6	lec	Dzi.gas	18	2,2,2,2	Działania gaśnicze
4601	NP-PC20	5	lec	Rat.che.i.eko	24	2,2,2,2	Ratownictwo chemiczne i ekologiczne
4613	NP-PC20	5	lec	Bez.dzi.rat	24	2,2,2,2	Bezpieczeństwo działań ratowniczych
4616	NP-PC20	6	lec	Tak.dow	18	2,2,2,2	Taktyka i dowodzenie
4618	NP-PC20	5	lec	Wen.poz	18	2,2,2,2	Wentylacja pożarowa
4621	NP-PC20	6	lec	Zab.pro.tec	18	2,2,2,2	Zabezpieczenia w procesach technologicznych
4623	NP-PC19	7	lec	Bez.poż.budy	18	2,2,2,2	Bezpieczeństwo pożarowe budynków
4625	NP-PC19	7	lec	Ana.ryz.pro	18	2,2,2,2	Analiza ryzyka w procesach przemysłowych
4632	NP-PC19	7	lec	Awa.prz	18	2,2,2,2	Awarie przemysłowe
4636	NP-PC19	8	lec	Inż.bez.tec	12	2,2,2,2	Inżynieria bezpieczeństwa technicznego
4676	NP-PS46	3	lec	Termodynamika	18	2,2,2,2	Termodynamika
4677	NP-PS46	3	lec	Pra.kra.mię.lud	18	2,2,2,2	Prawo krajowe i międzynarodowe w ochronie ludności
4681	NP-PS46	3	lec	Mon.zag.bez	18	2,2,2,2	Monitorowanie zagrożeń bezpieczeństwa
4682	NP-PS46	3	lec	Org.fun.rat	18	2,2,2,2	Organizacja i funkcjonowanie ratownictwa i innych systemów bezpieczeństwa
4685	NP-PS46	3	lec	Ele.ele.poz	18	2,2,2,2	Elektrotechnika i elektronika w pożarnictwie
4687	NP-PS46	4	lec	Teo.poż	18	2,2,2,2	Teoria pożarów
4693	NP-PS46	4	lec	Tec.sys.zab	24	2,2,2,2	Techniczne systemy zabezpieczeń
4696	NP-PS46	4	lec	Śro.gaś.neu	18	2,2,2,2	Środki gaśnicze i neutralizujące
4698	NP-PS46	4	lec	Inf.kom	18	2,2,2,2	Infrastruktura komunalna
4699	NP-PS45	5	lec	Sam.poj.rat	18	2,2,2,2	Samochody i pojazdy ratownicze
4701	NP-PS45	5	lec	Spr.rat	24	2,2,2,2	Sprzęt ratowniczo - gaśniczy
4704	NP-PS45	6	lec	Dzi.gas	18	2,2,2,2	Działania gaśnicze
4706	NP-PS45	5	lec	Rat.che.i.eko	24	2,2,2,2	Ratownictwo chemiczne i ekologiczne
4718	NP-PS45	5	lec	Bez.dzi.rat	24	2,2,2,2	Bezpieczeństwo działań ratowniczych
4721	NP-PS45	6	lec	Tak.dow	18	2,2,2,2	Taktyka i dowodzenie
4723	NP-PS44	7	lec	Bez.poż.budy	18	2,2,2,2	Bezpieczeństwo pożarowe budynków
4725	NP-PS44	7	lec	Ana.ryz.pro	18	2,2,2,2	Analiza ryzyka w procesach przemysłowych
4735	NP-PS44	8	lec	Inż.bez.tec	12	2,2,2,2	Inżynieria bezpieczeństwa technicznego
4581	NP-PC21	4	lec	Fiz.spa	9	0,2,0,2	Fizykochemia spalania
4510	ND-P35	3	lec	Noś.kon.war	9	2,0,2,0	Nośność konstrukcji w warunkach pożaru
4514	ND-P35	3	lec	Str.ope.rat	9	2,0,2,0	Strategiczne operacje ratownicze
4544	NP-PC21	4	lec	Psy.soc	9	2,0,2,0	Psychologia i socjologia
4590	NP-PC19	7	lec	Och.wła.int	8	2,0,2,0	Ochrona własności intelektualnej
4604	NP-PC20	5	lec	Med.kat	9	2,0,2,0	Medycyna katastrof
4606	NP-PC20	5	lec	Rat.tec	9	2,0,2,0	Ratownictwo techniczne
4608	NP-PC20	5	lec	Ewa.int	9	2,0,2,0	Ewakuacja interwencyjna
4610	NP-PC20	5	lec	Org.łąc.ala	9	2,0,2,0	Organizacja łączności i alarmowanie
4630	NP-PC19	7	lec	Bez.poż.las	9	2,0,2,0	Bezpieczeństwo pożarowe lasów
4638	NP-PC19	8	lec	Log.wsp.dłu	9	2,0,2,0	Logistyczne wsparcie długotrwałych działań ratowniczych
4640	NP-PC19	7	lec	Dzi.rat.pod	9	2,0,2,0	Działania ratownicze podczas klęsk żywiołowych
4652	NP-PS46	4	lec	Psy.soc	9	2,0,2,0	Psychologia i socjologia
4968	SP-C17.IBC	7	lec	Zar.cią.dzi	15	2,2,2,2	Zarządzanie ciągłością działania
4970	SP-C17.IBC	7	lec	Wyb.zag.eko	15	2,2,2,2	Wybrane zagadnienia z ekonomii
5370	SD-BW4	4	lec	Pod.pra.och	15	2,2,2,2	Podstawy prawne ochrony ludzi i mienia
5372	SD-BW4	4	lec	Ewa.ludz.mie	15	2,2,2,2	Ewakuacja ludzi i mienia
5374	SD-BW4	4	lec	Bez.imp.mas	15	2,2,2,2	Bezpieczeństwo imprez masowych
5376	SD-BW4	4	lec	Obr.cyw.lud	15	2,2,2,2	Obrona cywilna, ochrona ludności i pomoc humanitarna
5378	SD-BW4	4	lec	Str.zap.prz	15	2,2,2,2	Strategie zapobiegania przestępczości
5550	SP-CBW6	4	lec	Wsp.sys.pol	30	2,2,2,2	Współczesne systemy polityczne
5552	SP-CBW6	4	lec	Str.bez.Rze	30	2,2,2,2	Strategia bezpieczeństwa Rzeczypospolitej Polskiej
5553	SP-CBW6	4	lec	Prz.obr.pań	15	2,2,2,2	Przygotowania obronne panstwa
5557	SP-CBW6	4	lec	Bez.spo.pan	30	2,2,2,2	Bezpieczeństwo społeczno - ekonomiczne państwa
5559	SP-CBW6	4	lec	Och.osó.mie	15	2,2,2,2	Ochrona osób, mienia, obiektów i obszarów
5561	SP-CBW6	4	lec	Pra.czł.ety	15	2,2,2,2	Prawa człowieka i etyka zawodowa funkcjonariuszy służb publicznych
5563	SP-CBW6	4	lec	Inf.kry	30	2,2,2,2	Infrastruktura krytyczna
5597	NP-PS44	8	lec	Szk.obr	12	2,2,2,2	Szkolenie obronne
5636	SP-CBW6	4	lec	Zar.kry	15	2,2,2,2	Zarządzanie kryzysowe
5791	SP-CBW5.OL	5	lec	Zag.cyw.tec	30	2,2,2,2	Zagrożenia cywilizacyjno - techniczne
5793	SP-CBW5.OL	5	lec	Zag.nat	30	2,2,2,2	Zagrożenia naturalne
5795	SP-CBW5.OL	5	lec	Pod.pra.cel	30	2,2,2,2	Podstawy prawne i cele działania obrony cywilnej
5807	SP-CBW5.OL	5	lec	Pom.hum.wym	15	2,2,2,2	Pomoc humanitarna w wymiarze międzynarodowym
5810	SP-CBW5.OL	5	lec	Org.poz.och	30	2,2,2,2	Organizacje pozarządowe w ochronie ludności
5811	SP-CBW5.OL	5	lec	Słu.pań.och	30	2,2,2,2	Służby państwowe w ochronie ludności
5813	SP-CBW5.OL	6	lec	Pow.Sys.Och	30	2,2,2,2	Powszechny System Ochrony Ludności
5823	SP-CBW5.OL	6	lec	Org.obr.cyw	15	2,2,2,2	Organizacja obrony cywilnej i obrony narodowej
5826	SP-CBW5.OL	6	lec	Sys.wyk.ska	15	2,2,2,2	Systemy wykrywania skażeń i alarmowania
5827	SP-CBW5.OL	6	lec	Rat.ewa.lud	15	2,2,2,2	Ratownictwo i ewakuacja ludności i mienia
6209	NP-C16	6	lec	Erg.pro.sta	16	2,2,2,2	Ergonomia i projektowanie stanowisk pracy
6224	NP-CBW6	3	lec	Pla.cyw	18	2,2,2,2	Planowanie cywilne
6230	NP-CBW6	3	lec	Kry.kry	18	2,2,2,2	Kryminalistyka i kryminologia
6231	NP-CBW6	3	lec	Sys.ins.bez	18	2,2,2,2	Systemy i instytucje bezpieczeństwa wewnętrznego
6238	NP-CBW6	4	lec	Wsp.sys.pol	18	2,2,2,2	Współczesne systemy polityczne
6240	NP-CBW6	4	lec	Str.bez.Rze	18	2,2,2,2	Strategia bezpieczeństwa Rzeczypospolitej Polskiej
6247	NP-CBW6	4	lec	Bez.spo.pan	18	2,2,2,2	Bezpieczeństwo społeczno - ekonomiczne państwa
6253	NP-CBW6	4	lec	Inf.kry	18	2,2,2,2	Infrastruktura krytyczna
6258	SP-C19	3	lec	Mec.wyt.mat	30	2,2,2,2	Mechanika i wytrzymałość materiałów
6261	SP-C19	3	lec	Org.fun.sys	15	2,2,2,2	Organizacja i funkcjonowanie systemów bezpieczeństwa
6263	SP-C19	3	lec	Sku.zag.śro	15	2,2,2,2	Skutki zagrożeń środowiska naturalnego
4740	NP-PS44	8	lec	Cer.poż.ele	4	2,0,2,0	Ceremoniał pożarniczy z elementami służby wewnętrznej
4906	NP-C15	7	lec	Zar.cią.dzi	8	2,0,2,0	Zarządzanie ciągłością działania
4908	NP-C15	7	lec	Wyb.zag.eko	8	2,0,2,0	Wybrane zagadnienia z ekonomii
6150	ND-BW4	4	lec	Pod.pra.och	9	2,0,2,0	Podstawy prawne ochrony ludzi i mienia
6152	ND-BW4	4	lec	Ewa.ludz.mie	9	2,0,2,0	Ewakuacja ludzi i mienia
6154	ND-BW4	4	lec	Bez.imp.mas	9	2,0,2,0	Bezpieczeństwo imprez masowych
6156	ND-BW4	4	lec	Obr.cyw.lud	9	2,0,2,0	Obrona cywilna, ochrona ludności i pomoc humanitarna
6158	ND-BW4	4	lec	Str.zap.prz	9	2,0,2,0	Strategie zapobiegania przestępczości
6180	NP-C16	5	lec	Śro.och.ind	8	2,0,2,0	Środki ochrony indywidualnej i zbiorowej
6182	NP-C16	5	lec	Pra.zmi	8	2,0,2,0	Praca zmianowa
6184	NP-C16	5	lec	Zag.poż.wyb	8	2,0,2,0	Zagrożenia pożarowe i wybuchowe
6190	NP-C16	6	lec	Mul.tre.dec	8	2,0,2,0	Multimedialny trening decyzyjny
6192	NP-C16	6	lec	Erg.fiz.bez	8	2,0,2,0	Ergonomia i fizjologia w bezpieczeństwie pracy
6226	NP-CBW6	3	lec	Zar.kry	9	2,0,2,0	Zarządzanie kryzysowe
6265	SP-C19	3	lec	Sku.zag.inf.kom	15	2,2,2,2	Skutki zagrożeń infrastruktury komunalnej
6267	SP-C19	3	lec	Sku.zag.spo	15	2,2,2,2	Skutki zagrożeń społecznych
6269	SP-C19	3	lec	Nau.mat	15	2,2,2,2	Nauka o materiałach
6271	SP-C19	3	lec	Pra.kra.mię.lud	30	2,2,2,2	Prawo krajowe i międzynarodowe w ochronie ludności
6276	SP-C19	3	lec	Ide.ana.zag	30	2,2,2,2	Identyfikacja i analiza zagrożeń biologicznych
6278	SP-C19	3	lec	Zar.bez.pra	15	2,2,2,2	Zarządzanie bezpieczeństwem pracy
6280	SP-C19	4	lec	Psy.soc	15	2,2,2,2	Psychologia i socjologia
6282	SP-C19	4	lec	Ana.ryz	15	2,2,2,2	Analiza ryzyka
6284	SP-C19	4	lec	Log.bez	15	2,2,2,2	Logistyka w bezpieczeństwie
6288	SP-C18.IBC	5	lec	Met.ilo.jak	15	2,2,2,2	Metody ilościowej i jakościowej oceny ryzyka
6291	SP-C18.IBC	5	lec	Sku.zag.bio	15	2,2,2,2	Skutki zagrożeń biologicznych i ekologicznych
6293	SP-C19	4	lec	Bez.zak.zwi	15	2,2,2,2	Bezpieczeństwo zakładów zwiększonego i dużego ryzyka
6294	SP-C18.IBC	5	lec	Mod.zag	15	2,2,2,2	Modelowanie zagrożeń
6296	SP-C18.IBC	5	lec	Inf.kry	15	2,2,2,2	Infrastruktura krytyczna
6299	SP-C19	4	lec	Teo.poż	30	2,2,2,2	Teoria pożarów
6303	SP-C19	4	lec	Erg.pro.sta	15	2,2,2,2	Ergonomia i projektowanie stanowisk pracy
6305	SP-C18.IBC	5	lec	Ele.teo.dec	15	2,2,2,2	Elementy teorii decyzji
6307	SP-C18.IBC	5	lec	Zar.kry	15	2,2,2,2	Zarządzanie kryzysowe
6309	SP-C19	4	lec	Mon.sta.bez	15	2,2,2,2	Monitorowanie stanu bezpieczeństwa i higieny pracy
6311	SP-C18.IBC	5	lec	Sys.inf.prz	15	2,2,2,2	Systemy informacji przestrzennej
6313	SP-C19	4	lec	Szk.sub.che	30	2,2,2,2	Szkodliwe substancje chemiczne
6318	SP-C18.IBC	5	lec	Int.dzi.bez	15	2,2,2,2	Integracja działań bezpieczeństwa cywilnego
6321	SP-C18.IBPr	5	lec	Met.ilo.jak	15	2,2,2,2	Metody ilościowej i jakościowej oceny ryzyka
6323	SP-C18.IBPr	5	lec	Sku.zag.bio	15	2,2,2,2	Skutki zagrożeń biologicznych i ekologicznych
6325	SP-C18.IBPr	5	lec	Mod.zag	15	2,2,2,2	Modelowanie zagrożeń
6327	SP-C18.IBPr	5	lec	Inf.kry	15	2,2,2,2	Infrastruktura krytyczna
6330	SP-C18.IBPr	5	lec	Śro.och.ind	15	2,2,2,2	Środki ochrony indywidualnej i zbiorowej
6332	SP-C18.IBPr	5	lec	Pra.zmi	15	2,2,2,2	Praca zmianowa
6334	SP-C18.IBPr	5	lec	Zag.poż.wyb	15	2,2,2,2	Zagrożenia pożarowe i wybuchowe
6337	SP-C18.IBPr	5	lec	Mik.śro.pra	15	2,2,2,2	Mikroklimat środowiska pracy
6342	SP-C18.IBC	6	lec	Mul.tre.dec	15	2,2,2,2	Multimedialny trening decyzyjny
6343	SP-C18.IBC	6	lec	Erg.fiz.bez	15	2,2,2,2	Ergonomia i fizjologia w bezpieczeństwie pracy
6345	SP-C18.IBC	6	lec	Zar.zas.lud	15	2,2,2,2	Zarządzanie zasobami ludzkimi
6348	SP-C18.IBC	6	lec	Pos.adm	15	2,2,2,2	Postępowanie administracyjne
6350	SP-C18.IBC	6	lec	Och.dób.kul	30	2,2,2,2	Ochrona dóbr kultury
6352	SP-C18.IBC	6	lec	Zar.bez.cyw	15	2,2,2,2	Zarządzanie bezpieczeństwem cywilnym
6355	SP-C18.IBC	6	lec	Edu.dla.bez.cyw	15	2,2,2,2	Edukacja dla bezpieczeństwa cywilnego
6357	SP-C18.IBC	6	lec	Wyb.pro.bez	15	2,2,2,2	Wybrane problemy bezpieczeństwa
6363	SP-C18.IBPr	6	lec	Mul.tre.dec	15	2,2,2,2	Multimedialny trening decyzyjny
6365	SP-C18.IBPr	6	lec	Erg.fiz.bez	15	2,2,2,2	Ergonomia i fizjologia w bezpieczeństwie pracy
6367	SP-C18.IBPr	6	lec	Zar.zas.lud	15	2,2,2,2	Zarządzanie zasobami ludzkimi
6370	SP-C18.IBPr	6	lec	Bhp.obi.inf	15	2,2,2,2	BHP w obiektach infrastruktury krytycznej
6372	SP-C18.IBPr	6	lec	Erg.pro.sta	30	2,2,2,2	Ergonomia i projektowanie stanowisk pracy
6374	SP-C18.IBPr	6	lec	Zag.ele	15	2,2,2,2	Zagrożenia elektroenergetyczne
6377	SP-C18.IBPr	6	lec	Pro.opt.wid	15	2,2,2,2	Promieniowanie optyczne i widzialne
6379	SP-C18.IBPr	6	lec	Oce.ryz.zaw	15	2,2,2,2	Ocena ryzyka zawodowego w systemie zarządzania bezpieczeństwem pracy
6399	SP-PK19	1	lec	Tec.inf	30	2,2,2,2	Technologie informacyjne
6415	SP-PK19	1	lec	Matematyka	30	2,2,2,2	Matematyka
6420	SP-PK19	1	lec	Chemia	30	2,2,2,2	Chemia
6430	SP-PK19	2	lec	Pod.bud	30	2,2,2,2	Podstawy budownictwa
6431	SP-PK19	2	lec	Hyd.prz.zao	30	2,2,2,2	Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
6445	SP-PK19	1	lec	Fil.ety	30	2,2,2,2	Filozofia i etyka
6446	SP-PK19	2	lec	Ekonomia	30	2,2,2,2	Ekonomia
6462	SP-PK19	1	lec	Mec.wyt.mat	30	2,2,2,2	Mechanika i wytrzymałość materiałów
6520	NP-PS47A	1	lec	Tec.inf	18	2,2,2,2	Technologie informacyjne
6521	NP-PS47A	1	lec	Fil.ety	18	2,2,2,2	Filozofia i etyka
6565	NP-PS47A	1	lec	Matematyka	18	2,2,2,2	Matematyka
6582	NP-PS47A	2	lec	Ekonomia	18	2,2,2,2	Ekonomia
6590	NP-PS47A	1	lec	Fizyka	18	2,2,2,2	Fizyka
6592	NP-PS47A	1	lec	Chemia	18	2,2,2,2	Chemia
6595	NP-PS47A	2	lec	Hyd.prz.zao	18	2,2,2,2	Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
6602	NP-PS47A	1	lec	Mec.wyt.mat	18	2,2,2,2	Mechanika i wytrzymałość materiałów
6614	NP-PS47A	2	lec	Pod.bud	18	2,2,2,2	Podstawy budownictwa
6639	NP-PS47B	1	lec	Tec.inf	18	2,2,2,2	Technologie informacyjne
6640	NP-PS47B	1	lec	Fil.ety	18	2,2,2,2	Filozofia i etyka
6650	NP-PS47B	1	lec	Matematyka	18	2,2,2,2	Matematyka
6656	NP-PS47B	2	lec	Ekonomia	18	2,2,2,2	Ekonomia
6658	NP-PS47B	1	lec	Fizyka	18	2,2,2,2	Fizyka
6659	NP-PS47B	1	lec	Chemia	18	2,2,2,2	Chemia
6661	NP-PS47B	2	lec	Hyd.prz.zao	18	2,2,2,2	Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
6662	NP-PS47B	1	lec	Mec.wyt.mat	18	2,2,2,2	Mechanika i wytrzymałość materiałów
6664	NP-PS47B	2	lec	Pod.bud	18	2,2,2,2	Podstawy budownictwa
6668	NP-PC22	1	lec	Tec.inf	18	2,2,2,2	Technologie informacyjne
6669	NP-PC22	1	lec	Fil.ety	18	2,2,2,2	Filozofia i etyka
6679	NP-PC22	1	lec	Matematyka	18	2,2,2,2	Matematyka
6685	NP-PC22	2	lec	Ekonomia	18	2,2,2,2	Ekonomia
6688	NP-PC22	1	lec	Chemia	18	2,2,2,2	Chemia
6690	NP-PC22	2	lec	Hyd.prz.zao	18	2,2,2,2	Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
6691	NP-PC22	1	lec	Mec.wyt.mat	18	2,2,2,2	Mechanika i wytrzymałość materiałów
6693	NP-PC22	2	lec	Pod.bud	18	2,2,2,2	Podstawy budownictwa
6701	ND-BW5	1	lec	Psy.spo	18	2,2,2,2	Psychologia społeczna
6744	ND-BW5	1	lec	Str.bez.wew	18	2,2,2,2	Strategie bezpieczeństwa wewnętrznego
6753	ND-BW5	2	lec	Geo.uwa.bez	30	2,2,2,2	Geopolityczne uwarunkowania bezpieczeństwa wewnętrznego
6776	SD-BW5	2	lec	Poz.ins.org	30	2,2,2,2	Pozarządowe instytucje i organizacje bezpieczeństwa
6780	SD-BW5	1	lec	Org.fun.adm.pub	35	2,2,2,2	Organizacja i funkcjonowanie administracji publicznej
6787	SD-BW5	2	lec	Pra.asp.bez	30	2,2,2,2	Prawno - funkcjonalne aspekty bezpieczeństwa wewnętrznego
6789	SD-BW5	2	lec	Zar.jak.bez	30	2,2,2,2	Zarządzanie jakością w bezpieczeństwie
6801	SD-BW5	1	lec	Bez.pań.oby	30	2,2,2,2	Bezpieczeństwo państwa i obywateli
6803	SD-BW5	1	lec	Ele.log	25	2,2,2,2	Elementy logiki
6813	SD-BW5	1	lec	Kom.spo	25	2,2,2,2	Komunikowanie społeczne
6819	SD-BW5	1	lec	Str.bez.wew	25	2,2,2,2	Strategie bezpieczeństwa wewnętrznego
6832	SD-BW5	2	lec	Syt.kry.kry	30	2,2,2,2	Sytuacje kryzysowe, kryzysy i patologie społeczne
6833	SD-BW5	1	lec	Psy.spo	30	2,2,2,2	Psychologia społeczna
6835	SD-BW5	1	lec	Edu.dla.bez	30	2,2,2,2	Edukacja dla bezpieczeństwa
6845	SD-BW5	2	lec	Met.bad.nad	30	2,2,2,2	Metodologia badań nad bezpieczeństwem
6852	SP-CBW7	1	lec	Ekonomia	15	2,2,2,2	Ekonomia
6855	SP-CBW7	1	lec	Och.wła.int	15	2,2,2,2	Ochrona własności intelektualnej
6863	SP-CBW7	1	lec	Wsp.zag.bez	60	2,2,2,2	Współczesne zagrożenia bezpieczeństwa
6867	SP-CBW7	1	lec	Pod.teo.bez	30	2,2,2,2	Podstawy teorii bezpieczeństwa
6868	SP-CBW7	2	lec	Bez.wew.wUE	25	2,2,2,2	Bezpieczeństwo wewnętrzne w UE
6873	SP-CBW7	2	lec	Org.i.zar	15	2,2,2,2	Organizacja i zarządzanie
6879	SP-CBW7	1	lec	Erg.fiz.bez	15	2,2,2,2	Ergonomia i fizjologia w bezpieczeństwie pracy
6882	SP-CBW7	2	lec	Pra.kar.mat	30	2,2,2,2	Prawo karne materialne w bezpieczeństwie
6887	SP-CBW7	1	lec	Org.fun.adm.pub	15	2,2,2,2	Organizacja i funkcjonowanie administracji publicznej
6888	SP-CBW7	2	lec	Org.fun.adm.pub	15	2,2,2,2	Organizacja i funkcjonowanie administracji publicznej
6892	SP-CBW7	2	lec	Pra.cyw.adm	30	2,2,2,2	Prawo cywilne i administracyjne
6898	SP-CBW7	1	lec	Org.i.zar	30	2,2,2,2	Organizacja i zarządzanie
6903	SP-CBW7	1	lec	Edu.dla.bez	15	2,2,2,2	Edukacja dla bezpieczeństwa
6910	SP-CBW7	2	lec	Nau.pań.pra	30	2,2,2,2	Nauki o państwie i prawie
6915	SP-CBW7	2	lec	Wsp.pro.bez	30	2,2,2,2	Współczesne problemy bezpieczeństwa
6916	SP-CBW7	1	lec	Tec.inf	15	2,2,2,2	Technologie informacyjne
6923	SP-CBW7	2	lec	Sys.bez.RP	20	2,2,2,2	System Bezpieczeństwa RP
6927	SP-CBW7	2	lec	Och.dan.oso	15	2,2,2,2	Ochrona danych osobowych i informacji niejawnych
6948	NP-CBW7	2	lec	Pra.kar.mat	18	2,2,2,2	Prawo karne materialne w bezpieczeństwie
6951	NP-CBW7	1	lec	Wsp.zag.bez	18	2,2,2,2	Współczesne zagrożenia bezpieczeństwa
6953	NP-CBW7	2	lec	Wsp.pro.bez	18	2,2,2,2	Współczesne problemy bezpieczeństwa
6965	NP-CBW7	1	lec	Pod.teo.bez	18	2,2,2,2	Podstawy teorii bezpieczeństwa
6966	NP-CBW7	2	lec	Nau.pań.pra	18	2,2,2,2	Nauki o państwie i prawie
6975	NP-CBW7	1	lec	Tec.inf	18	2,2,2,2	Technologie informacyjne
6979	NP-CBW7	2	lec	Bez.wew.wUE	18	2,2,2,2	Bezpieczeństwo wewnętrzne w UE
7020	SP-PK19	2	lec	Och.wła.int	15	2,2,2,2	Ochrona własności intelektualnej
7022	SD-BW5	1	lec	Konf.pol.św	25	2,2,2,2	Konflikty polityczne świata
7023	SD-BW5	2	lec	Geo.uwa.bez	30	2,2,2,2	Geopolityczne uwarunkowania bezpieczeństwa wewnętrznego
7025	ND-BW5	1	lec	Konf.pol.św	18	2,2,2,2	Konflikty polityczne świata
6730	ND-BW5	1	lec	Edu.dla.bez	9	2,0,2,0	Edukacja dla bezpieczeństwa
6734	ND-BW5	2	lec	Poz.ins.org	9	2,0,2,0	Pozarządowe instytucje i organizacje bezpieczeństwa
6742	ND-BW5	1	lec	Bez.pań.oby	9	2,0,2,0	Bezpieczeństwo państwa i obywateli
6758	ND-BW5	1	lec	Org.fun.adm.pub	9	2,0,2,0	Organizacja i funkcjonowanie administracji publicznej
6760	ND-BW5	2	lec	Zar.jak.bez	9	2,0,2,0	Zarządzanie jakością w bezpieczeństwie
6952	NP-CBW7	1	lec	Erg.fiz.bez	9	2,0,2,0	Ergonomia i fizjologia w bezpieczeństwie pracy
6962	NP-CBW7	1	lec	Och.wła.int	9	2,0,2,0	Ochrona własności intelektualnej
6964	NP-CBW7	1	lec	Ekonomia	9	2,0,2,0	Ekonomia
6972	NP-CBW7	2	lec	Sys.bez.RP	9	2,0,2,0	System Bezpieczeństwa RP
6974	NP-CBW7	2	lec	Org.i.zar	9	2,0,2,0	Organizacja i zarządzanie
7018	NP-CBW7	1	lec	Org.i.zar	9	2,0,2,0	Organizacja i zarządzanie
7036	ND-P36	1	lec	Wsp.pro.inż	18	2,2,2,2	Współczesne problemy inżynierii środowiska
7071	ND-P36	1	lec	Prz.ope.och	18	2,2,2,2	Przygotowanie operacyjne w ochronie ludności
7089	SD-P14	1	lec	Sys.inf.prz	15	2,2,2,2	Systemy informacji przestrzennej
7095	SD-P14	1	lec	Zar.inf	15	2,2,2,2	Zarządzanie informacjami
7098	SD-P14	1	lec	Met.bad.nau	15	2,2,2,2	Metodologia badań naukowych w inżynierii bezpieczeństwa
7099	SD-P14	2	lec	Kie.dzi.rat	15	2,2,2,2	Kierowanie działaniami ratowniczymi
7104	SD-P14	1	lec	Wsp.pro.inż	30	2,2,2,2	Współczesne problemy inżynierii środowiska
7107	SD-P14	2	lec	Pro.doc.pop	15	2,2,2,2	Procedura dochodzeń popożarowych
7113	SD-P14	2	lec	Ana.ryz.inz	15	2,2,2,2	Analiza ryzyka w inżynierii bezpieczeństwa
7115	SD-P14	1	lec	Met.tec.zar	15	2,2,2,2	Metody i techniki zarządzania zasobami ludzkimi
7118	SD-P14	1	lec	Mod.poż	15	2,2,2,2	Modelowanie pożarów
7120	SD-P14	1	lec	Prz.ope.och	30	2,2,2,2	Przygotowanie operacyjne w ochronie ludności
7127	SD-P14	1	lec	Nie.bez.bud	15	2,2,2,2	Niezawodność i bezpieczeństwo budowli
6777	SD-BW5	1	exc	Psy.spo	20	2,2,2,2	Psychologia społeczna
7131	SD-P14	2	lec	Zar.inf.kom	15	2,2,2,2	Zarządzanie infrastrukturą komunalną w sytuacjach kryzysowych
7133	SD-P14	1	lec	Wsp.zag.ter	15	2,2,2,2	Współczesne zagrożenia terrorystyczne
7135	SD-P14	2	lec	Kra.sys.wyk	15	2,2,2,2	Krajowy system wykrywania skażeń i alarmowania
7137	SD-P14	1	lec	Mat.wsp.dec	15	2,2,2,2	Matematyczne wspomaganie decyzji
7139	SD-P14	2	lec	Wyb.zag.fil	15	2,2,2,2	Wybrane zagadnienia z filozofii i etyki
7148	Erasmus	3	lec	Era.fire.sci.com	10	2,2,2,2	Erasmus: Fire Science and Combustion
7150	Erasmus	3	lec	Era.int.saf	15	2,2,2,2	Erasmus: International Safety and Security Institutions
7152	Erasmus	3	lec	Era.cri.man	30	2,2,2,2	Erasmus: Crisis Management
7154	Erasmus	3	lec	Era.for.fir.saf	15	2,2,2,2	Erasmus: Forest Fire Safety
7156	Erasmus	3	lec	Era.civ.eme	30	2,2,2,2	Erasmus: Civil Emergency Planning
7160	Erasmus	3	lec	Era.civ.protect	30	2,2,2,2	Erasmus: Civil protection
7161	Erasmus	3	lec	Era.ide.ana.biol	15	2,2,2,2	Erasmus: Identification and Analysis of Biological Treats
7165	Erasmus	3	lec	Era.int.saf.EU	30	2,2,2,2	Erasmus: International Safety in the European Union
7166	Erasmus	3	lec	Era.fir.and	30	2,2,2,2	Erasmus: Fire and explosion hazard assessment
7171	SP-PC19	1	lec	Matematyka	30	2,2,2,2	Matematyka
7172	SP-PC19	1	lec	Tec.inf	30	2,2,2,2	Technologie informacyjne
7175	SP-PC19	2	lec	Ekonomia	30	2,2,2,2	Ekonomia
7179	SP-PC19	2	lec	Hyd.prz.zao	30	2,2,2,2	Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
7190	SP-PC19	2	lec	Pod.bud	30	2,2,2,2	Podstawy budownictwa
7191	SP-PC19	1	lec	Chemia	30	2,2,2,2	Chemia
7192	SP-PC19	1	lec	Fil.ety	30	2,2,2,2	Filozofia i etyka
7193	SP-PC19	1	lec	Mec.wyt.mat	30	2,2,2,2	Mechanika i wytrzymałość materiałów
7201	SP-PC19	2	lec	Och.wła.int	15	2,2,2,2	Ochrona własności intelektualnej
7217	Erasmus	4	lec	Era.Hum.aid	15	2,2,2,2	Erasmus: Humanitarian aid in international dimension
4152	SP-PK16	8	exc	Prz.kon	14	2,2,2,2	Przygotowanie kondycyjne
4188	SP-PK18	4	exc	Pod.kon.mas	15	2,2,2,2	Podstawy konstrukcji maszyn
4196	SP-PK17	6	exc	Sam.poj.rat	15	2,2,2,2	Samochody i pojazdy ratownicze
5560	SP-CBW6	4	exc	Och.osó.mie	30	2,2,2,2	Ochrona osób, mienia, obiektów i obszarów
5562	SP-CBW6	4	exc	Pra.czł.ety	15	2,2,2,2	Prawa człowieka i etyka zawodowa funkcjonariuszy służb publicznych
5566	SP-CBW6	4	exc	Inf.kry	15	2,2,2,2	Infrastruktura krytyczna
5567	SP-CBW6	4	exc	Prosem.dyp	15	2,2,2,2	Proseminarium dyplomowe
5568	SP-CBW6	4	exc	Praktyka	120	2,2,2,2	Praktyka
5579	NP-PS46	3	exc	Jęz.nie	16	2,2,2,2	Język niemiecki
5580	NP-PS46	3	exc	Jęz.ros	16	2,2,2,2	Język rosyjski
5585	NP-PS46	4	exc	Jęz.nie	16	2,2,2,2	Język niemiecki
5586	NP-PS46	4	exc	Jęz.ros	16	2,2,2,2	Język rosyjski
5587	NP-PS45	5	exc	Jęz.nie	16	2,2,2,2	Język niemiecki
5588	NP-PS45	5	exc	Jęz.ros	16	2,2,2,2	Język rosyjski
5590	NP-PS45	6	exc	Jęz.nie	16	2,2,2,2	Język niemiecki
5591	NP-PS45	6	exc	Jęz.ros	16	2,2,2,2	Język rosyjski
5593	NP-PS44	7	exc	Jęz.nie	14	2,2,2,2	Język niemiecki
5594	NP-PS44	7	exc	Jęz.ros	14	2,2,2,2	Język rosyjski
5615	NP-PC20	5	exc	Jęz.ros	16	2,2,2,2	Język rosyjski
5618	NP-PC20	6	exc	Jęz.ros	16	2,2,2,2	Język rosyjski
7030	ND-P36	1	lec	Zar.inf	9	2,0,2,0	Zarządzanie informacjami
7046	ND-P36	2	lec	Zar.inf.kom	9	2,0,2,0	Zarządzanie infrastrukturą komunalną w sytuacjach kryzysowych
7050	ND-P36	2	lec	Kie.dzi.rat	9	2,0,2,0	Kierowanie działaniami ratowniczymi
7064	ND-P36	2	lec	Ana.ryz.inz	9	2,0,2,0	Analiza ryzyka w inżynierii bezpieczeństwa
7066	ND-P36	1	lec	Met.tec.zar	9	2,0,2,0	Metody i techniki zarządzania zasobami ludzkimi
7072	ND-P36	1	lec	Wsp.zag.ter	9	2,0,2,0	Współczesne zagrożenia terrorystyczne
7080	ND-P36	1	lec	Mat.wsp.dec	9	2,0,2,0	Matematyczne wspomaganie decyzji
5596	NP-PS44	8	exc	Jęz.ros	8	2,0,2,0	Język rosyjski
5621	NP-PC19	7	exc	Jęz.ros	14	2,2,2,2	Język rosyjski
6189	NP-C16	6	exc	Jęz.ang	24	2,2,2,2	Język angielski
6194	SP-CBW5	5	exc	Sem.dyp	30	2,2,2,2	Seminarium dyplomowe
6196	NP-C16	6	exc	Erg.fiz.bez	16	2,2,2,2	Ergonomia i fizjologia w bezpieczeństwie pracy
6287	SP-C18.IBC	5	exc	Psy.soc	15	2,2,2,2	Psychologia i socjologia
6292	SP-C18.IBC	5	exc	Sku.zag.bio	15	2,2,2,2	Skutki zagrożeń biologicznych i ekologicznych
6368	SP-C18.IBPr	6	exc	Zar.zas.lud	15	2,2,2,2	Zarządzanie zasobami ludzkimi
6369	SP-C18.IBPr	6	exc	Sem.dyp	30	2,2,2,2	Seminarium dyplomowe
6371	SP-C18.IBPr	6	exc	Bhp.obi.inf	15	2,2,2,2	BHP w obiektach infrastruktury krytycznej
6594	NP-PS47A	1	exc	Matematyka	32	2,2,2,2	Matematyka
6613	NP-PS47A	1	exc	Jęz.ang	18	2,2,2,2	Język angielski
6638	NP-PS47B	1	exc	Jęz.ros	18	2,2,2,2	Język rosyjski
6641	NP-PS47B	1	exc	Jęz.nie	18	2,2,2,2	Język niemiecki
6642	NP-PS47B	2	exc	Jęz.nie	18	2,2,2,2	Język niemiecki
6643	NP-PS47B	2	exc	Jęz.ros	18	2,2,2,2	Język rosyjski
6644	NP-PS47B	2	exc	Matematyka	32	2,2,2,2	Matematyka
6645	NP-PS47B	2	exc	Jęz.ang	18	2,2,2,2	Język angielski
6646	NP-PS47B	1	exc	Chemia	18	2,2,2,2	Chemia
6647	NP-PS47B	2	exc	Chemia	18	2,2,2,2	Chemia
6649	NP-PS47B	2	exc	Mec.wyt.mat	18	2,2,2,2	Mechanika i wytrzymałość materiałów
6652	NP-PS47B	1	exc	Rys.tec	18	2,2,2,2	Rysunek techniczny
6654	NP-PS47B	2	exc	Hyd.prz.zao	18	2,2,2,2	Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
6657	NP-PS47B	1	exc	Fizyka	18	2,2,2,2	Fizyka
6660	NP-PS47B	1	exc	Matematyka	32	2,2,2,2	Matematyka
6766	ND-BW5	2	exc	Wyc.fiz	18	2,2,2,2	Wychowanie fizyczne
6782	SD-BW5	1	exc	Wyc.fiz	15	2,2,2,2	Wychowanie fizyczne
6784	SD-BW5	2	exc	Syt.kry.kry	35	2,2,2,2	Sytuacje kryzysowe, kryzysy i patologie społeczne
6788	SD-BW5	2	exc	Zar.jak.bez	20	2,2,2,2	Zarządzanie jakością w bezpieczeństwie
6790	SD-BW5	2	exc	Pra.asp.bez	35	2,2,2,2	Prawno - funkcjonalne aspekty bezpieczeństwa wewnętrznego
6806	SD-BW5	1	exc	Jęz.ang	40	2,2,2,2	Język angielski
6809	SD-BW5	1	exc	Kom.spo	15	2,2,2,2	Komunikowanie społeczne
6812	SD-BW5	1	exc	Str.bez.wew	15	2,2,2,2	Strategie bezpieczeństwa wewnętrznego
6958	NP-CBW7	2	exc	Wyc.fiz	18	2,2,2,2	Wychowanie fizyczne
6963	NP-CBW7	2	exc	Jęz.ang	18	2,2,2,2	Język angielski
6973	NP-CBW7	2	exc	Nau.pań.pra	18	2,2,2,2	Nauki o państwie i prawie
9415	SD-BW5	1	exc	Jęz.ros	40	2,2,2,2	Język rosyjski
9416	SD-BW5	2	exc	Jęz.nie	40	2,2,2,2	Język niemiecki
9417	SD-BW5	2	exc	Jęz.ros	40	2,2,2,2	Język rosyjski
9427	SD-P14	1	exc	Jęz.nie	15	2,2,2,2	Język niemiecki
9428	SD-P14	1	exc	Jęz.ros	15	2,2,2,2	Język rosyjski
9429	SD-P14	2	exc	Jęz.nie	30	2,2,2,2	Język niemiecki
9430	SD-P14	2	exc	Jęz.ros	30	2,2,2,2	Język rosyjski
9436	ND-BW5	1	exc	Jęz.nie	18	2,2,2,2	Język niemiecki
9437	ND-BW5	1	exc	Jęz.nie	18	2,2,2,2	Język niemiecki
9438	ND-BW5	2	exc	Jęz.nie	18	2,2,2,2	Język niemiecki
9439	ND-BW5	2	exc	Jęz.ros	18	2,2,2,2	Język rosyjski
9448	NP-CBW7	1	exc	Jęz.nie	18	2,2,2,2	Język niemiecki
9449	NP-CBW7	1	exc	Jęz.ros	18	2,2,2,2	Język rosyjski
9450	NP-CBW7	2	exc	Jęz.nie	18	2,2,2,2	Język niemiecki
9451	NP-CBW7	2	exc	Jęz.ros	18	2,2,2,2	Język rosyjski
9513	SP-CBW5.OL	6	exc	DP	10	2,2,2,2	Praca dyplomowa
4322	SP-PC18	3	exc	Pod.bud	30	2,2,2,2	Podstawy budownictwa
4341	SP-PC17	5	exc	Tec.sys.zab	30	2,2,2,2	Techniczne systemy zabezpieczeń
4507	ND-P35	3	exc	Opt.śro.gas	9	0,2,0,2	Optymalizacja środków gaśniczych i neutralizacji
4529	ND-P35	3	exc	Sem.mag	9	0,2,0,2	Seminarium magisterskie
4543	NP-PC19	8	exc	Jęz.ang	8	0,2,0,2	Język angielski
4545	NP-PC21	4	exc	Psy.soc	9	0,2,0,2	Psychologia i socjologia
4651	NP-PS44	8	exc	Jęz.ang	8	0,2,0,2	Język angielski
4653	NP-PS46	4	exc	Psy.soc	9	0,2,0,2	Psychologia i socjologia
4631	NP-PC19	7	exc	Bez.poż.las	9	0,2,0,2	Bezpieczeństwo pożarowe lasów
4907	NP-C15	7	exc	Zar.cią.dzi	8	0,2,0,2	Zarządzanie ciągłością działania
6179	NP-C16	5	exc	Prosem.dyp	8	0,2,0,2	Proseminarium dyplomowe
6181	NP-C16	5	exc	Śro.och.ind	8	0,2,0,2	Środki ochrony indywidualnej i zbiorowej
6183	NP-C16	5	exc	Pra.zmi	8	0,2,0,2	Praca zmianowa
6185	NP-C16	5	exc	Zag.poż.wyb	8	0,2,0,2	Zagrożenia pożarowe i wybuchowe
7081	ND-P36	1	exc	Met.tec.zar	9	0,2,0,2	Metody i techniki zarządzania zasobami ludzkimi
7043	ND-P36	2	exc	Pro.doc.pop	9	0,2,0,2	Procedura dochodzeń popożarowych
6188	NP-C16	5	exc	Mik.śro.pra	8	2,0,2,0	Mikroklimat środowiska pracy
6206	NP-C16	6	exc	Zar.zas.lud	8	2,0,2,0	Zarządzanie zasobami ludzkimi
6208	NP-C16	6	exc	Bhp.obi.inf	8	2,0,2,0	BHP w obiektach infrastruktury krytycznej
4517	ND-P35	3	lec	Rze.prz	9	0,2,0,2	Rzeczoznawstwo przeciwpożarowe
4583	NP-PC21	4	lec	Pod.kon.mas	9	0,2,0,2	Podstawy konstrukcji maszyn
4627	NP-PC19	7	lec	Met.bad.prz	9	0,2,0,2	Metodyka badań przyczyn pożarów
4637	NP-PC19	8	lec	Mię.wsp.rat	9	0,2,0,2	Międzynarodowa współpraca ratownicza
4641	NP-PC19	8	lec	Pro.bie.zab	9	0,2,0,2	Projektowanie biernych zabezpieczeń przeciwpożarowych
4691	NP-PS46	4	lec	Pod.kon.mas	9	0,2,0,2	Podstawy konstrukcji maszyn
4709	NP-PS45	5	lec	Med.kat	9	0,2,0,2	Medycyna katastrof
4713	NP-PS45	5	lec	Ewa.int	9	0,2,0,2	Ewakuacja interwencyjna
4715	NP-PS45	5	lec	Org.łąc.ala	9	0,2,0,2	Organizacja łączności i alarmowanie
4727	NP-PS44	7	lec	Met.bad.prz	9	0,2,0,2	Metodyka badań przyczyn pożarów
4737	NP-PS44	8	lec	Log.wsp.dłu	9	0,2,0,2	Logistyczne wsparcie długotrwałych działań ratowniczych
4739	NP-PS44	7	lec	Dzi.rat.pod	9	0,2,0,2	Działania ratownicze podczas klęsk żywiołowych
4911	NP-C15	7	lec	Rat.sys.pie	8	0,2,0,2	Ratownictwo i systemy pierwszej pomocy w przedsiębiorstwie
6171	NP-C16	5	lec	Met.ilo.jak	8	0,2,0,2	Metody ilościowej i jakościowej oceny ryzyka
6173	NP-C16	5	lec	Sku.zag.bio	8	0,2,0,2	Skutki zagrożeń biologicznych i ekologicznych
6177	NP-C16	5	lec	Inf.kry	8	0,2,0,2	Infrastruktura krytyczna
6187	NP-C16	5	lec	Mik.śro.pra	8	0,2,0,2	Mikroklimat środowiska pracy
6205	NP-C16	6	lec	Zar.zas.lud	8	0,2,0,2	Zarządzanie zasobami ludzkimi
6207	NP-C16	6	lec	Bhp.obi.inf	8	0,2,0,2	BHP w obiektach infrastruktury krytycznej
6211	NP-C16	6	lec	Zag.ele	8	0,2,0,2	Zagrożenia elektroenergetyczne
6233	NP-CBW6	3	lec	Pos.adm.cyw	9	0,2,0,2	Postępowanie administracyjne i cywilne
6241	NP-CBW6	4	lec	Prz.obr.pań	9	0,2,0,2	Przygotowania obronne panstwa
6243	NP-CBW6	4	lec	Zar.kry	9	0,2,0,2	Zarządzanie kryzysowe
6245	NP-CBW6	4	lec	Bez.spo.lok	9	0,2,0,2	Bezpieczeństwo społeczności lokalnych i kształtowanie bezpiecznych przestrzeni
6249	NP-CBW6	4	lec	Och.osó.mie	9	0,2,0,2	Ochrona osób, mienia, obiektów i obszarów
6251	NP-CBW6	4	lec	Pra.czł.ety	9	0,2,0,2	Prawa człowieka i etyka zawodowa funkcjonariuszy służb publicznych
6725	ND-BW5	1	lec	Ele.log	9	0,2,0,2	Elementy logiki
6733	ND-BW5	2	lec	Pra.asp.bez	9	0,2,0,2	Prawno - funkcjonalne aspekty bezpieczeństwa wewnętrznego
6755	ND-BW5	2	lec	Syt.kry.kry	9	0,2,0,2	Sytuacje kryzysowe, kryzysy i patologie społeczne
6757	ND-BW5	1	lec	Kom.spo	9	0,2,0,2	Komunikowanie społeczne
6773	ND-BW5	2	lec	Met.bad.nad	9	0,2,0,2	Metodologia badań nad bezpieczeństwem
6959	NP-CBW7	1	lec	Edu.dla.bez	9	0,2,0,2	Edukacja dla bezpieczeństwa
6961	NP-CBW7	2	lec	Pra.cyw.adm	9	0,2,0,2	Prawo cywilne i administracyjne
6969	NP-CBW7	1	lec	Org.fun.adm.pub	9	0,2,0,2	Organizacja i funkcjonowanie administracji publicznej
6971	NP-CBW7	2	lec	Org.fun.adm.pub	9	0,2,0,2	Organizacja i funkcjonowanie administracji publicznej
7017	NP-CBW7	2	lec	Och.dan.oso	9	0,2,0,2	Ochrona danych osobowych i informacji niejawnych
7027	NP-PS47B	2	lec	Och.wła.int	9	0,2,0,2	Ochrona własności intelektualnej
7039	ND-P36	2	lec	Pro.doc.pop	9	0,2,0,2	Procedura dochodzeń popożarowych
7045	ND-P36	1	lec	Met.bad.nau	9	0,2,0,2	Metodologia badań naukowych w inżynierii bezpieczeństwa
7063	ND-P36	1	lec	Sys.inf.prz	9	0,2,0,2	Systemy informacji przestrzennej
7075	ND-P36	2	lec	Kra.sys.wyk	9	0,2,0,2	Krajowy system wykrywania skażeń i alarmowania
7077	ND-P36	1	lec	Mod.poż	9	0,2,0,2	Modelowanie pożarów
7079	ND-P36	1	lec	Nie.bez.bud	9	0,2,0,2	Niezawodność i bezpieczeństwo budowli
7143	ND-P36	2	lec	Wyb.zag.fil	9	0,2,0,2	Wybrane zagadnienia z filozofii i etyki
7163	Erasmus	3	lec	Era.intr.fir.mod	6	0,2,0,2	Erasmus: An Introduction to Fire Modeling
5595	NP-PS44	8	exc	Jęz.nie	8	0,2,0,2	Język niemiecki
5623	NP-PC19	8	exc	Jęz.ros	8	0,2,0,2	Język rosyjski
6759	ND-BW5	2	exc	Pra.asp.bez	9	0,2,0,2	Prawno - funkcjonalne aspekty bezpieczeństwa wewnętrznego
6967	NP-CBW7	1	exc	Ekonomia	9	0,2,0,2	Ekonomia
4688	NP-PS46	4	lec	Fiz.spa	9	2,0,2,0	Fizykochemia spalania
4730	NP-PS44	7	lec	Bez.poż.las	9	2,0,2,0	Bezpieczeństwo pożarowe lasów
4736	NP-PS44	8	lec	Mię.wsp.rat	9	2,0,2,0	Międzynarodowa współpraca ratownicza
6214	NP-C16	6	lec	Pro.opt.wid	8	2,0,2,0	Promieniowanie optyczne i widzialne
6216	NP-C16	6	lec	Oce.ryz.zaw	8	2,0,2,0	Ocena ryzyka zawodowego w systemie zarządzania bezpieczeństwem pracy
6222	NP-CBW6	3	lec	Ins.źró.pra	9	2,0,2,0	Instytucje i źródła prawa UE
6228	NP-CBW6	3	lec	Bez.spo.lok	9	2,0,2,0	Bezpieczeństwo społeczności lokalnych i kształtowanie bezpiecznych przestrzeni
6236	NP-CBW6	4	lec	Psy.soc	9	2,0,2,0	Psychologia i socjologia
7026	NP-PS47A	2	lec	Och.wła.int	9	2,0,2,0	Ochrona własności intelektualnej
7028	NP-PC22	2	lec	Och.wła.int	9	2,0,2,0	Ochrona własności intelektualnej
6212	NP-C16	6	exc	Zag.ele	8	2,0,2,0	Zagrożenia elektroenergetyczne
6756	ND-BW5	1	exc	Psy.spo	9	2,0,2,0	Psychologia społeczna
6960	NP-CBW7	2	exc	Org.i.zar	9	2,0,2,0	Organizacja i zarządzanie
6968	NP-CBW7	1	exc	Org.fun.adm.pub	9	2,0,2,0	Organizacja i funkcjonowanie administracji publicznej
6970	NP-CBW7	1	exc	Och.wła.int	9	2,0,2,0	Ochrona własności intelektualnej
6427	SP-PK19	2	lab	Tec.inf	30	2,0,2,0	Technologie informacyjne
\.


--
-- Data for Name: tefuni_teachers; Type: TABLE DATA; Schema: public; Owner: tefuni
--

COPY public.tefuni_teachers (id, name) FROM stdin;
638	Bih.Ja
658	Gab.Al
375	Ciu.Ma
7	Sob.Mi
174	Gaw.Wi
27	Prę.An
86	Smo.Ma
1395	Fur.Ra
185	Gro.Pa
38	Jas.Wa
78	Wol.Je
598	Rak.Jo
343	Tyr.Ka
258	Kuk.Bo
235	Łuk.An
254	Spy.Be
124	Lip.St
158	Mar.An
28	Dom.Ag
199	Wąs.Wi
5	Kup.Wł
649	Jak.We
721	Dur.Do
591	Goł.An
16	Try.Mo
114	Osz.Ma
1375	Maz.An
569	Zdz.To
719	Cze.Ka
543	Bra.Ad
1407	Pią.Pi
44	Sta.El
110	Den.Sł
147	Kró.Be
604	Bed.Ka
229	Las.Ag
209	Fli.Ma
713	Lew.Sy
573	Zub.Łu
195	Pta.Sz
558	Rud.Ew
495	Wdo.To
1406	Śni.Ba
30	Łaz.St
29	Kra.Ad
77	Soc.Ma
645	Mak.Ra
224	Ost.Ag
475	Miz.An
472	Bar.Br
675	Bad.Ar
714	Gór.Ag
269	Bar.Da
494	Ter.Ta
136	Boc.Ja
208	Kra.An
1398	Sta.Kr
659	Biń.An
161	Sza.An
71	Waw.Pi
238	Dmo.An
168	Obu.To
34	Pec.Ma
4	Gąs.Mi
95	Had.Ew
493	Żół.Jo
58	Bud.Kr
526	Kuz.Łu
570	Kos.Mi
144	Wys.Pr
1376	Kus.Pi
196	Jak.Ja
445	Wol.Wa
210	Bin.Jo
43	Gał.Je
1372	Lor.Da
151	Wró.Pa
640	Pow.Al
602	Gło.An
80	Wal.Ko
74	Rat.Da
69	Paw.An
587	Bog.An
718	Pie.Pi
611	Kon.Ma
1373	Dąb.An
654	Now.Ar
538	Pół.Ma
420	Chę.Re
1374	Mak.An
90	Sul.Pa
157	Tuś.No
121	Kra.Sy
551	McI.Al
549	Wiś.Be
167	Kli.To
1362	Pro.Pi
99	Kon.Ma
207	Kal.Ja
473	Ken.Ag
607	Pol.An
715	Wró.Wo
192	Mat.Ra
437	Elb.St
285	Zia.Ew
378	Mir.Ma
178	Tof.Pi
113	Ols.Li
48	Ryb.Ja
485	Ośc.Ba
180	Ter.Pi
97	Wło.An
503	Koc.An
104	Bie.St
31	Drz.To
39	Dzi.Gr
481	Czu.To
109	Dwo.St
1377	Zuż.Kr
509	Stę.Jó
122	Lub.An
159	Jar.Wo
601	Wie.Ju
484	Org.Zy
6	Wnę.Wa
636	Rog.Wi
624	Sok.An
1390	Ans.Ma
1397	Tym.Ja
422	Kam.Re
33	Cis.Ma
555	Por.Ra
323	Mal.Jo
131	Pie.Da
26	Kub.Pr
340	Jar.Ka
470	Szc.Mo
540	Gro.Ry
101	Kie.Sy
639	Gir.Ma
57	Kęp.Pa
60	Bro.Sł
64	Bud.Zd
571	Zie.An
197	Sut.Mo
32	Byl.Pr
194	Łap.Ma
137	Łąc.Kr
23	Kot.Gr
12	Naw.Ir
212	Kol.Ra
660	Gul.Ma
182	Paw.Te
712	Gay.An
62	Chr.Ja
59	Mic.Jo
83	Wol.Ma
11	Woj.Ra
138	Zar.Ja
702	Mar.Ag
641	Żac.Pi
68	Chu.Pi
190	Sow.Mi
25	Kre.Ka
626	Kol.Pi
198	Wal.Ag
142	Ogr.Gr
674	Adi.Ad
1399	Woc.Ma
24	Cis.Gr
53	Fil.Le
22	Kow.Pr
438	Bor.Sy
271	Gan.Do
1347	Kuc.Łu
193	Węs.To
19	Sal.Zd
20	Ogr.Pa
377	Maj.Ma
614	Ada.Ma
542	Ber.Ja
247	Szy.Ba
206	Zwę.To
67	Pie.Ro
618	Jaw.Mi
615	Maj.An
594	Woj.Mo
507	Tel.Ok
567	Węg.Ma
305	Gra.Iz
574	Sob.Gr
1294	Koz.Jo
21	Kwi.Ma
215	Gik.Ma
342	Bra.Ka
186	Wró.Ra
165	Fra.Ew
541	Kęs.Ta
234	Kuł.An
666	Nep.Ma
\.


--
-- Data for Name: tefuni_weeks; Type: TABLE DATA; Schema: public; Owner: tefuni
--

COPY public.tefuni_weeks (meta, weeks) FROM stdin;
2020.01	[ "31.08-06.09", "07.09-13.09", "14.09-20.09", "21.09-27.09" ] 
\.


--
-- Name: tefuni_assign_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tefuni
--

SELECT pg_catalog.setval('public.tefuni_assign_id_seq', 148, true);


--
-- Name: tefuni_assign tefuni_assign_pkey; Type: CONSTRAINT; Schema: public; Owner: tefuni
--

ALTER TABLE ONLY public.tefuni_assign
    ADD CONSTRAINT tefuni_assign_pkey PRIMARY KEY (id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

