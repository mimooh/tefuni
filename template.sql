DROP DATABASE if exists tefuni;
DROP USER if exists tefuni;

CREATE DATABASE tefuni WITH ENCODING='UTF8';
CREATE USER tefuni;
ALTER DATABASE tefuni OWNER TO tefuni;
\c tefuni;


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

SET default_with_oids = false;

--
-- Name: tefuni_input; Type: TABLE; Schema: public; Owner: tefuni
--

CREATE TABLE public.tefuni_input (
    id integer,
    "group" character varying(30),
    semester integer,
    form text,
    subject character varying(50),
    hours integer,
    blocks text,
    struct text,
    subjectf character varying(200)
);


ALTER TABLE public.tefuni_input OWNER TO tefuni;

--
-- Data for Name: tefuni_input; Type: TABLE DATA; Schema: public; Owner: tefuni
--

COPY public.tefuni_input (id, "group", semester, form, subject, hours, blocks, struct, subjectf) FROM stdin;
130	ND-BW4	1	exc	His.bez.wew	9			Historia bezpieczeństwa wewnętrznego w Polsce
133	ND-BW4	1	exc	Jęz.ang	18			Język angielski
148	ND-BW4	1	exc	Org.fun.adm.pub	18			Organizacja i funkcjonowanie administracji publicznej
177	ND-BW4	1	exc	Str.bez.wew	9			Strategie bezpieczeństwa wewnętrznego
387	ND-BW4	1	exc	Kom.spo	9			Komunikowanie społeczne
635	ND-BW4	3	exc	roz.pro.sta	9			Rozpoznawanie i prognozowanie stanów zagrożenia
644	ND-BW4	3	exc	Seminarium	16			Seminarium
716	ND-BW4	3	exc	Inf.kry	9			Infrastruktura krytyczna
717	ND-BW4	3	exc	Jęz.ang	18			Język angielski
732	ND-BW4	3	exc	Zas.log.bez	18			Zasilanie logistyczne w bezpieczeństwie
745	ND-BW4	1	exc	Psy.spo	9			Psychologia społeczna
875	ND-BW4	1	exc	Wyc.fiz	9			Wychowanie fizyczne
1260	SD-BW3	3	exc	Jęz.ang	30			Język angielski
1260	SD-BW4	3	exc	Jęz.ang	30			Język angielski
1330	SD-BW3	1	exc	Jęz.ang	30			Język angielski
1330	SD-BW4	1	exc	Jęz.ang	30			Język angielski
1398	ND-BW4	3	exc	Sił.zbr.bez	9			Siły Zbrojne w bezpieczeństwie wewnętrznym
1400	ND-BW4	3	exc	Wsp.mię.bez	18			Współpraca międzynarodowa w bezpieczeństwie wewnętrznym
1600	SP-CBW6	3	exc	Jęz.ang	30			Język angielski
1600	SP-CBW5	3	exc	Jęz.ang	30			Język angielski
1782	SP-CBW5	4	exc	Bez.spo.lok	15			Bezpieczeństwo społeczności lokalnych i kształtowanie bezpiecznych przestrzeni
1782	SP-CBW6	4	exc	Bez.spo.lok	15			Bezpieczeństwo społeczności lokalnych i kształtowanie bezpiecznych przestrzeni
1825	SD-BW4	1	exc	Wyc.fiz	15			Wychowanie fizyczne
1825	SD-BW3	1	exc	Wyc.fiz	15			Wychowanie fizyczne
1856	SP-PK17	4	exc	Jęz.ang	30			Język angielski
1856	SP-PK15	4	exc	Jęz.ang	30			Język angielski
1856	SP-PK18	4	exc	Jęz.ang	30			Język angielski
1856	SP-PK16	4	exc	Jęz.ang	30			Język angielski
1929	SP-CBW5	1	exc	His.bez	15			Historia bezpieczeństwa
1929	SP-CBW6	1	exc	His.bez	15			Historia bezpieczeństwa
1930	SP-CBW5	1	exc	Jęz.ang	30			Język angielski
1930	SP-CBW6	1	exc	Jęz.ang	30			Język angielski
1955	SP-CBW5	1	exc	Wsp.zag.bez	30			Współczesne zagrożenia bezpieczeństwa
1955	SP-CBW6	1	exc	Wsp.zag.bez	30			Współczesne zagrożenia bezpieczeństwa
1956	SP-CBW6	1	exc	Wyc.fiz	30			Wychowanie fizyczne
3903	SP-CBW5	3	lec	Pla.cyw	30			Planowanie cywilne
1956	SP-CBW5	1	exc	Wyc.fiz	30			Wychowanie fizyczne
1976	SD-BW3	1	exc	Kom.spo	15			Komunikowanie społeczne
1976	SD-BW4	1	exc	Kom.spo	15			Komunikowanie społeczne
2031	SP-PK17	5	exc	Jęz.ang	30			Język angielski
2031	SP-PK16	5	exc	Jęz.ang	30			Język angielski
2031	SP-PK15	5	exc	Jęz.ang	30			Język angielski
2031	SP-PK18	5	exc	Jęz.ang	30			Język angielski
2045	SP-PK17	1	exc	Jęz.ang	30			Język angielski
2045	SP-PK15	1	exc	Jęz.ang	30			Język angielski
2045	SP-PK16	1	exc	Jęz.ang	30			Język angielski
2045	SP-PK18	1	exc	Jęz.ang	30			Język angielski
2178	ND-BW4	1	exc	Bez.pań.oby	18			Bezpieczeństwo państwa i obywateli
2990	SD-BW4	3	exc	Inf.kry	45			Infrastruktura krytyczna
2990	SD-BW3	3	exc	Inf.kry	45			Infrastruktura krytyczna
3378	SD-BW4	1	exc	Psy.spo	15			Psychologia społeczna
3378	SD-BW3	1	exc	Psy.spo	15			Psychologia społeczna
3386	SD-BW4	1	exc	Bez.pań.oby	30			Bezpieczeństwo państwa i obywateli
3386	SD-BW3	1	exc	Bez.pań.oby	30			Bezpieczeństwo państwa i obywateli
3389	SD-BW4	1	exc	His.bez.wew	15			Historia bezpieczeństwa wewnętrznego w Polsce
3389	SD-BW3	1	exc	His.bez.wew	15			Historia bezpieczeństwa wewnętrznego w Polsce
3553	SD-BW4	3	exc	Sił.zbr.bez	30			Siły Zbrojne w bezpieczeństwie wewnętrznym
3553	SD-BW3	3	exc	Sił.zbr.bez	30			Siły Zbrojne w bezpieczeństwie wewnętrznym
3557	SD-BW3	3	exc	Wsp.mię.bez	20			Współpraca międzynarodowa w bezpieczeństwie wewnętrznym
3659	SP-CBW5	3	exc	Ins.źró.pra	30			Instytucje i źródła prawa UE
3999	SP-CBW6	1	exc	Org.fun.adm.rzą	15			Organizacja i funkcjonowanie administracji rządowej
4004	SP-CBW6	1	exc	Pod.teo.bez	15			Podstawy teorii bezpieczeństwa
4004	SP-CBW5	1	exc	Pod.teo.bez	15			Podstawy teorii bezpieczeństwa
4034	SD-BW3	3	exc	roz.pro.sta	20			Rozpoznawanie i prognozowanie stanów zagrożenia
4034	SD-BW4	3	exc	roz.pro.sta	20			Rozpoznawanie i prognozowanie stanów zagrożenia
4035	SD-BW3	3	exc	Zas.log.bez	30			Zasilanie logistyczne w bezpieczeństwie
4035	SD-BW4	3	exc	Zas.log.bez	30			Zasilanie logistyczne w bezpieczeństwie
4091	SP-PK15	6	exc	Jęz.ang	30			Język angielski
4091	SP-PK17	6	exc	Jęz.ang	30			Język angielski
4091	SP-PK16	6	exc	Jęz.ang	30			Język angielski
4091	SP-PK18	6	exc	Jęz.ang	30			Język angielski
4105	SP-PK17	3	exc	Jęz.ang	30			Język angielski
4105	SP-PK18	3	exc	Jęz.ang	30			Język angielski
4105	SP-PK16	3	exc	Jęz.ang	30			Język angielski
4105	SP-PK15	3	exc	Jęz.ang	30			Język angielski
4129	ND-BW4	2	exc	Jęz.ang	18			Język angielski
4133	ND-BW4	2	exc	Pra.asp.bez	9			Prawno - funkcjonalne aspekty bezpieczeństwa wewnętrznego
4142	SP-PK18	4	exc	Psy.soc	15			Psychologia i socjologia
4142	SP-PK16	4	exc	Psy.soc	15			Psychologia i socjologia
4142	SP-PK15	4	exc	Psy.soc	15			Psychologia i socjologia
4142	SP-PK17	4	exc	Psy.soc	15			Psychologia i socjologia
4145	SP-PK16	1	exc	Wyc.fiz	30			Wychowanie fizyczne
4145	SP-PK17	1	exc	Wyc.fiz	30			Wychowanie fizyczne
4145	SP-PK15	1	exc	Wyc.fiz	30			Wychowanie fizyczne
4145	SP-PK18	1	exc	Wyc.fiz	30			Wychowanie fizyczne
4146	SP-PK18	2	exc	Wyc.fiz	30			Wychowanie fizyczne
4146	SP-PK16	2	exc	Wyc.fiz	30			Wychowanie fizyczne
4146	SP-PK15	2	exc	Wyc.fiz	30			Wychowanie fizyczne
4146	SP-PK17	2	exc	Wyc.fiz	30			Wychowanie fizyczne
4147	SP-PK15	3	exc	Prz.kon	30			Przygotowanie kondycyjne
4147	SP-PK16	3	exc	Prz.kon	30			Przygotowanie kondycyjne
4161	SP-PK18	2	lab	Fizyka	30			Fizyka
4161	SP-PK15	2	lab	Fizyka	30			Fizyka
4161	SP-PK16	2	lab	Fizyka	30			Fizyka
4161	SP-PK17	2	lab	Fizyka	30			Fizyka
4166	SP-PK17	2	lab	Tec.inf	30			Technologie informacyjne
4166	SP-PK16	2	lab	Tec.inf	30			Technologie informacyjne
4166	SP-PK18	2	lab	Tec.inf	30			Technologie informacyjne
4166	SP-PK15	2	lab	Tec.inf	30			Technologie informacyjne
4171	SP-PK17	3	lab	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
4171	SP-PK16	3	lab	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
4171	SP-PK18	3	lab	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
4171	SP-PK15	3	lab	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
4176	SP-PK17	3	lab	Hyd.prz.zao	30			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4176	SP-PK15	3	lab	Hyd.prz.zao	30			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4176	SP-PK18	3	lab	Hyd.prz.zao	30			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4176	SP-PK16	3	lab	Hyd.prz.zao	30			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4157	SP-PK17	1	exc	Matematyka	45			Matematyka
4157	SP-PK16	1	exc	Matematyka	45			Matematyka
4158	SP-PK17	2	exc	Matematyka	45			Matematyka
4158	SP-PK16	2	exc	Matematyka	45			Matematyka
4158	SP-PK15	2	exc	Matematyka	45			Matematyka
4158	SP-PK18	2	exc	Matematyka	45			Matematyka
4160	SP-PK15	1	exc	Fizyka	30			Fizyka
4160	SP-PK17	1	exc	Fizyka	30			Fizyka
4160	SP-PK18	1	exc	Fizyka	30			Fizyka
4160	SP-PK16	1	exc	Fizyka	30			Fizyka
4163	SP-PK17	1	exc	Chemia	30			Chemia
4163	SP-PK18	1	exc	Chemia	30			Chemia
4163	SP-PK16	1	exc	Chemia	30			Chemia
4163	SP-PK15	1	exc	Chemia	30			Chemia
4164	SP-PK15	2	exc	Chemia	30			Chemia
4164	SP-PK17	2	exc	Chemia	30			Chemia
4164	SP-PK16	2	exc	Chemia	30			Chemia
4164	SP-PK18	2	exc	Chemia	30			Chemia
4167	SP-PK17	1	exc	Rys.tec	30			Rysunek techniczny
4167	SP-PK15	1	exc	Rys.tec	30			Rysunek techniczny
4167	SP-PK18	1	exc	Rys.tec	30			Rysunek techniczny
4167	SP-PK16	1	exc	Rys.tec	30			Rysunek techniczny
4170	SP-PK18	2	exc	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
4170	SP-PK17	2	exc	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
4170	SP-PK15	2	exc	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
4170	SP-PK16	2	exc	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
4175	SP-PK17	2	exc	Hyd.prz.zao	30			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4175	SP-PK18	2	exc	Hyd.prz.zao	30			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4175	SP-PK16	2	exc	Hyd.prz.zao	30			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4175	SP-PK15	2	exc	Hyd.prz.zao	30			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4168	SP-PK15	2	exc	Gra.inż	30			Grafika inżynierska
4168	SP-PK16	2	exc	Gra.inż	30			Grafika inżynierska
4168	SP-PK18	2	exc	Gra.inż	30			Grafika inżynierska
4168	SP-PK17	2	exc	Gra.inż	30			Grafika inżynierska
4182	SP-PK15	3	lab	Ele.ele.poz	30			Elektrotechnika i elektronika w pożarnictwie
4182	SP-PK16	3	lab	Ele.ele.poz	30			Elektrotechnika i elektronika w pożarnictwie
4182	SP-PK17	3	lab	Ele.ele.poz	30			Elektrotechnika i elektronika w pożarnictwie
4182	SP-PK18	3	lab	Ele.ele.poz	30			Elektrotechnika i elektronika w pożarnictwie
4186	SP-PK16	5	lab	Fiz.spa	30			Fizykochemia spalania
4186	SP-PK17	5	lab	Fiz.spa	30			Fizykochemia spalania
4186	SP-PK18	5	lab	Fiz.spa	30			Fizykochemia spalania
4186	SP-PK15	5	lab	Fiz.spa	30			Fizykochemia spalania
4190	SP-PK18	4	lab	Tec.sys.zab	30			Techniczne systemy zabezpieczeń
4190	SP-PK16	4	lab	Tec.sys.zab	30			Techniczne systemy zabezpieczeń
4190	SP-PK15	4	lab	Tec.sys.zab	30			Techniczne systemy zabezpieczeń
4190	SP-PK17	4	lab	Tec.sys.zab	30			Techniczne systemy zabezpieczeń
4193	SP-PK18	4	lab	Śro.gaś.neu	30			Środki gaśnicze i neutralizujące
4193	SP-PK16	4	lab	Śro.gaś.neu	30			Środki gaśnicze i neutralizujące
4193	SP-PK15	4	lab	Śro.gaś.neu	30			Środki gaśnicze i neutralizujące
4193	SP-PK17	4	lab	Śro.gaś.neu	30			Środki gaśnicze i neutralizujące
4185	SP-PK17	4	exc	Fiz.spa	30			Fizykochemia spalania
4185	SP-PK16	4	exc	Fiz.spa	30			Fizykochemia spalania
4185	SP-PK18	4	exc	Fiz.spa	30			Fizykochemia spalania
4185	SP-PK15	4	exc	Fiz.spa	30			Fizykochemia spalania
4188	SP-PK16	4	exc	Pod.kon.mas	15			Podstawy konstrukcji maszyn
4188	SP-PK17	4	exc	Pod.kon.mas	15			Podstawy konstrukcji maszyn
4188	SP-PK18	4	exc	Pod.kon.mas	15			Podstawy konstrukcji maszyn
4188	SP-PK15	4	exc	Pod.kon.mas	15			Podstawy konstrukcji maszyn
4196	SP-PK15	6	exc	Sam.poj.rat	15			Samochody i pojazdy ratownicze
4196	SP-PK18	6	exc	Sam.poj.rat	15			Samochody i pojazdy ratownicze
4196	SP-PK16	6	exc	Sam.poj.rat	15			Samochody i pojazdy ratownicze
4196	SP-PK17	6	exc	Sam.poj.rat	15			Samochody i pojazdy ratownicze
4198	SP-PK15	5	exc	Spr.rat	30			Sprzęt ratowniczo - gaśniczy
4198	SP-PK16	5	exc	Spr.rat	30			Sprzęt ratowniczo - gaśniczy
4198	SP-PK17	5	exc	Spr.rat	30			Sprzęt ratowniczo - gaśniczy
4198	SP-PK18	5	exc	Spr.rat	30			Sprzęt ratowniczo - gaśniczy
4180	SP-PK15	3	exc	Pod.bud	30			Podstawy budownictwa
4180	SP-PK17	3	exc	Pod.bud	30			Podstawy budownictwa
4180	SP-PK16	3	exc	Pod.bud	30			Podstawy budownictwa
4180	SP-PK18	3	exc	Pod.bud	30			Podstawy budownictwa
4191	SP-PK17	5	exc	Tec.sys.zab	30			Techniczne systemy zabezpieczeń
4191	SP-PK16	5	exc	Tec.sys.zab	30			Techniczne systemy zabezpieczeń
4191	SP-PK15	5	exc	Tec.sys.zab	30			Techniczne systemy zabezpieczeń
4191	SP-PK18	5	exc	Tec.sys.zab	30			Techniczne systemy zabezpieczeń
4199	SP-PK17	6	lab	Spr.rat	30			Sprzęt ratowniczo - gaśniczy
4199	SP-PK15	6	lab	Spr.rat	30			Sprzęt ratowniczo - gaśniczy
4199	SP-PK18	6	lab	Spr.rat	30			Sprzęt ratowniczo - gaśniczy
4199	SP-PK16	6	lab	Spr.rat	30			Sprzęt ratowniczo - gaśniczy
4203	SP-PK17	5	lab	Rat.che.i.eko	30			Ratownictwo chemiczne i ekologiczne
4203	SP-PK16	5	lab	Rat.che.i.eko	30			Ratownictwo chemiczne i ekologiczne
4203	SP-PK15	5	lab	Rat.che.i.eko	30			Ratownictwo chemiczne i ekologiczne
4203	SP-PK18	5	lab	Rat.che.i.eko	30			Ratownictwo chemiczne i ekologiczne
4206	SP-PK15	5	lab	Med.kat	30			Medycyna katastrof
4206	SP-PK16	5	lab	Med.kat	30			Medycyna katastrof
4206	SP-PK18	5	lab	Med.kat	30			Medycyna katastrof
4206	SP-PK17	5	lab	Med.kat	30			Medycyna katastrof
4213	SP-PK18	6	lab	Org.łąc.ala	15			Organizacja łączności i alarmowanie
4213	SP-PK16	6	lab	Org.łąc.ala	15			Organizacja łączności i alarmowanie
4213	SP-PK17	6	lab	Org.łąc.ala	15			Organizacja łączności i alarmowanie
4213	SP-PK15	6	lab	Org.łąc.ala	15			Organizacja łączności i alarmowanie
4216	SP-PK18	6	lab	Bez.dzi.rat	30			Bezpieczeństwo działań ratowniczych
4216	SP-PK17	6	lab	Bez.dzi.rat	30			Bezpieczeństwo działań ratowniczych
4216	SP-PK15	6	lab	Bez.dzi.rat	30			Bezpieczeństwo działań ratowniczych
4216	SP-PK16	6	lab	Bez.dzi.rat	30			Bezpieczeństwo działań ratowniczych
4204	SP-PK18	6	exc	Rat.che.i.eko	30			Ratownictwo chemiczne i ekologiczne
4204	SP-PK15	6	exc	Rat.che.i.eko	30			Ratownictwo chemiczne i ekologiczne
4204	SP-PK16	6	exc	Rat.che.i.eko	30			Ratownictwo chemiczne i ekologiczne
4204	SP-PK17	6	exc	Rat.che.i.eko	30			Ratownictwo chemiczne i ekologiczne
4208	SP-PK15	6	exc	Rat.tec	30			Ratownictwo techniczne
4208	SP-PK17	6	exc	Rat.tec	30			Ratownictwo techniczne
4208	SP-PK18	6	exc	Rat.tec	30			Ratownictwo techniczne
4208	SP-PK16	6	exc	Rat.tec	30			Ratownictwo techniczne
4210	SP-PK18	6	exc	Ewa.int	30			Ewakuacja interwencyjna
4210	SP-PK17	6	exc	Ewa.int	30			Ewakuacja interwencyjna
4210	SP-PK15	6	exc	Ewa.int	30			Ewakuacja interwencyjna
4210	SP-PK16	6	exc	Ewa.int	30			Ewakuacja interwencyjna
4212	SP-PK16	6	exc	Org.łąc.ala	15			Organizacja łączności i alarmowanie
4212	SP-PK17	6	exc	Org.łąc.ala	15			Organizacja łączności i alarmowanie
4212	SP-PK15	6	exc	Org.łąc.ala	15			Organizacja łączności i alarmowanie
4212	SP-PK18	6	exc	Org.łąc.ala	15			Organizacja łączności i alarmowanie
4215	SP-PK17	5	exc	Bez.dzi.rat	30			Bezpieczeństwo działań ratowniczych
4215	SP-PK15	5	exc	Bez.dzi.rat	30			Bezpieczeństwo działań ratowniczych
4215	SP-PK16	5	exc	Bez.dzi.rat	30			Bezpieczeństwo działań ratowniczych
4215	SP-PK18	5	exc	Bez.dzi.rat	30			Bezpieczeństwo działań ratowniczych
4218	SP-PK17	6	exc	Tak.dow	30			Taktyka i dowodzenie
4218	SP-PK18	6	exc	Tak.dow	30			Taktyka i dowodzenie
4218	SP-PK15	6	exc	Tak.dow	30			Taktyka i dowodzenie
4218	SP-PK16	6	exc	Tak.dow	30			Taktyka i dowodzenie
4201	SP-PK16	6	exc	Dzi.gas	30			Działania gaśnicze
4201	SP-PK15	6	exc	Dzi.gas	30			Działania gaśnicze
4201	SP-PK17	6	exc	Dzi.gas	30			Działania gaśnicze
4201	SP-PK18	6	exc	Dzi.gas	30			Działania gaśnicze
4219	SP-PK18	6	exc	Ćwi.pol	80			Ćwiczenia poligonowe
4219	SP-PK17	6	exc	Ćwi.pol	80			Ćwiczenia poligonowe
4226	SP-PK16	7	lab	Met.bad.prz	15			Metodyka badań przyczyn pożarów
4226	SP-PK15	7	lab	Met.bad.prz	15			Metodyka badań przyczyn pożarów
4226	SP-PK18	7	lab	Met.bad.prz	15			Metodyka badań przyczyn pożarów
4226	SP-PK17	7	lab	Met.bad.prz	15			Metodyka badań przyczyn pożarów
4237	SP-PK15	8	lab	Sys.wsp.dzi	28			Systemy wspomagania działań ratowniczych
4237	SP-PK16	8	lab	Sys.wsp.dzi	28			Systemy wspomagania działań ratowniczych
4237	SP-PK18	8	lab	Sys.wsp.dzi	28			Systemy wspomagania działań ratowniczych
4225	SP-PK15	7	exc	Met.bad.prz	30			Metodyka badań przyczyn pożarów
4225	SP-PK18	7	exc	Met.bad.prz	30			Metodyka badań przyczyn pożarów
4225	SP-PK17	7	exc	Met.bad.prz	30			Metodyka badań przyczyn pożarów
4225	SP-PK16	7	exc	Met.bad.prz	30			Metodyka badań przyczyn pożarów
4228	SP-PK16	7	exc	Pla.ope	30			Planowanie operacyjne
4228	SP-PK18	7	exc	Pla.ope	30			Planowanie operacyjne
4228	SP-PK17	7	exc	Pla.ope	30			Planowanie operacyjne
4228	SP-PK15	7	exc	Pla.ope	30			Planowanie operacyjne
4230	SP-PK17	7	exc	Sem.dyp	15			Seminarium dyplomowe
4230	SP-PK16	7	exc	Sem.dyp	15			Seminarium dyplomowe
4230	SP-PK15	7	exc	Sem.dyp	15			Seminarium dyplomowe
4230	SP-PK18	7	exc	Sem.dyp	15			Seminarium dyplomowe
4231	SP-PK18	8	exc	Sem.dyp	14			Seminarium dyplomowe
4231	SP-PK17	8	exc	Sem.dyp	14			Seminarium dyplomowe
4231	SP-PK16	8	exc	Sem.dyp	14			Seminarium dyplomowe
4231	SP-PK15	8	exc	Sem.dyp	14			Seminarium dyplomowe
4219	SP-PK15	6	exc	Ćwi.pol	80			Ćwiczenia poligonowe
4219	SP-PK16	6	exc	Ćwi.pol	80			Ćwiczenia poligonowe
4221	SP-PK16	7	exc	Bez.poż.budy	30			Bezpieczeństwo pożarowe budynków
4221	SP-PK17	7	exc	Bez.poż.budy	30			Bezpieczeństwo pożarowe budynków
4221	SP-PK18	7	exc	Bez.poż.budy	30			Bezpieczeństwo pożarowe budynków
4221	SP-PK15	7	exc	Bez.poż.budy	30			Bezpieczeństwo pożarowe budynków
4223	SP-PK16	7	exc	Ana.ryz.pro	30			Analiza ryzyka w procesach przemysłowych
4223	SP-PK15	7	exc	Ana.ryz.pro	30			Analiza ryzyka w procesach przemysłowych
4223	SP-PK17	7	exc	Ana.ryz.pro	30			Analiza ryzyka w procesach przemysłowych
4223	SP-PK18	7	exc	Ana.ryz.pro	30			Analiza ryzyka w procesach przemysłowych
4229	SP-PK16	7	exc	Str.rea.rat	15			Strategiczne reagowanie ratownicze
4229	SP-PK15	7	exc	Str.rea.rat	15			Strategiczne reagowanie ratownicze
4229	SP-PK17	7	exc	Str.rea.rat	15			Strategiczne reagowanie ratownicze
4229	SP-PK18	7	exc	Str.rea.rat	15			Strategiczne reagowanie ratownicze
4232	SP-PK18	7	exc	Org.kie.dzi	30			Organizacja i kierowanie działaniami ratowniczymi (ćw. terenowe)
4237	SP-PK17	8	lab	Sys.wsp.dzi	28			Systemy wspomagania działań ratowniczych
4284	ND-P35	2	lab	Mod.poż	18			Modelowanie pożarów
4284	ND-P34	2	lab	Mod.poż	18			Modelowanie pożarów
4287	ND-P34	1	lab	Wsp.pro.inż	9			Współczesne problemy inżynierii środowiska
4287	ND-P35	1	lab	Wsp.pro.inż	9			Współczesne problemy inżynierii środowiska
4239	SP-PK17	3	exc	Słu.wew.cer	15			Służba wewnętrzna i ceremoniał pożarniczy
4239	SP-PK15	3	exc	Słu.wew.cer	15			Służba wewnętrzna i ceremoniał pożarniczy
4239	SP-PK18	3	exc	Słu.wew.cer	15			Służba wewnętrzna i ceremoniał pożarniczy
4239	SP-PK16	3	exc	Słu.wew.cer	15			Służba wewnętrzna i ceremoniał pożarniczy
4240	SP-PK16	4	exc	Słu.wew.cer	15			Służba wewnętrzna i ceremoniał pożarniczy
4240	SP-PK18	4	exc	Słu.wew.cer	15			Służba wewnętrzna i ceremoniał pożarniczy
4240	SP-PK15	4	exc	Słu.wew.cer	15			Służba wewnętrzna i ceremoniał pożarniczy
4240	SP-PK17	4	exc	Słu.wew.cer	15			Służba wewnętrzna i ceremoniał pożarniczy
4241	SP-PK17	5	exc	Słu.wew.cer	15			Służba wewnętrzna i ceremoniał pożarniczy
4241	SP-PK16	5	exc	Słu.wew.cer	15			Służba wewnętrzna i ceremoniał pożarniczy
4241	SP-PK18	5	exc	Słu.wew.cer	15			Służba wewnętrzna i ceremoniał pożarniczy
4241	SP-PK15	5	exc	Słu.wew.cer	15			Służba wewnętrzna i ceremoniał pożarniczy
4242	SP-PK15	6	exc	Słu.wew.cer	15			Służba wewnętrzna i ceremoniał pożarniczy
4242	SP-PK18	6	exc	Słu.wew.cer	15			Służba wewnętrzna i ceremoniał pożarniczy
4242	SP-PK16	6	exc	Słu.wew.cer	15			Służba wewnętrzna i ceremoniał pożarniczy
4304	SP-PC15	2	lab	Fizyka	30			Fizyka
4304	SP-PC18	2	lab	Fizyka	30			Fizyka
4304	SP-PC16	2	lab	Fizyka	30			Fizyka
4304	SP-PC17	2	lab	Fizyka	30			Fizyka
4306	SP-PC17	2	lab	Tec.inf	30			Technologie informacyjne
4306	SP-PC16	2	lab	Tec.inf	30			Technologie informacyjne
4306	SP-PC18	2	lab	Tec.inf	30			Technologie informacyjne
4306	SP-PC15	2	lab	Tec.inf	30			Technologie informacyjne
4313	SP-PC18	3	lab	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
4313	SP-PC17	3	lab	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
4313	SP-PC15	3	lab	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
4313	SP-PC16	3	lab	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
4294	SP-PC15	4	exc	Psy.soc	15			Psychologia i socjologia
4297	SP-PC15	1	exc	Wyc.fiz	30			Wychowanie fizyczne
4297	SP-PC18	1	exc	Wyc.fiz	30			Wychowanie fizyczne
4297	SP-PC17	1	exc	Wyc.fiz	30			Wychowanie fizyczne
4297	SP-PC16	1	exc	Wyc.fiz	30			Wychowanie fizyczne
4298	SP-PC17	2	exc	Wyc.fiz	30			Wychowanie fizyczne
4298	SP-PC16	2	exc	Wyc.fiz	30			Wychowanie fizyczne
4298	SP-PC15	2	exc	Wyc.fiz	30			Wychowanie fizyczne
4298	SP-PC18	2	exc	Wyc.fiz	30			Wychowanie fizyczne
4300	SP-PC16	1	exc	Matematyka	45			Matematyka
4300	SP-PC18	1	exc	Matematyka	45			Matematyka
4300	SP-PC15	1	exc	Matematyka	45			Matematyka
4300	SP-PC17	1	exc	Matematyka	45			Matematyka
4301	SP-PC17	2	exc	Matematyka	45			Matematyka
4301	SP-PC18	2	exc	Matematyka	45			Matematyka
4301	SP-PC16	2	exc	Matematyka	45			Matematyka
4301	SP-PC15	2	exc	Matematyka	45			Matematyka
4303	SP-PC18	1	exc	Fizyka	30			Fizyka
4303	SP-PC17	1	exc	Fizyka	30			Fizyka
4303	SP-PC15	1	exc	Fizyka	30			Fizyka
4303	SP-PC16	1	exc	Fizyka	30			Fizyka
4307	SP-PC18	1	exc	Rys.tec	30			Rysunek techniczny
4307	SP-PC16	1	exc	Rys.tec	30			Rysunek techniczny
4307	SP-PC15	1	exc	Rys.tec	30			Rysunek techniczny
4307	SP-PC17	1	exc	Rys.tec	30			Rysunek techniczny
4311	SP-PC15	2	exc	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
4311	SP-PC16	2	exc	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
4311	SP-PC17	2	exc	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
4311	SP-PC18	2	exc	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
4312	SP-PC15	3	exc	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
4312	SP-PC17	3	exc	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
4312	SP-PC18	3	exc	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
4312	SP-PC16	3	exc	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
4308	SP-PC15	2	exc	Gra.inż	30			Grafika inżynierska
4308	SP-PC16	2	exc	Gra.inż	30			Grafika inżynierska
4308	SP-PC17	2	exc	Gra.inż	30			Grafika inżynierska
4308	SP-PC18	2	exc	Gra.inż	30			Grafika inżynierska
4309	SP-PC18	3	exc	Gra.inż	30			Grafika inżynierska
4309	SP-PC16	3	exc	Gra.inż	30			Grafika inżynierska
4309	SP-PC17	3	exc	Gra.inż	30			Grafika inżynierska
4309	SP-PC15	3	exc	Gra.inż	30			Grafika inżynierska
4318	SP-PC15	3	lab	Hyd.prz.zao	30			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4318	SP-PC17	3	lab	Hyd.prz.zao	30			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4318	SP-PC16	3	lab	Hyd.prz.zao	30			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4318	SP-PC18	3	lab	Hyd.prz.zao	30			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4324	SP-PC17	3	lab	Ele.ele.poz	30			Elektrotechnika i elektronika w pożarnictwie
4324	SP-PC16	3	lab	Ele.ele.poz	30			Elektrotechnika i elektronika w pożarnictwie
4324	SP-PC15	3	lab	Ele.ele.poz	30			Elektrotechnika i elektronika w pożarnictwie
4324	SP-PC18	3	lab	Ele.ele.poz	30			Elektrotechnika i elektronika w pożarnictwie
4326	SP-PC17	4	lab	Teo.poż	15			Teoria pożarów
4326	SP-PC18	4	lab	Teo.poż	15			Teoria pożarów
4326	SP-PC15	4	lab	Teo.poż	15			Teoria pożarów
4326	SP-PC16	4	lab	Teo.poż	15			Teoria pożarów
4332	SP-PC18	4	lab	Tec.sys.zab	30			Techniczne systemy zabezpieczeń
4332	SP-PC16	4	lab	Tec.sys.zab	30			Techniczne systemy zabezpieczeń
4332	SP-PC17	4	lab	Tec.sys.zab	30			Techniczne systemy zabezpieczeń
4332	SP-PC15	4	lab	Tec.sys.zab	30			Techniczne systemy zabezpieczeń
4334	SP-PC18	4	lab	Śro.gaś.neu	30			Środki gaśnicze i neutralizujące
4334	SP-PC16	4	lab	Śro.gaś.neu	30			Środki gaśnicze i neutralizujące
4334	SP-PC17	4	lab	Śro.gaś.neu	30			Środki gaśnicze i neutralizujące
4334	SP-PC15	4	lab	Śro.gaś.neu	30			Środki gaśnicze i neutralizujące
4317	SP-PC16	2	exc	Hyd.prz.zao	30			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4317	SP-PC17	2	exc	Hyd.prz.zao	30			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4317	SP-PC15	2	exc	Hyd.prz.zao	30			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4317	SP-PC18	2	exc	Hyd.prz.zao	30			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4328	SP-PC17	4	exc	Fiz.spa	30			Fizykochemia spalania
4328	SP-PC15	4	exc	Fiz.spa	30			Fizykochemia spalania
4328	SP-PC18	4	exc	Fiz.spa	30			Fizykochemia spalania
4328	SP-PC16	4	exc	Fiz.spa	30			Fizykochemia spalania
4330	SP-PC16	4	exc	Pod.kon.mas	15			Podstawy konstrukcji maszyn
4330	SP-PC15	4	exc	Pod.kon.mas	15			Podstawy konstrukcji maszyn
4330	SP-PC18	4	exc	Pod.kon.mas	15			Podstawy konstrukcji maszyn
4330	SP-PC17	4	exc	Pod.kon.mas	15			Podstawy konstrukcji maszyn
4336	SP-PC15	5	exc	Jęz.ang	30			Język angielski
4336	SP-PC18	5	exc	Jęz.ang	30			Język angielski
4322	SP-PC18	3	exc	Pod.bud	30			Podstawy budownictwa
4322	SP-PC16	3	exc	Pod.bud	30			Podstawy budownictwa
4322	SP-PC17	3	exc	Pod.bud	30			Podstawy budownictwa
4322	SP-PC15	3	exc	Pod.bud	30			Podstawy budownictwa
4340	SP-PC16	5	lab	Fiz.spa	30			Fizykochemia spalania
4340	SP-PC18	5	lab	Fiz.spa	30			Fizykochemia spalania
4340	SP-PC17	5	lab	Fiz.spa	30			Fizykochemia spalania
4340	SP-PC15	5	lab	Fiz.spa	30			Fizykochemia spalania
4346	SP-PC16	6	lab	Spr.rat	30			Sprzęt ratowniczo - gaśniczy
4346	SP-PC18	6	lab	Spr.rat	30			Sprzęt ratowniczo - gaśniczy
4346	SP-PC17	6	lab	Spr.rat	30			Sprzęt ratowniczo - gaśniczy
4346	SP-PC15	6	lab	Spr.rat	30			Sprzęt ratowniczo - gaśniczy
4362	SP-PC15	5	lab	Rat.che.i.eko	30			Ratownictwo chemiczne i ekologiczne
4362	SP-PC16	5	lab	Rat.che.i.eko	30			Ratownictwo chemiczne i ekologiczne
4362	SP-PC18	5	lab	Rat.che.i.eko	30			Ratownictwo chemiczne i ekologiczne
4362	SP-PC17	5	lab	Rat.che.i.eko	30			Ratownictwo chemiczne i ekologiczne
4365	SP-PC16	5	lab	Med.kat	30			Medycyna katastrof
4365	SP-PC15	5	lab	Med.kat	30			Medycyna katastrof
4365	SP-PC18	5	lab	Med.kat	30			Medycyna katastrof
4365	SP-PC17	5	lab	Med.kat	30			Medycyna katastrof
4336	SP-PC16	5	exc	Jęz.ang	30			Język angielski
4336	SP-PC17	5	exc	Jęz.ang	30			Język angielski
4337	SP-PC16	6	exc	Jęz.ang	30			Język angielski
4337	SP-PC17	6	exc	Jęz.ang	30			Język angielski
4337	SP-PC15	6	exc	Jęz.ang	30			Język angielski
4337	SP-PC18	6	exc	Jęz.ang	30			Język angielski
4343	SP-PC17	6	exc	Sam.poj.rat	15			Samochody i pojazdy ratownicze
4343	SP-PC16	6	exc	Sam.poj.rat	15			Samochody i pojazdy ratownicze
4343	SP-PC15	6	exc	Sam.poj.rat	15			Samochody i pojazdy ratownicze
4343	SP-PC18	6	exc	Sam.poj.rat	15			Samochody i pojazdy ratownicze
4345	SP-PC17	5	exc	Spr.rat	30			Sprzęt ratowniczo - gaśniczy
4345	SP-PC16	5	exc	Spr.rat	30			Sprzęt ratowniczo - gaśniczy
4345	SP-PC18	5	exc	Spr.rat	30			Sprzęt ratowniczo - gaśniczy
4345	SP-PC15	5	exc	Spr.rat	30			Sprzęt ratowniczo - gaśniczy
4351	SP-PC15	6	exc	Rat.che.i.eko	30			Ratownictwo chemiczne i ekologiczne
4351	SP-PC18	6	exc	Rat.che.i.eko	30			Ratownictwo chemiczne i ekologiczne
4351	SP-PC17	6	exc	Rat.che.i.eko	30			Ratownictwo chemiczne i ekologiczne
4351	SP-PC16	6	exc	Rat.che.i.eko	30			Ratownictwo chemiczne i ekologiczne
4357	SP-PC16	8	exc	Sem.dyp	14			Seminarium dyplomowe
4357	SP-PC17	8	exc	Sem.dyp	14			Seminarium dyplomowe
4357	SP-PC15	8	exc	Sem.dyp	14			Seminarium dyplomowe
4357	SP-PC18	8	exc	Sem.dyp	14			Seminarium dyplomowe
4358	SP-PC17	7	exc	Sem.dyp	15			Seminarium dyplomowe
4358	SP-PC16	7	exc	Sem.dyp	15			Seminarium dyplomowe
4358	SP-PC18	7	exc	Sem.dyp	15			Seminarium dyplomowe
4358	SP-PC15	7	exc	Sem.dyp	15			Seminarium dyplomowe
4341	SP-PC18	5	exc	Tec.sys.zab	30			Techniczne systemy zabezpieczeń
4341	SP-PC15	5	exc	Tec.sys.zab	30			Techniczne systemy zabezpieczeń
4341	SP-PC17	5	exc	Tec.sys.zab	30			Techniczne systemy zabezpieczeń
4341	SP-PC16	5	exc	Tec.sys.zab	30			Techniczne systemy zabezpieczeń
4348	SP-PC17	6	exc	Dzi.gas	30			Działania gaśnicze
4348	SP-PC16	6	exc	Dzi.gas	30			Działania gaśnicze
4348	SP-PC18	6	exc	Dzi.gas	30			Działania gaśnicze
4348	SP-PC15	6	exc	Dzi.gas	30			Działania gaśnicze
4363	SP-PC18	6	-	Rat.che.i.eko	0			Ratownictwo chemiczne i ekologiczne
4363	SP-PC15	6	-	Rat.che.i.eko	0			Ratownictwo chemiczne i ekologiczne
4363	SP-PC17	6	-	Rat.che.i.eko	0			Ratownictwo chemiczne i ekologiczne
4363	SP-PC16	6	-	Rat.che.i.eko	0			Ratownictwo chemiczne i ekologiczne
4372	SP-PC16	6	lab	Org.łąc.ala	15			Organizacja łączności i alarmowanie
4372	SP-PC15	6	lab	Org.łąc.ala	15			Organizacja łączności i alarmowanie
4372	SP-PC18	6	lab	Org.łąc.ala	15			Organizacja łączności i alarmowanie
4372	SP-PC17	6	lab	Org.łąc.ala	15			Organizacja łączności i alarmowanie
4375	SP-PC16	6	lab	Bez.dzi.rat	30			Bezpieczeństwo działań ratowniczych
4375	SP-PC15	6	lab	Bez.dzi.rat	30			Bezpieczeństwo działań ratowniczych
4375	SP-PC18	6	lab	Bez.dzi.rat	30			Bezpieczeństwo działań ratowniczych
4375	SP-PC17	6	lab	Bez.dzi.rat	30			Bezpieczeństwo działań ratowniczych
4379	SP-PC18	5	lab	Wen.poz	15			Wentylacja pożarowa
4379	SP-PC16	5	lab	Wen.poz	15			Wentylacja pożarowa
4379	SP-PC17	5	lab	Wen.poz	15			Wentylacja pożarowa
4379	SP-PC15	5	lab	Wen.poz	15			Wentylacja pożarowa
4376	SP-PC15	6	lec	Tak.dow	30			Taktyka i dowodzenie
4367	SP-PC15	6	exc	Rat.tec	30			Ratownictwo techniczne
4367	SP-PC16	6	exc	Rat.tec	30			Ratownictwo techniczne
4367	SP-PC17	6	exc	Rat.tec	30			Ratownictwo techniczne
4367	SP-PC18	6	exc	Rat.tec	30			Ratownictwo techniczne
4369	SP-PC18	6	exc	Ewa.int	30			Ewakuacja interwencyjna
4369	SP-PC15	6	exc	Ewa.int	30			Ewakuacja interwencyjna
4369	SP-PC17	6	exc	Ewa.int	30			Ewakuacja interwencyjna
4369	SP-PC16	6	exc	Ewa.int	30			Ewakuacja interwencyjna
4371	SP-PC17	6	exc	Org.łąc.ala	15			Organizacja łączności i alarmowanie
4371	SP-PC15	6	exc	Org.łąc.ala	15			Organizacja łączności i alarmowanie
4371	SP-PC16	6	exc	Org.łąc.ala	15			Organizacja łączności i alarmowanie
4371	SP-PC18	6	exc	Org.łąc.ala	15			Organizacja łączności i alarmowanie
4374	SP-PC17	5	exc	Bez.dzi.rat	30			Bezpieczeństwo działań ratowniczych
4374	SP-PC18	5	exc	Bez.dzi.rat	30			Bezpieczeństwo działań ratowniczych
4374	SP-PC16	5	exc	Bez.dzi.rat	30			Bezpieczeństwo działań ratowniczych
4374	SP-PC15	5	exc	Bez.dzi.rat	30			Bezpieczeństwo działań ratowniczych
4377	SP-PC18	6	exc	Tak.dow	30			Taktyka i dowodzenie
4377	SP-PC16	6	exc	Tak.dow	30			Taktyka i dowodzenie
4377	SP-PC15	6	exc	Tak.dow	30			Taktyka i dowodzenie
4377	SP-PC17	6	exc	Tak.dow	30			Taktyka i dowodzenie
4382	SP-PC17	7	exc	Zab.pro.tec	30			Zabezpieczenia w procesach technologicznych
4382	SP-PC16	7	exc	Zab.pro.tec	30			Zabezpieczenia w procesach technologicznych
4382	SP-PC15	7	exc	Zab.pro.tec	30			Zabezpieczenia w procesach technologicznych
4382	SP-PC18	7	exc	Zab.pro.tec	30			Zabezpieczenia w procesach technologicznych
4380	SP-PC18	6	exc	Wen.poz	30			Wentylacja pożarowa
4380	SP-PC16	6	exc	Wen.poz	30			Wentylacja pożarowa
4380	SP-PC17	6	exc	Wen.poz	30			Wentylacja pożarowa
4380	SP-PC15	6	exc	Wen.poz	30			Wentylacja pożarowa
4384	SP-PC15	7	exc	Bez.poż.budy	30			Bezpieczeństwo pożarowe budynków
4384	SP-PC18	7	exc	Bez.poż.budy	30			Bezpieczeństwo pożarowe budynków
4384	SP-PC16	7	exc	Bez.poż.budy	30			Bezpieczeństwo pożarowe budynków
4384	SP-PC17	7	exc	Bez.poż.budy	30			Bezpieczeństwo pożarowe budynków
4386	SP-PC16	7	exc	Ana.ryz.pro	30			Analiza ryzyka w procesach przemysłowych
4386	SP-PC18	7	exc	Ana.ryz.pro	30			Analiza ryzyka w procesach przemysłowych
4389	SP-PC16	7	lab	Met.bad.prz	15			Metodyka badań przyczyn pożarów
4389	SP-PC17	7	lab	Met.bad.prz	15			Metodyka badań przyczyn pożarów
4389	SP-PC18	7	lab	Met.bad.prz	15			Metodyka badań przyczyn pożarów
4389	SP-PC15	7	lab	Met.bad.prz	15			Metodyka badań przyczyn pożarów
4396	SP-PC16	8	\N	DP	0			Praca dyplomowa
4396	SP-PC18	8	\N	DP	0			Praca dyplomowa
4396	SP-PC17	8	\N	DP	0			Praca dyplomowa
4396	SP-PC15	8	\N	DP	0			Praca dyplomowa
4401	SP-PC15	8	lab	Sys.wsp.dzi	28			Systemy wspomagania działań ratowniczych
4401	SP-PC16	8	lab	Sys.wsp.dzi	28			Systemy wspomagania działań ratowniczych
4401	SP-PC17	8	lab	Sys.wsp.dzi	28			Systemy wspomagania działań ratowniczych
4401	SP-PC18	8	lab	Sys.wsp.dzi	28			Systemy wspomagania działań ratowniczych
4388	SP-PC16	7	exc	Met.bad.prz	30			Metodyka badań przyczyn pożarów
4388	SP-PC18	7	exc	Met.bad.prz	30			Metodyka badań przyczyn pożarów
4388	SP-PC17	7	exc	Met.bad.prz	30			Metodyka badań przyczyn pożarów
4388	SP-PC15	7	exc	Met.bad.prz	30			Metodyka badań przyczyn pożarów
4404	SP-PC18	8	exc	Pro.bie.zab	28			Projektowanie biernych zabezpieczeń przeciwpożarowych
4404	SP-PC15	8	exc	Pro.bie.zab	28			Projektowanie biernych zabezpieczeń przeciwpożarowych
4404	SP-PC17	8	exc	Pro.bie.zab	28			Projektowanie biernych zabezpieczeń przeciwpożarowych
4404	SP-PC16	8	exc	Pro.bie.zab	28			Projektowanie biernych zabezpieczeń przeciwpożarowych
4447	SD-P13	1	exc	Jęz.ang	15			Język angielski
4447	SD-P12	1	exc	Jęz.ang	15			Język angielski
4448	SD-P13	2	exc	Jęz.ang	30			Język angielski
4448	SD-P12	2	exc	Jęz.ang	30			Język angielski
4451	SD-P13	1	exc	Mat.wsp.dec	30			Matematyczne wspomaganie decyzji
4451	SD-P12	1	exc	Mat.wsp.dec	30			Matematyczne wspomaganie decyzji
4452	SD-P13	1	exc	Sta.opi	30			Statystyka opisowa
4452	SD-P12	1	exc	Sta.opi	30			Statystyka opisowa
4386	SP-PC17	7	exc	Ana.ryz.pro	30			Analiza ryzyka w procesach przemysłowych
4386	SP-PC15	7	exc	Ana.ryz.pro	30			Analiza ryzyka w procesach przemysłowych
4391	SP-PC18	7	exc	Bez.poż.las	15			Bezpieczeństwo pożarowe lasów
4391	SP-PC16	7	exc	Bez.poż.las	15			Bezpieczeństwo pożarowe lasów
4391	SP-PC17	7	exc	Bez.poż.las	15			Bezpieczeństwo pożarowe lasów
4391	SP-PC15	7	exc	Bez.poż.las	15			Bezpieczeństwo pożarowe lasów
4398	SP-PC18	7	exc	Awa.prz	30			Awarie przemysłowe
4398	SP-PC17	7	exc	Awa.prz	30			Awarie przemysłowe
4398	SP-PC15	7	exc	Awa.prz	30			Awarie przemysłowe
4398	SP-PC16	7	exc	Awa.prz	30			Awarie przemysłowe
4457	SD-P12	2	lab	Mod.poż	30			Modelowanie pożarów
4457	SD-P13	2	lab	Mod.poż	30			Modelowanie pożarów
4460	SD-P13	1	lab	Wsp.pro.inż	15			Współczesne problemy inżynierii środowiska
4460	SD-P12	1	lab	Wsp.pro.inż	15			Współczesne problemy inżynierii środowiska
4467	SD-P13	1	lab	Sys.inf.prz	30			Systemy informacji przestrzennej
4467	SD-P12	1	lab	Sys.inf.prz	30			Systemy informacji przestrzennej
4476	SD-P13	2	lab	Ana.ryz.inz	15			Analiza ryzyka w inżynierii bezpieczeństwa
4476	SD-P12	2	lab	Ana.ryz.inz	15			Analiza ryzyka w inżynierii bezpieczeństwa
4485	SD-P13	3	lab	Str.ope.rat	20			Strategiczne operacje ratownicze
4485	SD-P12	3	lab	Str.ope.rat	20			Strategiczne operacje ratownicze
4454	SD-P13	1	exc	Zas.now.tec	30			Zastosowanie nowoczesnych technik w inżynierii bezpieczeństwa
4454	SD-P12	1	exc	Zas.now.tec	30			Zastosowanie nowoczesnych technik w inżynierii bezpieczeństwa
4456	SD-P13	1	exc	Mod.poż	30			Modelowanie pożarów
4456	SD-P12	1	exc	Mod.poż	30			Modelowanie pożarów
4458	SD-P12	2	exc	Ana.sku.wyb	30			Analiza skutków wybuchu
4458	SD-P13	2	exc	Ana.sku.wyb	30			Analiza skutków wybuchu
4461	SD-P12	2	exc	Sem.mag	15			Seminarium magisterskie
4461	SD-P13	2	exc	Sem.mag	15			Seminarium magisterskie
4462	SD-P13	3	exc	Sem.mag	15			Seminarium magisterskie
4462	SD-P12	3	exc	Sem.mag	15			Seminarium magisterskie
4463	SD-P12	2	exc	Zar.eks.spr.rg	15			Zarządzanie eksploatacją sprzętu ratowniczo - gaśniczego
4463	SD-P13	2	exc	Zar.eks.spr.rg	15			Zarządzanie eksploatacją sprzętu ratowniczo - gaśniczego
4469	SD-P12	1	exc	Met.tec.zar	15			Metody i techniki zarządzania zasobami ludzkimi
4469	SD-P13	1	exc	Met.tec.zar	15			Metody i techniki zarządzania zasobami ludzkimi
4471	SD-P12	2	exc	Kie.dzi.rat	30			Kierowanie działaniami ratowniczymi
4471	SD-P13	2	exc	Kie.dzi.rat	30			Kierowanie działaniami ratowniczymi
4477	SD-P13	3	exc	Opt.śro.gas	15			Optymalizacja środków gaśniczych i neutralizacji
4477	SD-P12	3	exc	Opt.śro.gas	15			Optymalizacja środków gaśniczych i neutralizacji
4465	SD-P12	1	exc	Nie.bez.bud	30			Niezawodność i bezpieczeństwo budowli
4465	SD-P13	1	exc	Nie.bez.bud	30			Niezawodność i bezpieczeństwo budowli
4473	SD-P13	1	exc	Prz.ope.och	30			Przygotowanie operacyjne w ochronie ludności
4473	SD-P12	1	exc	Prz.ope.och	30			Przygotowanie operacyjne w ochronie ludności
4479	SD-P13	2	exc	Pro.doc.pop	15			Procedura dochodzeń popożarowych
4479	SD-P12	2	exc	Pro.doc.pop	15			Procedura dochodzeń popożarowych
4481	SD-P12	3	exc	Noś.kon.war	30			Nośność konstrukcji w warunkach pożaru
4481	SD-P13	3	exc	Noś.kon.war	30			Nośność konstrukcji w warunkach pożaru
4483	SD-P12	2	exc	Zar.inf.kom	30			Zarządzanie infrastrukturą komunalną w sytuacjach kryzysowych
4483	SD-P13	2	exc	Zar.inf.kom	30			Zarządzanie infrastrukturą komunalną w sytuacjach kryzysowych
4486	SD-P13	3	exc	Str.ope.rat	10			Strategiczne operacje ratownicze
4486	SD-P12	3	exc	Str.ope.rat	10			Strategiczne operacje ratownicze
4497	ND-P34	1	lab	Sys.inf.prz	18			Systemy informacji przestrzennej
4497	ND-P35	1	lab	Sys.inf.prz	18			Systemy informacji przestrzennej
4506	ND-P34	2	lab	Ana.ryz.inz	9			Analiza ryzyka w inżynierii bezpieczeństwa
4506	ND-P35	2	lab	Ana.ryz.inz	9			Analiza ryzyka w inżynierii bezpieczeństwa
4515	ND-P34	3	lab	Str.ope.rat	12			Strategiczne operacje ratownicze
4515	ND-P35	3	lab	Str.ope.rat	12			Strategiczne operacje ratownicze
4528	ND-P35	2	\N	DP	0			Praca dyplomowa
4528	ND-P34	2	\N	DP	0			Praca dyplomowa
4490	SD-P13	2	exc	Kra.sys.wyk	15			Krajowy system wykrywania skażeń i alarmowania
4490	SD-P12	2	exc	Kra.sys.wyk	15			Krajowy system wykrywania skażeń i alarmowania
4493	ND-P34	2	exc	Zar.eks.spr.rg	9			Zarządzanie eksploatacją sprzętu ratowniczo - gaśniczego
4493	ND-P35	2	exc	Zar.eks.spr.rg	9			Zarządzanie eksploatacją sprzętu ratowniczo - gaśniczego
4499	ND-P34	1	exc	Met.tec.zar	9			Metody i techniki zarządzania zasobami ludzkimi
4499	ND-P35	1	exc	Met.tec.zar	9			Metody i techniki zarządzania zasobami ludzkimi
4501	ND-P34	2	exc	Kie.dzi.rat	18			Kierowanie działaniami ratowniczymi
4501	ND-P35	2	exc	Kie.dzi.rat	18			Kierowanie działaniami ratowniczymi
4507	ND-P35	3	exc	Opt.śro.gas	9			Optymalizacja środków gaśniczych i neutralizacji
4507	ND-P34	3	exc	Opt.śro.gas	9			Optymalizacja środków gaśniczych i neutralizacji
4520	ND-P35	2	exc	Kra.sys.wyk	9			Krajowy system wykrywania skażeń i alarmowania
4520	ND-P34	2	exc	Kra.sys.wyk	9			Krajowy system wykrywania skażeń i alarmowania
4522	NP-PS43	1	exc	Jęz.ang	16			Język angielski
4522	NP-PS45	1	exc	Jęz.ang	16			Język angielski
4522	NP-PS46	1	exc	Jęz.ang	16			Język angielski
4522	NP-PS44	1	exc	Jęz.ang	16			Język angielski
4529	ND-P34	3	exc	Sem.mag	9			Seminarium magisterskie
4495	ND-P35	1	exc	Nie.bez.bud	18			Niezawodność i bezpieczeństwo budowli
4495	ND-P34	1	exc	Nie.bez.bud	18			Niezawodność i bezpieczeństwo budowli
4503	ND-P35	1	exc	Prz.ope.och	18			Przygotowanie operacyjne w ochronie ludności
4503	ND-P34	1	exc	Prz.ope.och	18			Przygotowanie operacyjne w ochronie ludności
4509	ND-P34	2	exc	Pro.doc.pop	9			Procedura dochodzeń popożarowych
4509	ND-P35	2	exc	Pro.doc.pop	9			Procedura dochodzeń popożarowych
4511	ND-P34	3	exc	Noś.kon.war	18			Nośność konstrukcji w warunkach pożaru
4511	ND-P35	3	exc	Noś.kon.war	18			Nośność konstrukcji w warunkach pożaru
4513	ND-P34	2	exc	Zar.inf.kom	18			Zarządzanie infrastrukturą komunalną w sytuacjach kryzysowych
4513	ND-P35	2	exc	Zar.inf.kom	18			Zarządzanie infrastrukturą komunalną w sytuacjach kryzysowych
4516	ND-P35	3	exc	Str.ope.rat	6			Strategiczne operacje ratownicze
4516	ND-P34	3	exc	Str.ope.rat	6			Strategiczne operacje ratownicze
4518	ND-P34	3	exc	Rze.prz	18			Rzeczoznawstwo przeciwpożarowe
4518	ND-P35	3	exc	Rze.prz	18			Rzeczoznawstwo przeciwpożarowe
4555	NP-PC20	2	lab	Fizyka	16			Fizyka
4555	NP-PC21	2	lab	Fizyka	16			Fizyka
4555	NP-PC18	2	lab	Fizyka	16			Fizyka
4555	NP-PC19	2	lab	Fizyka	16			Fizyka
4529	ND-P35	3	exc	Sem.mag	9			Seminarium magisterskie
4536	NP-PC21	1	exc	Jęz.ang	16			Język angielski
4536	NP-PC20	1	exc	Jęz.ang	16			Język angielski
4536	NP-PC18	1	exc	Jęz.ang	16			Język angielski
4536	NP-PC19	1	exc	Jęz.ang	16			Język angielski
4537	NP-PC18	2	exc	Jęz.ang	16			Język angielski
4537	NP-PC20	2	exc	Jęz.ang	16			Język angielski
4537	NP-PC21	2	exc	Jęz.ang	16			Język angielski
4537	NP-PC19	2	exc	Jęz.ang	16			Język angielski
4538	NP-PC19	3	exc	Jęz.ang	16			Język angielski
4538	NP-PC21	3	exc	Jęz.ang	16			Język angielski
4538	NP-PC18	3	exc	Jęz.ang	16			Język angielski
4538	NP-PC20	3	exc	Jęz.ang	16			Język angielski
4539	NP-PC21	4	exc	Jęz.ang	16			Język angielski
4539	NP-PC18	4	exc	Jęz.ang	16			Język angielski
4539	NP-PC20	4	exc	Jęz.ang	16			Język angielski
4539	NP-PC19	4	exc	Jęz.ang	16			Język angielski
4540	NP-PC20	5	exc	Jęz.ang	16			Język angielski
4540	NP-PC21	5	exc	Jęz.ang	16			Język angielski
4540	NP-PC18	5	exc	Jęz.ang	16			Język angielski
4540	NP-PC19	5	exc	Jęz.ang	16			Język angielski
4541	NP-PC20	6	exc	Jęz.ang	16			Język angielski
4541	NP-PC21	6	exc	Jęz.ang	16			Język angielski
4541	NP-PC19	6	exc	Jęz.ang	16			Język angielski
4541	NP-PC18	6	exc	Jęz.ang	16			Język angielski
4542	NP-PC19	7	exc	Jęz.ang	14			Język angielski
4542	NP-PC20	7	exc	Jęz.ang	14			Język angielski
4542	NP-PC21	7	exc	Jęz.ang	14			Język angielski
4542	NP-PC18	7	exc	Jęz.ang	14			Język angielski
4543	NP-PC21	8	exc	Jęz.ang	8			Język angielski
4543	NP-PC18	8	exc	Jęz.ang	8			Język angielski
4543	NP-PC20	8	exc	Jęz.ang	8			Język angielski
4543	NP-PC19	8	exc	Jęz.ang	8			Język angielski
4545	NP-PC19	4	exc	Psy.soc	9			Psychologia i socjologia
4545	NP-PC18	4	exc	Psy.soc	9			Psychologia i socjologia
4560	NP-PC21	2	lab	Tec.inf	18			Technologie informacyjne
4560	NP-PC19	2	lab	Tec.inf	18			Technologie informacyjne
4560	NP-PC18	2	lab	Tec.inf	18			Technologie informacyjne
4560	NP-PC20	2	lab	Tec.inf	18			Technologie informacyjne
4567	NP-PC21	3	lab	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
4567	NP-PC19	3	lab	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
4567	NP-PC20	3	lab	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
4567	NP-PC18	3	lab	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
4572	NP-PC21	3	lab	Hyd.prz.zao	18			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4572	NP-PC18	3	lab	Hyd.prz.zao	18			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4572	NP-PC19	3	lab	Hyd.prz.zao	18			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4572	NP-PC20	3	lab	Hyd.prz.zao	18			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4578	NP-PC18	3	lab	Ele.ele.poz	18			Elektrotechnika i elektronika w pożarnictwie
4578	NP-PC19	3	lab	Ele.ele.poz	18			Elektrotechnika i elektronika w pożarnictwie
4578	NP-PC21	3	lab	Ele.ele.poz	18			Elektrotechnika i elektronika w pożarnictwie
4561	NP-PC20	1	exc	Rys.tec	18			Rysunek techniczny
4561	NP-PC21	1	exc	Rys.tec	18			Rysunek techniczny
4561	NP-PC19	1	exc	Rys.tec	18			Rysunek techniczny
4561	NP-PC18	1	exc	Rys.tec	18			Rysunek techniczny
4565	NP-PC20	2	exc	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
4565	NP-PC18	2	exc	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
4565	NP-PC19	2	exc	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
4565	NP-PC21	2	exc	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
4566	NP-PC18	3	exc	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
4566	NP-PC20	3	exc	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
4566	NP-PC19	3	exc	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
4566	NP-PC21	3	exc	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
4571	NP-PC18	2	exc	Hyd.prz.zao	18			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4571	NP-PC20	2	exc	Hyd.prz.zao	18			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4571	NP-PC21	2	exc	Hyd.prz.zao	18			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4571	NP-PC19	2	exc	Hyd.prz.zao	18			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4562	NP-PC18	2	exc	Gra.inż	18			Grafika inżynierska
4562	NP-PC20	2	exc	Gra.inż	18			Grafika inżynierska
4562	NP-PC19	2	exc	Gra.inż	18			Grafika inżynierska
4562	NP-PC21	2	exc	Gra.inż	18			Grafika inżynierska
4563	NP-PC20	3	exc	Gra.inż	18			Grafika inżynierska
4563	NP-PC18	3	exc	Gra.inż	18			Grafika inżynierska
4563	NP-PC19	3	exc	Gra.inż	18			Grafika inżynierska
4563	NP-PC21	3	exc	Gra.inż	18			Grafika inżynierska
4576	NP-PC20	3	exc	Pod.bud	18			Podstawy budownictwa
4576	NP-PC19	3	exc	Pod.bud	18			Podstawy budownictwa
4576	NP-PC18	3	exc	Pod.bud	18			Podstawy budownictwa
4576	NP-PC21	3	exc	Pod.bud	18			Podstawy budownictwa
4578	NP-PC20	3	lab	Ele.ele.poz	18			Elektrotechnika i elektronika w pożarnictwie
4580	NP-PC20	4	lab	Teo.poż	9			Teoria pożarów
4580	NP-PC19	4	lab	Teo.poż	9			Teoria pożarów
4580	NP-PC18	4	lab	Teo.poż	9			Teoria pożarów
4580	NP-PC21	4	lab	Teo.poż	9			Teoria pożarów
4586	NP-PC18	4	lab	Tec.sys.zab	18			Techniczne systemy zabezpieczeń
4586	NP-PC21	4	lab	Tec.sys.zab	18			Techniczne systemy zabezpieczeń
4586	NP-PC20	4	lab	Tec.sys.zab	18			Techniczne systemy zabezpieczeń
4586	NP-PC19	4	lab	Tec.sys.zab	18			Techniczne systemy zabezpieczeń
4588	NP-PC21	4	lab	Śro.gaś.neu	18			Środki gaśnicze i neutralizujące
4588	NP-PC19	4	lab	Śro.gaś.neu	18			Środki gaśnicze i neutralizujące
4588	NP-PC20	4	lab	Śro.gaś.neu	18			Środki gaśnicze i neutralizujące
4588	NP-PC18	4	lab	Śro.gaś.neu	18			Środki gaśnicze i neutralizujące
4592	NP-PC18	5	lab	Fiz.spa	18			Fizykochemia spalania
4592	NP-PC21	5	lab	Fiz.spa	18			Fizykochemia spalania
4592	NP-PC19	5	lab	Fiz.spa	18			Fizykochemia spalania
4592	NP-PC20	5	lab	Fiz.spa	18			Fizykochemia spalania
4598	NP-PC21	6	lab	Spr.rat	18			Sprzęt ratowniczo - gaśniczy
4598	NP-PC19	6	lab	Spr.rat	18			Sprzęt ratowniczo - gaśniczy
4598	NP-PC18	6	lab	Spr.rat	18			Sprzęt ratowniczo - gaśniczy
4598	NP-PC20	6	lab	Spr.rat	18			Sprzęt ratowniczo - gaśniczy
4582	NP-PC19	4	exc	Fiz.spa	18			Fizykochemia spalania
4582	NP-PC20	4	exc	Fiz.spa	18			Fizykochemia spalania
4582	NP-PC21	4	exc	Fiz.spa	18			Fizykochemia spalania
4582	NP-PC18	4	exc	Fiz.spa	18			Fizykochemia spalania
4584	NP-PC21	4	exc	Pod.kon.mas	9			Podstawy konstrukcji maszyn
4584	NP-PC19	4	exc	Pod.kon.mas	9			Podstawy konstrukcji maszyn
4584	NP-PC20	4	exc	Pod.kon.mas	9			Podstawy konstrukcji maszyn
4584	NP-PC18	4	exc	Pod.kon.mas	9			Podstawy konstrukcji maszyn
4595	NP-PC19	6	exc	Sam.poj.rat	9			Samochody i pojazdy ratownicze
4595	NP-PC18	6	exc	Sam.poj.rat	9			Samochody i pojazdy ratownicze
4595	NP-PC20	6	exc	Sam.poj.rat	9			Samochody i pojazdy ratownicze
4595	NP-PC21	6	exc	Sam.poj.rat	9			Samochody i pojazdy ratownicze
4597	NP-PC21	5	exc	Spr.rat	18			Sprzęt ratowniczo - gaśniczy
4597	NP-PC19	5	exc	Spr.rat	18			Sprzęt ratowniczo - gaśniczy
4597	NP-PC20	5	exc	Spr.rat	18			Sprzęt ratowniczo - gaśniczy
4597	NP-PC18	5	exc	Spr.rat	18			Sprzęt ratowniczo - gaśniczy
4593	NP-PC20	5	exc	Tec.sys.zab	18			Techniczne systemy zabezpieczeń
4593	NP-PC18	5	exc	Tec.sys.zab	18			Techniczne systemy zabezpieczeń
4593	NP-PC21	5	exc	Tec.sys.zab	18			Techniczne systemy zabezpieczeń
4593	NP-PC19	5	exc	Tec.sys.zab	18			Techniczne systemy zabezpieczeń
4602	NP-PC18	5	lab	Rat.che.i.eko	18			Ratownictwo chemiczne i ekologiczne
4602	NP-PC19	5	lab	Rat.che.i.eko	18			Ratownictwo chemiczne i ekologiczne
4602	NP-PC21	5	lab	Rat.che.i.eko	18			Ratownictwo chemiczne i ekologiczne
4602	NP-PC20	5	lab	Rat.che.i.eko	18			Ratownictwo chemiczne i ekologiczne
4605	NP-PC19	5	lab	Med.kat	18			Medycyna katastrof
4605	NP-PC18	5	lab	Med.kat	18			Medycyna katastrof
4605	NP-PC20	5	lab	Med.kat	18			Medycyna katastrof
4605	NP-PC21	5	lab	Med.kat	18			Medycyna katastrof
4612	NP-PC19	6	lab	Org.łąc.ala	9			Organizacja łączności i alarmowanie
4612	NP-PC18	6	lab	Org.łąc.ala	9			Organizacja łączności i alarmowanie
4612	NP-PC21	6	lab	Org.łąc.ala	9			Organizacja łączności i alarmowanie
4612	NP-PC20	6	lab	Org.łąc.ala	9			Organizacja łączności i alarmowanie
4615	NP-PC20	6	lab	Bez.dzi.rat	18			Bezpieczeństwo działań ratowniczych
4615	NP-PC21	6	lab	Bez.dzi.rat	18			Bezpieczeństwo działań ratowniczych
4615	NP-PC19	6	lab	Bez.dzi.rat	18			Bezpieczeństwo działań ratowniczych
4615	NP-PC18	6	lab	Bez.dzi.rat	18			Bezpieczeństwo działań ratowniczych
4619	NP-PC18	5	lab	Wen.poz	9			Wentylacja pożarowa
4619	NP-PC19	5	lab	Wen.poz	9			Wentylacja pożarowa
4619	NP-PC21	5	lab	Wen.poz	9			Wentylacja pożarowa
4619	NP-PC20	5	lab	Wen.poz	9			Wentylacja pożarowa
4603	NP-PC20	6	exc	Rat.che.i.eko	18			Ratownictwo chemiczne i ekologiczne
4603	NP-PC19	6	exc	Rat.che.i.eko	18			Ratownictwo chemiczne i ekologiczne
4603	NP-PC21	6	exc	Rat.che.i.eko	18			Ratownictwo chemiczne i ekologiczne
4603	NP-PC18	6	exc	Rat.che.i.eko	18			Ratownictwo chemiczne i ekologiczne
4607	NP-PC21	6	exc	Rat.tec	18			Ratownictwo techniczne
4607	NP-PC19	6	exc	Rat.tec	18			Ratownictwo techniczne
4607	NP-PC20	6	exc	Rat.tec	18			Ratownictwo techniczne
4607	NP-PC18	6	exc	Rat.tec	18			Ratownictwo techniczne
4609	NP-PC18	6	exc	Ewa.int	18			Ewakuacja interwencyjna
4609	NP-PC21	6	exc	Ewa.int	18			Ewakuacja interwencyjna
4609	NP-PC20	6	exc	Ewa.int	18			Ewakuacja interwencyjna
4609	NP-PC19	6	exc	Ewa.int	18			Ewakuacja interwencyjna
4611	NP-PC21	6	exc	Org.łąc.ala	9			Organizacja łączności i alarmowanie
4611	NP-PC18	6	exc	Org.łąc.ala	9			Organizacja łączności i alarmowanie
4611	NP-PC19	6	exc	Org.łąc.ala	9			Organizacja łączności i alarmowanie
4611	NP-PC20	6	exc	Org.łąc.ala	9			Organizacja łączności i alarmowanie
4614	NP-PC18	5	exc	Bez.dzi.rat	18			Bezpieczeństwo działań ratowniczych
4614	NP-PC21	5	exc	Bez.dzi.rat	18			Bezpieczeństwo działań ratowniczych
4614	NP-PC19	5	exc	Bez.dzi.rat	18			Bezpieczeństwo działań ratowniczych
4614	NP-PC20	5	exc	Bez.dzi.rat	18			Bezpieczeństwo działań ratowniczych
4617	NP-PC20	6	exc	Tak.dow	18			Taktyka i dowodzenie
4617	NP-PC18	6	exc	Tak.dow	18			Taktyka i dowodzenie
4617	NP-PC19	6	exc	Tak.dow	18			Taktyka i dowodzenie
4617	NP-PC21	6	exc	Tak.dow	18			Taktyka i dowodzenie
4600	NP-PC18	6	exc	Dzi.gas	18			Działania gaśnicze
4600	NP-PC21	6	exc	Dzi.gas	18			Działania gaśnicze
4600	NP-PC20	6	exc	Dzi.gas	18			Działania gaśnicze
4600	NP-PC19	6	exc	Dzi.gas	18			Działania gaśnicze
4620	NP-PC18	6	exc	Wen.poz	18			Wentylacja pożarowa
4620	NP-PC20	6	exc	Wen.poz	18			Wentylacja pożarowa
4620	NP-PC21	6	exc	Wen.poz	18			Wentylacja pożarowa
4629	NP-PC20	7	lab	Met.bad.prz	9			Metodyka badań przyczyn pożarów
4629	NP-PC18	7	lab	Met.bad.prz	9			Metodyka badań przyczyn pożarów
4629	NP-PC21	7	lab	Met.bad.prz	9			Metodyka badań przyczyn pożarów
4629	NP-PC19	7	lab	Met.bad.prz	9			Metodyka badań przyczyn pożarów
4639	NP-PC20	8	lab	Sys.wsp.dzi	16			Systemy wspomagania działań ratowniczych
4639	NP-PC19	8	lab	Sys.wsp.dzi	16			Systemy wspomagania działań ratowniczych
4639	NP-PC21	8	lab	Sys.wsp.dzi	16			Systemy wspomagania działań ratowniczych
4622	NP-PC20	7	exc	Zab.pro.tec	18			Zabezpieczenia w procesach technologicznych
4622	NP-PC18	7	exc	Zab.pro.tec	18			Zabezpieczenia w procesach technologicznych
4622	NP-PC19	7	exc	Zab.pro.tec	18			Zabezpieczenia w procesach technologicznych
4622	NP-PC21	7	exc	Zab.pro.tec	18			Zabezpieczenia w procesach technologicznych
4628	NP-PC20	7	exc	Met.bad.prz	18			Metodyka badań przyczyn pożarów
4628	NP-PC18	7	exc	Met.bad.prz	18			Metodyka badań przyczyn pożarów
4628	NP-PC19	7	exc	Met.bad.prz	18			Metodyka badań przyczyn pożarów
4628	NP-PC21	7	exc	Met.bad.prz	18			Metodyka badań przyczyn pożarów
4634	NP-PC18	7	exc	Sem.dyp	9			Seminarium dyplomowe
4634	NP-PC19	7	exc	Sem.dyp	9			Seminarium dyplomowe
4634	NP-PC21	7	exc	Sem.dyp	9			Seminarium dyplomowe
4634	NP-PC20	7	exc	Sem.dyp	9			Seminarium dyplomowe
4635	NP-PC19	8	exc	Sem.dyp	9			Seminarium dyplomowe
4635	NP-PC21	8	exc	Sem.dyp	9			Seminarium dyplomowe
4635	NP-PC20	8	exc	Sem.dyp	9			Seminarium dyplomowe
4635	NP-PC18	8	exc	Sem.dyp	9			Seminarium dyplomowe
4620	NP-PC19	6	exc	Wen.poz	18			Wentylacja pożarowa
4624	NP-PC21	7	exc	Bez.poż.budy	24			Bezpieczeństwo pożarowe budynków
4624	NP-PC20	7	exc	Bez.poż.budy	24			Bezpieczeństwo pożarowe budynków
4624	NP-PC18	7	exc	Bez.poż.budy	24			Bezpieczeństwo pożarowe budynków
4624	NP-PC19	7	exc	Bez.poż.budy	24			Bezpieczeństwo pożarowe budynków
4626	NP-PC18	7	exc	Ana.ryz.pro	18			Analiza ryzyka w procesach przemysłowych
4626	NP-PC20	7	exc	Ana.ryz.pro	18			Analiza ryzyka w procesach przemysłowych
4626	NP-PC21	7	exc	Ana.ryz.pro	18			Analiza ryzyka w procesach przemysłowych
4626	NP-PC19	7	exc	Ana.ryz.pro	18			Analiza ryzyka w procesach przemysłowych
4631	NP-PC20	7	exc	Bez.poż.las	9			Bezpieczeństwo pożarowe lasów
4631	NP-PC21	7	exc	Bez.poż.las	9			Bezpieczeństwo pożarowe lasów
4631	NP-PC19	7	exc	Bez.poż.las	9			Bezpieczeństwo pożarowe lasów
4631	NP-PC18	7	exc	Bez.poż.las	9			Bezpieczeństwo pożarowe lasów
4633	NP-PC21	7	exc	Awa.prz	18			Awarie przemysłowe
4633	NP-PC18	7	exc	Awa.prz	18			Awarie przemysłowe
4633	NP-PC19	7	exc	Awa.prz	18			Awarie przemysłowe
4633	NP-PC20	7	exc	Awa.prz	18			Awarie przemysłowe
4639	NP-PC18	8	lab	Sys.wsp.dzi	16			Systemy wspomagania działań ratowniczych
4664	NP-PS43	2	lab	Fizyka	16			Fizyka
4664	NP-PS46	2	lab	Fizyka	16			Fizyka
4664	NP-PS45	2	lab	Fizyka	16			Fizyka
4664	NP-PS44	2	lab	Fizyka	16			Fizyka
4642	NP-PC19	8	exc	Pro.bie.zab	16			Projektowanie biernych zabezpieczeń przeciwpożarowych
4642	NP-PC21	8	exc	Pro.bie.zab	16			Projektowanie biernych zabezpieczeń przeciwpożarowych
4642	NP-PC18	8	exc	Pro.bie.zab	16			Projektowanie biernych zabezpieczeń przeciwpożarowych
4642	NP-PC20	8	exc	Pro.bie.zab	16			Projektowanie biernych zabezpieczeń przeciwpożarowych
4645	NP-PS46	2	exc	Jęz.ang	16			Język angielski
4645	NP-PS45	2	exc	Jęz.ang	16			Język angielski
4645	NP-PS43	2	exc	Jęz.ang	16			Język angielski
4645	NP-PS44	2	exc	Jęz.ang	16			Język angielski
4646	NP-PS44	3	exc	Jęz.ang	16			Język angielski
4646	NP-PS45	3	exc	Jęz.ang	16			Język angielski
4646	NP-PS43	3	exc	Jęz.ang	16			Język angielski
4646	NP-PS46	3	exc	Jęz.ang	16			Język angielski
4647	NP-PS44	4	exc	Jęz.ang	16			Język angielski
4647	NP-PS43	4	exc	Jęz.ang	16			Język angielski
4647	NP-PS46	4	exc	Jęz.ang	16			Język angielski
4647	NP-PS45	4	exc	Jęz.ang	16			Język angielski
4648	NP-PS46	5	exc	Jęz.ang	16			Język angielski
4648	NP-PS45	5	exc	Jęz.ang	16			Język angielski
4648	NP-PS44	5	exc	Jęz.ang	16			Język angielski
4648	NP-PS43	5	exc	Jęz.ang	16			Język angielski
4649	NP-PS44	6	exc	Jęz.ang	16			Język angielski
4649	NP-PS46	6	exc	Jęz.ang	16			Język angielski
4649	NP-PS43	6	exc	Jęz.ang	16			Język angielski
4649	NP-PS45	6	exc	Jęz.ang	16			Język angielski
4650	NP-PS44	7	exc	Jęz.ang	14			Język angielski
4650	NP-PS46	7	exc	Jęz.ang	14			Język angielski
4650	NP-PS43	7	exc	Jęz.ang	14			Język angielski
4650	NP-PS45	7	exc	Jęz.ang	14			Język angielski
4651	NP-PS45	8	exc	Jęz.ang	8			Język angielski
4651	NP-PS44	8	exc	Jęz.ang	8			Język angielski
4651	NP-PS43	8	exc	Jęz.ang	8			Język angielski
4651	NP-PS46	8	exc	Jęz.ang	8			Język angielski
4653	NP-PS43	4	exc	Psy.soc	9			Psychologia i socjologia
4653	NP-PS44	4	exc	Psy.soc	9			Psychologia i socjologia
4653	NP-PS46	4	exc	Psy.soc	9			Psychologia i socjologia
4653	NP-PS45	4	exc	Psy.soc	9			Psychologia i socjologia
4660	NP-PS43	1	exc	Matematyka	32			Matematyka
4660	NP-PS46	1	exc	Matematyka	32			Matematyka
4669	NP-PS43	2	lab	Tec.inf	18			Technologie informacyjne
4669	NP-PS46	2	lab	Tec.inf	18			Technologie informacyjne
4669	NP-PS45	2	lab	Tec.inf	18			Technologie informacyjne
4669	NP-PS44	2	lab	Tec.inf	18			Technologie informacyjne
4675	NP-PS44	3	lab	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
4675	NP-PS43	3	lab	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
4675	NP-PS45	3	lab	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
4675	NP-PS46	3	lab	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
4680	NP-PS44	3	lab	Hyd.prz.zao	18			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4680	NP-PS46	3	lab	Hyd.prz.zao	18			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4680	NP-PS45	3	lab	Hyd.prz.zao	18			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4680	NP-PS43	3	lab	Hyd.prz.zao	18			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4665	NP-PS43	1	lec	Chemia	18			Chemia
4666	NP-PS44	1	exc	Chemia	18			Chemia
4666	NP-PS45	1	exc	Chemia	18			Chemia
4666	NP-PS46	1	exc	Chemia	18			Chemia
4666	NP-PS43	1	exc	Chemia	18			Chemia
4667	NP-PS45	2	exc	Chemia	24			Chemia
4667	NP-PS43	2	exc	Chemia	24			Chemia
4667	NP-PS46	2	exc	Chemia	24			Chemia
4667	NP-PS44	2	exc	Chemia	24			Chemia
4670	NP-PS45	1	exc	Rys.tec	18			Rysunek techniczny
4670	NP-PS44	1	exc	Rys.tec	18			Rysunek techniczny
4670	NP-PS43	1	exc	Rys.tec	18			Rysunek techniczny
4670	NP-PS46	1	exc	Rys.tec	18			Rysunek techniczny
4673	NP-PS46	2	exc	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
4673	NP-PS43	2	exc	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
4673	NP-PS45	2	exc	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
4673	NP-PS44	2	exc	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
4674	NP-PS46	3	exc	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
4674	NP-PS45	3	exc	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
4674	NP-PS44	3	exc	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
4674	NP-PS43	3	exc	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
4679	NP-PS44	2	exc	Hyd.prz.zao	18			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4679	NP-PS43	2	exc	Hyd.prz.zao	18			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4679	NP-PS46	2	exc	Hyd.prz.zao	18			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4679	NP-PS45	2	exc	Hyd.prz.zao	18			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4671	NP-PS44	2	exc	Gra.inż	18			Grafika inżynierska
4671	NP-PS45	2	exc	Gra.inż	18			Grafika inżynierska
4671	NP-PS46	2	exc	Gra.inż	18			Grafika inżynierska
4671	NP-PS43	2	exc	Gra.inż	18			Grafika inżynierska
4684	NP-PS46	3	exc	Pod.bud	18			Podstawy budownictwa
4684	NP-PS44	3	exc	Pod.bud	18			Podstawy budownictwa
4684	NP-PS43	3	exc	Pod.bud	18			Podstawy budownictwa
4684	NP-PS45	3	exc	Pod.bud	18			Podstawy budownictwa
4686	NP-PS46	3	lab	Ele.ele.poz	18			Elektrotechnika i elektronika w pożarnictwie
4686	NP-PS45	3	lab	Ele.ele.poz	18			Elektrotechnika i elektronika w pożarnictwie
4686	NP-PS43	3	lab	Ele.ele.poz	18			Elektrotechnika i elektronika w pożarnictwie
4686	NP-PS44	3	lab	Ele.ele.poz	18			Elektrotechnika i elektronika w pożarnictwie
4690	NP-PS43	5	lab	Fiz.spa	18			Fizykochemia spalania
4690	NP-PS44	5	lab	Fiz.spa	18			Fizykochemia spalania
4690	NP-PS45	5	lab	Fiz.spa	18			Fizykochemia spalania
4690	NP-PS46	5	lab	Fiz.spa	18			Fizykochemia spalania
4694	NP-PS45	4	lab	Tec.sys.zab	18			Techniczne systemy zabezpieczeń
4694	NP-PS44	4	lab	Tec.sys.zab	18			Techniczne systemy zabezpieczeń
4694	NP-PS46	4	lab	Tec.sys.zab	18			Techniczne systemy zabezpieczeń
4694	NP-PS43	4	lab	Tec.sys.zab	18			Techniczne systemy zabezpieczeń
4697	NP-PS44	4	lab	Śro.gaś.neu	18			Środki gaśnicze i neutralizujące
4697	NP-PS45	4	lab	Śro.gaś.neu	18			Środki gaśnicze i neutralizujące
4697	NP-PS43	4	lab	Śro.gaś.neu	18			Środki gaśnicze i neutralizujące
4697	NP-PS46	4	lab	Śro.gaś.neu	18			Środki gaśnicze i neutralizujące
4703	NP-PS45	6	lab	Spr.rat	18			Sprzęt ratowniczo - gaśniczy
4703	NP-PS43	6	lab	Spr.rat	18			Sprzęt ratowniczo - gaśniczy
4703	NP-PS44	6	lab	Spr.rat	18			Sprzęt ratowniczo - gaśniczy
4703	NP-PS46	6	lab	Spr.rat	18			Sprzęt ratowniczo - gaśniczy
4689	NP-PS43	4	exc	Fiz.spa	18			Fizykochemia spalania
4689	NP-PS46	4	exc	Fiz.spa	18			Fizykochemia spalania
4689	NP-PS45	4	exc	Fiz.spa	18			Fizykochemia spalania
4689	NP-PS44	4	exc	Fiz.spa	18			Fizykochemia spalania
4692	NP-PS44	4	exc	Pod.kon.mas	9			Podstawy konstrukcji maszyn
4692	NP-PS43	4	exc	Pod.kon.mas	9			Podstawy konstrukcji maszyn
4692	NP-PS45	4	exc	Pod.kon.mas	9			Podstawy konstrukcji maszyn
4692	NP-PS46	4	exc	Pod.kon.mas	9			Podstawy konstrukcji maszyn
4700	NP-PS46	6	exc	Sam.poj.rat	9			Samochody i pojazdy ratownicze
4700	NP-PS45	6	exc	Sam.poj.rat	9			Samochody i pojazdy ratownicze
4700	NP-PS44	6	exc	Sam.poj.rat	9			Samochody i pojazdy ratownicze
4700	NP-PS43	6	exc	Sam.poj.rat	9			Samochody i pojazdy ratownicze
4702	NP-PS44	5	exc	Spr.rat	18			Sprzęt ratowniczo - gaśniczy
4702	NP-PS45	5	exc	Spr.rat	18			Sprzęt ratowniczo - gaśniczy
4702	NP-PS43	5	exc	Spr.rat	18			Sprzęt ratowniczo - gaśniczy
4702	NP-PS46	5	exc	Spr.rat	18			Sprzęt ratowniczo - gaśniczy
4695	NP-PS44	5	exc	Tec.sys.zab	18			Techniczne systemy zabezpieczeń
4695	NP-PS43	5	exc	Tec.sys.zab	18			Techniczne systemy zabezpieczeń
4695	NP-PS45	5	exc	Tec.sys.zab	18			Techniczne systemy zabezpieczeń
4695	NP-PS46	5	exc	Tec.sys.zab	18			Techniczne systemy zabezpieczeń
4705	NP-PS43	6	exc	Dzi.gas	18			Działania gaśnicze
4705	NP-PS44	6	exc	Dzi.gas	18			Działania gaśnicze
4705	NP-PS46	6	exc	Dzi.gas	18			Działania gaśnicze
4707	NP-PS43	5	lab	Rat.che.i.eko	18			Ratownictwo chemiczne i ekologiczne
4707	NP-PS44	5	lab	Rat.che.i.eko	18			Ratownictwo chemiczne i ekologiczne
4707	NP-PS46	5	lab	Rat.che.i.eko	18			Ratownictwo chemiczne i ekologiczne
4707	NP-PS45	5	lab	Rat.che.i.eko	18			Ratownictwo chemiczne i ekologiczne
4710	NP-PS46	5	lab	Med.kat	18			Medycyna katastrof
4710	NP-PS44	5	lab	Med.kat	18			Medycyna katastrof
4710	NP-PS45	5	lab	Med.kat	18			Medycyna katastrof
4710	NP-PS43	5	lab	Med.kat	18			Medycyna katastrof
4717	NP-PS44	6	lab	Org.łąc.ala	9			Organizacja łączności i alarmowanie
4717	NP-PS43	6	lab	Org.łąc.ala	9			Organizacja łączności i alarmowanie
4717	NP-PS46	6	lab	Org.łąc.ala	9			Organizacja łączności i alarmowanie
4717	NP-PS45	6	lab	Org.łąc.ala	9			Organizacja łączności i alarmowanie
4720	NP-PS43	6	lab	Bez.dzi.rat	18			Bezpieczeństwo działań ratowniczych
4720	NP-PS44	6	lab	Bez.dzi.rat	18			Bezpieczeństwo działań ratowniczych
4720	NP-PS45	6	lab	Bez.dzi.rat	18			Bezpieczeństwo działań ratowniczych
4720	NP-PS46	6	lab	Bez.dzi.rat	18			Bezpieczeństwo działań ratowniczych
4708	NP-PS46	6	exc	Rat.che.i.eko	18			Ratownictwo chemiczne i ekologiczne
4708	NP-PS44	6	exc	Rat.che.i.eko	18			Ratownictwo chemiczne i ekologiczne
4708	NP-PS43	6	exc	Rat.che.i.eko	18			Ratownictwo chemiczne i ekologiczne
4708	NP-PS45	6	exc	Rat.che.i.eko	18			Ratownictwo chemiczne i ekologiczne
4712	NP-PS46	6	exc	Rat.tec	18			Ratownictwo techniczne
4712	NP-PS43	6	exc	Rat.tec	18			Ratownictwo techniczne
4712	NP-PS45	6	exc	Rat.tec	18			Ratownictwo techniczne
4712	NP-PS44	6	exc	Rat.tec	18			Ratownictwo techniczne
4714	NP-PS43	6	exc	Ewa.int	18			Ewakuacja interwencyjna
4714	NP-PS44	6	exc	Ewa.int	18			Ewakuacja interwencyjna
4714	NP-PS45	6	exc	Ewa.int	18			Ewakuacja interwencyjna
4714	NP-PS46	6	exc	Ewa.int	18			Ewakuacja interwencyjna
4716	NP-PS46	6	exc	Org.łąc.ala	9			Organizacja łączności i alarmowanie
4716	NP-PS45	6	exc	Org.łąc.ala	9			Organizacja łączności i alarmowanie
4716	NP-PS44	6	exc	Org.łąc.ala	9			Organizacja łączności i alarmowanie
4716	NP-PS43	6	exc	Org.łąc.ala	9			Organizacja łączności i alarmowanie
4719	NP-PS43	5	exc	Bez.dzi.rat	18			Bezpieczeństwo działań ratowniczych
4719	NP-PS46	5	exc	Bez.dzi.rat	18			Bezpieczeństwo działań ratowniczych
4719	NP-PS44	5	exc	Bez.dzi.rat	18			Bezpieczeństwo działań ratowniczych
4719	NP-PS45	5	exc	Bez.dzi.rat	18			Bezpieczeństwo działań ratowniczych
4722	NP-PS44	6	exc	Tak.dow	18			Taktyka i dowodzenie
4722	NP-PS45	6	exc	Tak.dow	18			Taktyka i dowodzenie
4722	NP-PS43	6	exc	Tak.dow	18			Taktyka i dowodzenie
4722	NP-PS46	6	exc	Tak.dow	18			Taktyka i dowodzenie
4705	NP-PS45	6	exc	Dzi.gas	18			Działania gaśnicze
4724	NP-PS46	7	exc	Bez.poż.budy	24			Bezpieczeństwo pożarowe budynków
4724	NP-PS44	7	exc	Bez.poż.budy	24			Bezpieczeństwo pożarowe budynków
4724	NP-PS43	7	exc	Bez.poż.budy	24			Bezpieczeństwo pożarowe budynków
4724	NP-PS45	7	exc	Bez.poż.budy	24			Bezpieczeństwo pożarowe budynków
4729	NP-PS43	7	lab	Met.bad.prz	9			Metodyka badań przyczyn pożarów
4729	NP-PS46	7	lab	Met.bad.prz	9			Metodyka badań przyczyn pożarów
4729	NP-PS44	7	lab	Met.bad.prz	9			Metodyka badań przyczyn pożarów
4729	NP-PS45	7	lab	Met.bad.prz	9			Metodyka badań przyczyn pożarów
4738	NP-PS45	8	lab	Sys.wsp.dzi	16			Systemy wspomagania działań ratowniczych
4738	NP-PS44	8	lab	Sys.wsp.dzi	16			Systemy wspomagania działań ratowniczych
4738	NP-PS43	8	lab	Sys.wsp.dzi	16			Systemy wspomagania działań ratowniczych
4738	NP-PS46	8	lab	Sys.wsp.dzi	16			Systemy wspomagania działań ratowniczych
4728	NP-PS44	7	exc	Met.bad.prz	18			Metodyka badań przyczyn pożarów
4728	NP-PS43	7	exc	Met.bad.prz	18			Metodyka badań przyczyn pożarów
4728	NP-PS45	7	exc	Met.bad.prz	18			Metodyka badań przyczyn pożarów
4728	NP-PS46	7	exc	Met.bad.prz	18			Metodyka badań przyczyn pożarów
4731	NP-PS44	7	exc	Pla.ope	18			Planowanie operacyjne
4731	NP-PS46	7	exc	Pla.ope	18			Planowanie operacyjne
4731	NP-PS43	7	exc	Pla.ope	18			Planowanie operacyjne
4731	NP-PS45	7	exc	Pla.ope	18			Planowanie operacyjne
4733	NP-PS46	7	exc	Sem.dyp	9			Seminarium dyplomowe
4733	NP-PS43	7	exc	Sem.dyp	9			Seminarium dyplomowe
4733	NP-PS44	7	exc	Sem.dyp	9			Seminarium dyplomowe
4733	NP-PS45	7	exc	Sem.dyp	9			Seminarium dyplomowe
4734	NP-PS46	8	exc	Sem.dyp	9			Seminarium dyplomowe
4734	NP-PS44	8	exc	Sem.dyp	9			Seminarium dyplomowe
4734	NP-PS43	8	exc	Sem.dyp	9			Seminarium dyplomowe
4734	NP-PS45	8	exc	Sem.dyp	9			Seminarium dyplomowe
4745	SP-PK18	3	exc	Jęz.nie	30			Język niemiecki
4745	SP-PK17	3	exc	Jęz.nie	30			Język niemiecki
4745	SP-PK15	3	exc	Jęz.nie	30			Język niemiecki
4745	SP-PK16	3	exc	Jęz.nie	30			Język niemiecki
4746	SP-PK15	4	exc	Jęz.nie	30			Język niemiecki
4746	SP-PK18	4	exc	Jęz.nie	30			Język niemiecki
4746	SP-PK17	4	exc	Jęz.nie	30			Język niemiecki
4746	SP-PK16	4	exc	Jęz.nie	30			Język niemiecki
4748	SP-PK17	5	exc	Jęz.nie	30			Język niemiecki
4748	SP-PK16	5	exc	Jęz.nie	30			Język niemiecki
4748	SP-PK18	5	exc	Jęz.nie	30			Język niemiecki
4748	SP-PK15	5	exc	Jęz.nie	30			Język niemiecki
4749	SP-PK18	6	exc	Jęz.nie	30			Język niemiecki
4749	SP-PK15	6	exc	Jęz.nie	30			Język niemiecki
4749	SP-PK16	6	exc	Jęz.nie	30			Język niemiecki
4749	SP-PK17	6	exc	Jęz.nie	30			Język niemiecki
4770	SP-PK17	5	exc	Jęz.ros	30			Język rosyjski
4726	NP-PS44	7	exc	Ana.ryz.pro	18			Analiza ryzyka w procesach przemysłowych
4726	NP-PS43	7	exc	Ana.ryz.pro	18			Analiza ryzyka w procesach przemysłowych
4726	NP-PS45	7	exc	Ana.ryz.pro	18			Analiza ryzyka w procesach przemysłowych
4726	NP-PS46	7	exc	Ana.ryz.pro	18			Analiza ryzyka w procesach przemysłowych
4732	NP-PS43	7	exc	Str.rea.rat	9			Strategiczne reagowanie ratownicze
4732	NP-PS44	7	exc	Str.rea.rat	9			Strategiczne reagowanie ratownicze
4732	NP-PS46	7	exc	Str.rea.rat	9			Strategiczne reagowanie ratownicze
4732	NP-PS45	7	exc	Str.rea.rat	9			Strategiczne reagowanie ratownicze
4813	NP-C15	5	lab	Mod.zag	24			Modelowanie zagrożeń
4829	NP-C15	6	lab	Mul.tre.dec	24			Multimedialny trening decyzyjny
4894	NP-C15	6	lab	Erg.pro.sta	16			Ergonomia i projektowanie stanowisk pracy
4904	NP-C15	6	lab	Pra.pom	30			Praktyki pomiarowe
4913	NP-C15	7	lab	Lab.BHP	24			Laboratorium BHP
4932	SP-C17.IBC	5	lab	Mod.zag	45			Modelowanie zagrożeń
4941	SP-C17.IBC	5	lab	Sys.inf.prz	15			Systemy informacji przestrzennej
4806	NP-C15	5	lec	Psy.soc	16			Psychologia i socjologia
4770	SP-PK18	5	exc	Jęz.ros	30			Język rosyjski
4770	SP-PK15	5	exc	Jęz.ros	30			Język rosyjski
4770	SP-PK16	5	exc	Jęz.ros	30			Język rosyjski
4771	SP-PK17	6	exc	Jęz.ros	30			Język rosyjski
4771	SP-PK16	6	exc	Jęz.ros	30			Język rosyjski
4771	SP-PK15	6	exc	Jęz.ros	30			Język rosyjski
4771	SP-PK18	6	exc	Jęz.ros	30			Język rosyjski
4805	NP-C15	5	exc	Jęz.ang	24			Język angielski
4807	NP-C15	5	exc	Psy.soc	8			Psychologia i socjologia
4811	NP-C15	5	exc	Sku.zag.bio	8			Skutki zagrożeń biologicznych i ekologicznych
4815	NP-C15	5	exc	Inf.kry	8			Infrastruktura krytyczna
4816	NP-C15	5	exc	Prosem.dyp	8			Proseminarium dyplomowe
4820	NP-C15	5	exc	Śro.och.ind	8			Środki ochrony indywidualnej i zbiorowej
4822	NP-C15	5	exc	Pra.zmi	8			Praca zmianowa
4824	NP-C15	5	exc	Zag.poż.wyb	8			Zagrożenia pożarowe i wybuchowe
4827	NP-C15	5	exc	Mik.śro.pra	8			Mikroklimat środowiska pracy
4828	NP-C15	6	exc	Jęz.ang	24			Język angielski
4889	NP-C15	6	exc	Erg.fiz.bez	16			Ergonomia i fizjologia w bezpieczeństwie pracy
4891	NP-C15	6	exc	Zar.zas.lud	8			Zarządzanie zasobami ludzkimi
4892	NP-C15	6	exc	Sem.dyp	16			Seminarium dyplomowe
4896	NP-C15	6	exc	Zag.ele	8			Zagrożenia elektroenergetyczne
4899	NP-C15	6	exc	Bhp.obi.inf	8			BHP w obiektach infrastruktury krytycznej
4901	NP-C15	6	exc	Pro.opt.wid	8			Promieniowanie optyczne i widzialne
4903	NP-C15	6	exc	Oce.ryz.zaw	8			Ocena ryzyka zawodowego w systemie zarządzania bezpieczeństwem pracy
4905	NP-C15	6	exc	Pra.zawodowe	160			Praktyki zawodowe
4909	NP-C15	7	exc	Wyb.zag.eko	8			Wybrane zagadnienia z ekonomii
4910	NP-C15	7	exc	Sem.dyp	16			Seminarium dyplomowe
4922	SP-C17.IBC	5	exc	Jęz.ang	30			Język angielski
4923	SP-C17.IBC	5	exc	Jęz.nie	30			Język niemiecki
4924	SP-C17.IBC	5	exc	Jęz.ros	30			Język rosyjski
4926	SP-C17.IBC	5	exc	Psy.soc	15			Psychologia i socjologia
4809	NP-C15	5	exc	Met.ilo.jak	24			Metody ilościowej i jakościowej oceny ryzyka
4825	NP-C15	5	exc	Zag.poż.wyb	8			Zagrożenia pożarowe i wybuchowe
4897	NP-C15	6	exc	Zag.ele	16			Zagrożenia elektroenergetyczne
4907	NP-C15	7	exc	Zar.cią.dzi	8			Zarządzanie ciągłością działania
4912	NP-C15	7	exc	Rat.sys.pie	8			Ratownictwo i systemy pierwszej pomocy w przedsiębiorstwie
4928	SP-C17.IBC	5	exc	Met.ilo.jak	45			Metody ilościowej i jakościowej oceny ryzyka
4949	SP-C17.IBC	6	lab	Mul.tre.dec	45			Multimedialny trening decyzyjny
4958	SP-C17.IBC	6	lab	Pra.mod.bez	30			Pracownia modelowania bezpieczeństwa
4966	SP-C17.IBC	6	lab	Pra.pom	30			Praktyki pomiarowe
4945	SP-C17.IBC	6	exc	Jęz.ang	30			Język angielski
4946	SP-C17.IBC	6	exc	Jęz.nie	30			Język niemiecki
4947	SP-C17.IBC	6	exc	Jęz.ros	30			Język rosyjski
4951	SP-C17.IBC	6	exc	Erg.fiz.bez	30			Ergonomia i fizjologia w bezpieczeństwie pracy
4953	SP-C17.IBC	6	exc	Zar.zas.lud	15			Zarządzanie zasobami ludzkimi
4954	SP-C17.IBC	6	exc	Sem.dyp	30			Seminarium dyplomowe
4956	SP-C17.IBC	6	exc	Posa.adm	15			Postępowania administracyjne
4960	SP-C17.IBC	6	exc	Zar.bez.cyw	15			Zarządzanie bezpieczeństwem cywilnym
4965	SP-C17.IBC	6	exc	Wyb.pro.bez	15			Wybrane problemy bezpieczeństwa
4967	SP-C17.IBC	6	exc	Pra.zawodowe	160			Praktyki zawodowe
4971	SP-C17.IBC	7	exc	Wyb.zag.eko	15			Wybrane zagadnienia z ekonomii
4972	SP-C17.IBC	7	exc	Sem.dyp	30			Seminarium dyplomowe
4973	SD-BW3	2	exc	Jęz.ang	30			Język angielski
4973	SD-BW4	2	exc	Jęz.ang	30			Język angielski
4976	SD-BW4	2	exc	Wyc.fiz	15			Wychowanie fizyczne
4976	SD-BW3	2	exc	Wyc.fiz	15			Wychowanie fizyczne
4978	SD-BW3	2	exc	Fil.bez	15			Filozofia bezpieczeństwa
4978	SD-BW4	2	exc	Fil.bez	15			Filozofia bezpieczeństwa
4980	SD-BW4	2	exc	Met.bad.nad	15			Metodologia badań nad bezpieczeństwem
4980	SD-BW3	2	exc	Met.bad.nad	15			Metodologia badań nad bezpieczeństwem
4982	SD-BW4	2	exc	Pra.asp.bez	15			Prawno - funkcjonalne aspekty bezpieczeństwa wewnętrznego
4982	SD-BW3	2	exc	Pra.asp.bez	15			Prawno - funkcjonalne aspekty bezpieczeństwa wewnętrznego
4984	SD-BW3	2	exc	Poz.ins.org	15			Pozarządowe instytucje i organizacje bezpieczeństwa
4984	SD-BW4	2	exc	Poz.ins.org	15			Pozarządowe instytucje i organizacje bezpieczeństwa
4986	SD-BW4	2	exc	Syt.kry.kry	15			Sytuacje kryzysowe, kryzysy i patologie społeczne
4986	SD-BW3	2	exc	Syt.kry.kry	15			Sytuacje kryzysowe, kryzysy i patologie społeczne
4988	SD-BW3	2	exc	Zar.jak.bez	15			Zarządzanie jakością w bezpieczeństwie
4988	SD-BW4	2	exc	Zar.jak.bez	15			Zarządzanie jakością w bezpieczeństwie
4989	SD-BW4	2	exc	Seminarium	6			Seminarium
4989	SD-BW3	2	exc	Seminarium	6			Seminarium
4944	SP-C17.IBC	5	exc	Int.dzi.bez	30			Integracja działań bezpieczeństwa cywilnego
4961	SP-C17.IBC	6	exc	Zar.bez.cyw	30			Zarządzanie bezpieczeństwem cywilnym
4963	SP-C17.IBC	6	exc	Edu.dla.bez.cyw	15			Edukacja dla bezpieczeństwa cywilnego
4969	SP-C17.IBC	7	exc	Zar.cią.dzi	15			Zarządzanie ciągłością działania
4996	SP-CBW4.ZB	5	exc	Int.sił.śro.zar	15			Integracja sił i środków w zarządzaniu bezpieczeństwem
4996	SP-CBW6.ZB	5	exc	Int.sił.śro.zar	15			Integracja sił i środków w zarządzaniu bezpieczeństwem
5022	SP-CBW6.ZB	6	lab	Psy.eko.asp	30			Psychospołeczne i ekonomiczne aspekty zarządzania bezpieczeństwem
5022	SP-CBW4.ZB	6	lab	Psy.eko.asp	30			Psychospołeczne i ekonomiczne aspekty zarządzania bezpieczeństwem
5028	SP-CBW4.ZB	6	lab	Sym.gra.dec	30			Symulacyjna gra decyzyjna
5028	SP-CBW6.ZB	6	lab	Sym.gra.dec	30			Symulacyjna gra decyzyjna
5240	SP-C19	1	lab	Fizyka	15			Fizyka
4998	SP-CBW4.ZB	5	exc	Org.poz.zar	30			Organizacje pozarządowe w zarządzaniu bezpieczeństwem
4998	SP-CBW6.ZB	5	exc	Org.poz.zar	30			Organizacje pozarządowe w zarządzaniu bezpieczeństwem
5000	SP-CBW4.ZB	5	exc	Zar.bez.wew	15			Zarządzanie bezpieczeństwem wewnętrznym w Polsce i wybranych krajach UE
5000	SP-CBW6.ZB	5	exc	Zar.bez.wew	15			Zarządzanie bezpieczeństwem wewnętrznym w Polsce i wybranych krajach UE
5002	SP-CBW6.ZB	5	exc	Jak.zar.bez	30			Jakość w zarządzaniu bezpieczeństwem
5002	SP-CBW4.ZB	5	exc	Jak.zar.bez	30			Jakość w zarządzaniu bezpieczeństwem
5004	SP-CBW6.ZB	5	exc	Pro.dec.ana	30			Procesy decyzyjne i analiza ryzyka w zarządzaniu bezpieczeństwem
5004	SP-CBW4.ZB	5	exc	Pro.dec.ana	30			Procesy decyzyjne i analiza ryzyka w zarządzaniu bezpieczeństwem
5021	SP-CBW4.ZB	6	exc	Inf.kry.zar	15			Infrastruktura krytyczna w zarządzaniu bezpieczeństwem
5021	SP-CBW6.ZB	6	exc	Inf.kry.zar	15			Infrastruktura krytyczna w zarządzaniu bezpieczeństwem
5024	SP-CBW4.ZB	6	exc	Log.zar.bez	15			Logistyka w zarządzaniu bezpieczeństwem
5024	SP-CBW6.ZB	6	exc	Log.zar.bez	15			Logistyka w zarządzaniu bezpieczeństwem
5025	SP-CBW4.ZB	6	exc	Kie.zar.bez	45			Kierowanie i zarządzanie bezpieczeństwem państwa
5025	SP-CBW6.ZB	6	exc	Kie.zar.bez	45			Kierowanie i zarządzanie bezpieczeństwem państwa
5027	SP-CBW4.ZB	6	exc	Psy.eko.asp	15			Psychospołeczne i ekonomiczne aspekty zarządzania bezpieczeństwem
5027	SP-CBW6.ZB	6	exc	Psy.eko.asp	15			Psychospołeczne i ekonomiczne aspekty zarządzania bezpieczeństwem
5038	SP-CBW5	1	exc	Tec.inf	15			Technologie informacyjne
5038	SP-CBW6	1	exc	Tec.inf	15			Technologie informacyjne
5039	SP-CBW5	1	exc	Ekonomia	15			Ekonomia
5039	SP-CBW6	1	exc	Ekonomia	15			Ekonomia
5061	SP-C19	1	exc	Jęz.ang	30			Język angielski
5232	SP-C19	1	exc	Wyc.fiz	30			Wychowanie fizyczne
5236	SP-C19	1	exc	Matematyka	30			Matematyka
5239	SP-C19	1	exc	Fizyka	15			Fizyka
5242	SP-C19	1	exc	Gra.inż	15			Grafika inżynierska
5245	SP-C19	1	exc	Org.i.zar	15			Organizacja i zarządzanie
5247	SP-C19	2	exc	Jęz.ang	30			Język angielski
5250	SP-C19	2	exc	Wyc.fiz	30			Wychowanie fizyczne
5251	SP-C18.IBC	3	exc	Jęz.ang	30			Język angielski
5252	SP-C18.IBC	3	exc	Jęz.nie	30			Język niemiecki
5243	SP-C19	1	exc	Gra.inż	45			Grafika inżynierska
5259	SP-C18.IBC	3	exc	Inż.bez.tec	15			Inżynieria bezpieczeństwa technicznego
5263	SP-C18.IBC	3	exc	Sku.zag.inf.kom	15			Skutki zagrożeń infrastruktury komunalnej
5269	SP-C18.IBC	3	lab	Met.num	30			Metody numeryczne
5275	SP-C18.IBC	3	lab	Pod.Aut	15			Podstawy AutoCada
5391	SD-BW4	4	lab	Sym.gra.dec	18			Symulacyjna gra decyzyjna
5391	SD-BW3	4	lab	Sym.gra.dec	18			Symulacyjna gra decyzyjna
5392	SD-BW3	4	\N	DP	15			Praca dyplomowa
5392	SD-BW4	4	\N	DP	15			Praca dyplomowa
5393	SP-C19	2	lab	Tec.inf	30			Technologie informacyjne
5401	SP-C19	2	lab	Śro.bez.och	15			Środki bezpieczeństwa i ochrony
5403	SP-C19	2	lab	Mon.zag.bez	30			Monitorowanie zagrożeń bezpieczeństwa
5267	SP-C18.IBC	3	exc	Pla.cyw	15			Planowanie cywilne
5271	SP-C18.IBC	3	exc	Mię.ins.bez	30			Międzynarodowe instytucje bezpieczeństwa
5273	SP-C18.IBC	3	exc	Bad.ope	30			Badania operacyjne
5300	NP-C16	3	exc	Jęz.ang	16			Język angielski
5304	NP-C16	3	exc	Pra.kra.mię.lud	16			Prawo krajowe i międzynarodowe w ochronie ludności
5306	NP-C16	3	exc	Org.fun.sys	8			Organizacja i funkcjonowanie systemów bezpieczeństwa
5310	NP-C16	3	exc	Sku.zag.śro	16			Skutki zagrożeń środowiska naturalnego
5314	NP-C16	3	exc	Sku.zag.spo.eko	8			Skutki zagrożeń społeczno - ekonomicznych
5326	NP-C16	3	exc	Ide.ana.zag	8			Identyfikacja i analiza zagrożeń biologicznych
5328	NP-C16	3	exc	Mon.sta.bez	16			Monitorowanie stanu bezpieczeństwa i higieny pracy
5330	NP-C16	3	exc	Dzi.pro	8			Działania profilaktyczne
5334	NP-C16	3	exc	Mas.urz.pro	16			Maszyny i urządzenia produkcyjne
5337	NP-C16	3	exc	Wypadkozna	8			Wypadkoznastwo
5371	SD-BW4	4	exc	Pod.pra.och	15			Podstawy prawne ochrony ludzi i mienia
5371	SD-BW3	4	exc	Pod.pra.och	15			Podstawy prawne ochrony ludzi i mienia
5373	SD-BW4	4	exc	Ewa.ludz.mie	15			Ewakuacja ludzi i mienia
5373	SD-BW3	4	exc	Ewa.ludz.mie	15			Ewakuacja ludzi i mienia
5375	SD-BW4	4	exc	Bez.imp.mas	30			Bezpieczeństwo imprez masowych
5375	SD-BW3	4	exc	Bez.imp.mas	30			Bezpieczeństwo imprez masowych
5377	SD-BW3	4	exc	Obr.cyw.lud	30			Obrona cywilna, ochrona ludności i pomoc humanitarna
5377	SD-BW4	4	exc	Obr.cyw.lud	30			Obrona cywilna, ochrona ludności i pomoc humanitarna
5379	SD-BW4	4	exc	Str.zap.prz	15			Strategie zapobiegania przestępczości
5379	SD-BW3	4	exc	Str.zap.prz	15			Strategie zapobiegania przestępczości
5394	SP-C19	2	exc	Matematyka	30			Matematyka
5395	SP-C19	2	exc	Chemia	30			Chemia
5398	SP-C19	2	exc	Org.sys.rat	15			Organizacja systemów ratownictwa
5400	SP-C19	2	exc	Śro.bez.och	15			Środki bezpieczeństwa i ochrony
5414	SP-C18.IBC	4	exc	Jęz.ang	30			Język angielski
5415	SP-C18.IBC	4	exc	Jęz.nie	30			Język niemiecki
5418	SP-C18.IBC	4	exc	Ana.ryz	30			Analiza ryzyka
5308	NP-C16	3	exc	Inż.bez.tec	8			Inżynieria bezpieczeństwa technicznego
5312	NP-C16	3	exc	Sku.zag.inf.kom	8			Skutki zagrożeń infrastruktury komunalnej
5332	NP-C16	3	exc	Szk.sub.che	16			Szkodliwe substancje chemiczne
5404	SP-C19	2	exc	Mon.zag.bez	15			Monitorowanie zagrożeń bezpieczeństwa
5428	SP-C18.IBC	4	lab	Med.kom.mas	45			Media i komunikowanie masowe
5430	SP-C18.IBC	4	lab	Nau.mat.bud	15			Nauki o materiałach (Budownictwo)
5438	SP-C18.IBC	4	lab	Sys.wsp.dec	15			Systemy wspomagania decyzji
5467	NP-C16	4	lab	Med.kom.mas	24			Media i komunikowanie masowe
5470	NP-C16	4	lab	Nau.mat.bud	8			Nauki o materiałach (Budownictwo)
5486	SP-PK18	2	\N	Słu.ope	0			Służba operacyjna
5486	SP-PK15	2	\N	Słu.ope	0			Służba operacyjna
5486	SP-PK17	2	\N	Słu.ope	0			Służba operacyjna
5486	SP-PK16	2	\N	Słu.ope	0			Służba operacyjna
5488	SP-PK15	3	\N	Słu.ope	0			Służba operacyjna
5488	SP-PK16	3	\N	Słu.ope	0			Służba operacyjna
5488	SP-PK17	3	\N	Słu.ope	0			Służba operacyjna
5488	SP-PK18	3	\N	Słu.ope	0			Służba operacyjna
5496	SP-PK17	4	\N	Słu.ope	0			Służba operacyjna
5496	SP-PK18	4	\N	Słu.ope	0			Służba operacyjna
5496	SP-PK15	4	\N	Słu.ope	0			Służba operacyjna
5496	SP-PK16	4	\N	Słu.ope	0			Służba operacyjna
5421	SP-C18.IBC	4	exc	Bez.inf	15			Bezpieczeństwo informacji
5423	SP-C18.IBC	4	exc	Org.sys.rat	15			Organizacja systemów ratownictwa
5425	SP-C18.IBC	4	exc	Log.bez	15			Logistyka w bezpieczeństwie
5435	SP-C18.IBC	4	exc	Rac.pra.sta	30			Rachunek prawdopodobieństwa i statystyka matematyczna
5437	SP-C18.IBC	4	exc	Sys.wsp.dec	15			Systemy wspomagania decyzji
5453	NP-C16	4	exc	Jęz.ang	24			Język angielski
5457	NP-C16	4	exc	Ana.ryz	16			Analiza ryzyka
5460	NP-C16	4	exc	Bez.inf	8			Bezpieczeństwo informacji
5462	NP-C16	4	exc	Org.sys.rat	8			Organizacja systemów ratownictwa
5464	NP-C16	4	exc	Log.bez	8			Logistyka w bezpieczeństwie
5481	NP-C16	4	exc	Pył.śro.pra	16			Pyły w środowisku pracy
5487	SP-PK16	3	exc	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
5487	SP-PK17	3	exc	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
5487	SP-PK18	3	exc	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
5487	SP-PK15	3	exc	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
5426	SP-C18.IBC	4	exc	Log.bez	15			Logistyka w bezpieczeństwie
5431	SP-C18.IBC	4	exc	Nau.mat.bud	15			Nauki o materiałach (Budownictwo)
5433	SP-C18.IBC	4	exc	Pla.prz	15			Planowanie przestrzenne
5465	NP-C16	4	exc	Log.bez	8			Logistyka w bezpieczeństwie
5469	NP-C16	4	exc	Nau.mat.bud	8			Nauki o materiałach (Budownictwo)
5479	NP-C16	4	exc	Org.met.szk	8			Organizacja i metody szkolenia BHP
5489	SP-PK15	3	-	Mec.wyt.mat	0			Mechanika i wytrzymałość materiałów
5489	SP-PK16	3	-	Mec.wyt.mat	0			Mechanika i wytrzymałość materiałów
5489	SP-PK17	3	-	Mec.wyt.mat	0			Mechanika i wytrzymałość materiałów
5489	SP-PK18	3	-	Mec.wyt.mat	0			Mechanika i wytrzymałość materiałów
5490	SP-PK15	3	-	Hyd.prz.zao	0			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
5490	SP-PK16	3	-	Hyd.prz.zao	0			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
5490	SP-PK17	3	-	Hyd.prz.zao	0			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
5490	SP-PK18	3	-	Hyd.prz.zao	0			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
5498	SP-PK15	5	\N	Słu.ope	0			Służba operacyjna
5498	SP-PK17	5	\N	Słu.ope	0			Służba operacyjna
5498	SP-PK16	5	\N	Słu.ope	0			Służba operacyjna
5498	SP-PK18	5	\N	Słu.ope	0			Służba operacyjna
5501	SP-PK16	6	\N	Słu.ope	0			Służba operacyjna
5501	SP-PK15	6	\N	Słu.ope	0			Służba operacyjna
5501	SP-PK17	6	\N	Słu.ope	0			Służba operacyjna
5501	SP-PK18	6	\N	Słu.ope	0			Służba operacyjna
5502	SP-PK17	7	\N	Słu.ope	0			Służba operacyjna
5502	SP-PK15	7	\N	Słu.ope	0			Służba operacyjna
5502	SP-PK16	7	\N	Słu.ope	0			Służba operacyjna
5502	SP-PK18	7	\N	Słu.ope	0			Służba operacyjna
5506	SP-PC17	1	exc	Chemia	30			Chemia
5506	SP-PC16	1	exc	Chemia	30			Chemia
5506	SP-PC15	1	exc	Chemia	30			Chemia
5506	SP-PC18	1	exc	Chemia	30			Chemia
5510	SP-PC16	2	exc	Chemia	30			Chemia
5510	SP-PC18	2	exc	Chemia	30			Chemia
5510	SP-PC17	2	exc	Chemia	30			Chemia
5510	SP-PC15	2	exc	Chemia	30			Chemia
5497	SP-PK15	5	-	Tec.sys.zab	0			Techniczne systemy zabezpieczeń
5497	SP-PK16	5	-	Tec.sys.zab	0			Techniczne systemy zabezpieczeń
5500	SP-PK17	6	-	Rat.che.i.eko	0			Ratownictwo chemiczne i ekologiczne
5500	SP-PK18	6	-	Rat.che.i.eko	0			Ratownictwo chemiczne i ekologiczne
5500	SP-PK16	6	-	Rat.che.i.eko	0			Ratownictwo chemiczne i ekologiczne
5500	SP-PK15	6	-	Rat.che.i.eko	0			Ratownictwo chemiczne i ekologiczne
5509	SP-PC18	2	-	Matematyka	0			Matematyka
5509	SP-PC17	2	-	Matematyka	0			Matematyka
5509	SP-PC15	2	-	Matematyka	0			Matematyka
5509	SP-PC16	2	-	Matematyka	0			Matematyka
5511	SP-PC16	2	-	Chemia	0			Chemia
5511	SP-PC18	2	-	Chemia	0			Chemia
5511	SP-PC17	2	-	Chemia	0			Chemia
5511	SP-PC15	2	-	Chemia	0			Chemia
5512	SP-PC15	2	-	Tec.inf	0			Technologie informacyjne
5512	SP-PC16	2	-	Tec.inf	0			Technologie informacyjne
5512	SP-PC18	2	-	Tec.inf	0			Technologie informacyjne
5512	SP-PC17	2	-	Tec.inf	0			Technologie informacyjne
5515	SP-PC17	3	-	Mec.wyt.mat	0			Mechanika i wytrzymałość materiałów
5515	SP-PC16	3	-	Mec.wyt.mat	0			Mechanika i wytrzymałość materiałów
5515	SP-PC15	3	-	Mec.wyt.mat	0			Mechanika i wytrzymałość materiałów
5515	SP-PC18	3	-	Mec.wyt.mat	0			Mechanika i wytrzymałość materiałów
5516	SP-PC15	3	-	Hyd.prz.zao	0			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
5516	SP-PC17	3	-	Hyd.prz.zao	0			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
5516	SP-PC16	3	-	Hyd.prz.zao	0			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
5517	SP-PC18	3	-	Pod.bud	0			Podstawy budownictwa
5564	SP-PK17	7	\N	Pra.stu	0			Praktyka studencka
5564	SP-PK18	7	\N	Pra.stu	0			Praktyka studencka
5564	SP-PK15	7	\N	Pra.stu	0			Praktyka studencka
5564	SP-PK16	7	\N	Pra.stu	0			Praktyka studencka
5565	SP-PK17	8	\N	DP	0			Praca dyplomowa
5565	SP-PK16	8	\N	DP	0			Praca dyplomowa
5565	SP-PK18	8	\N	DP	0			Praca dyplomowa
5565	SP-PK15	8	\N	DP	0			Praca dyplomowa
5569	SP-PC16	7	\N	Pra.stu	0			Praktyka studencka
5569	SP-PC18	7	\N	Pra.stu	0			Praktyka studencka
5569	SP-PC15	7	\N	Pra.stu	0			Praktyka studencka
5569	SP-PC17	7	\N	Pra.stu	0			Praktyka studencka
5570	SD-P12	3	\N	DP	0			Praca dyplomowa
5570	SD-P13	3	\N	DP	0			Praca dyplomowa
5571	SD-P12	3	\N	Stu.pra.zaw	0			Studencka praktyka zawodowa
5571	SD-P13	3	\N	Stu.pra.zaw	0			Studencka praktyka zawodowa
5533	SP-CBW6	2	exc	Nau.pań.pra	30			Nauki o państwie i prawie
5535	SP-CBW6	2	exc	Org.fun.adm.sam	15			Organizacja i funkcjonowanie administracji samorządowej
5535	SP-CBW5	2	exc	Org.fun.adm.sam	15			Organizacja i funkcjonowanie administracji samorządowej
5537	SP-CBW5	2	exc	Wsp.pro.bez	30			Współczesne problemy bezpieczeństwa
5537	SP-CBW6	2	exc	Wsp.pro.bez	30			Współczesne problemy bezpieczeństwa
5539	SP-CBW5	2	exc	Pra.kar.mat	15			Prawo karne materialne w bezpieczeństwie
5539	SP-CBW6	2	exc	Pra.kar.mat	15			Prawo karne materialne w bezpieczeństwie
5542	SP-CBW5	2	exc	Sys.bez.RP	15			System Bezpieczeństwa RP
5542	SP-CBW6	2	exc	Sys.bez.RP	15			System Bezpieczeństwa RP
5544	SP-CBW6	2	exc	Och.dan.oso	15			Ochrona danych osobowych i informacji niejawnych
5544	SP-CBW5	2	exc	Och.dan.oso	15			Ochrona danych osobowych i informacji niejawnych
5546	SP-CBW5	2	exc	Pra.cyw.adm	30			Prawo cywilne i administracyjne
5546	SP-CBW6	2	exc	Pra.cyw.adm	30			Prawo cywilne i administracyjne
5547	SP-CBW6	4	exc	Jęz.ang	30			Język angielski
5547	SP-CBW5	4	exc	Jęz.ang	30			Język angielski
5551	SP-CBW6	4	exc	Wsp.sys.pol	15			Współczesne systemy polityczne
5551	SP-CBW5	4	exc	Wsp.sys.pol	15			Współczesne systemy polityczne
5554	SP-CBW6	4	exc	Prz.obr.pań	15			Przygotowania obronne panstwa
5554	SP-CBW5	4	exc	Prz.obr.pań	15			Przygotowania obronne panstwa
5558	SP-CBW6	4	exc	Bez.spo.pan	30			Bezpieczeństwo społeczno - ekonomiczne państwa
5558	SP-CBW5	4	exc	Bez.spo.pan	30			Bezpieczeństwo społeczno - ekonomiczne państwa
5560	SP-CBW5	4	exc	Och.osó.mie	30			Ochrona osób, mienia, obiektów i obszarów
5560	SP-CBW6	4	exc	Och.osó.mie	30			Ochrona osób, mienia, obiektów i obszarów
5562	SP-CBW6	4	exc	Pra.czł.ety	15			Prawa człowieka i etyka zawodowa funkcjonariuszy służb publicznych
5562	SP-CBW5	4	exc	Pra.czł.ety	15			Prawa człowieka i etyka zawodowa funkcjonariuszy służb publicznych
5566	SP-CBW6	4	exc	Inf.kry	15			Infrastruktura krytyczna
5566	SP-CBW5	4	exc	Inf.kry	15			Infrastruktura krytyczna
5567	SP-CBW5	4	exc	Prosem.dyp	15			Proseminarium dyplomowe
5576	NP-PS45	2	-	Matematyka	0			Matematyka
5576	NP-PS46	2	-	Matematyka	0			Matematyka
5576	NP-PS43	2	-	Matematyka	0			Matematyka
5576	NP-PS44	2	-	Matematyka	0			Matematyka
5577	NP-PS43	2	-	Chemia	0			Chemia
5577	NP-PS44	2	-	Chemia	0			Chemia
5577	NP-PS45	2	-	Chemia	0			Chemia
5577	NP-PS46	2	-	Chemia	0			Chemia
5578	NP-PS46	2	-	Tec.inf	0			Technologie informacyjne
5578	NP-PS43	2	-	Tec.inf	0			Technologie informacyjne
5578	NP-PS45	2	-	Tec.inf	0			Technologie informacyjne
5578	NP-PS44	2	-	Tec.inf	0			Technologie informacyjne
5581	NP-PS46	3	-	Mec.wyt.mat	0			Mechanika i wytrzymałość materiałów
5581	NP-PS45	3	-	Mec.wyt.mat	0			Mechanika i wytrzymałość materiałów
5581	NP-PS43	3	-	Mec.wyt.mat	0			Mechanika i wytrzymałość materiałów
5581	NP-PS44	3	-	Mec.wyt.mat	0			Mechanika i wytrzymałość materiałów
5582	NP-PS44	3	-	Hyd.prz.zao	0			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
5582	NP-PS46	3	-	Hyd.prz.zao	0			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
5582	NP-PS43	3	-	Hyd.prz.zao	0			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
5582	NP-PS45	3	-	Hyd.prz.zao	0			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
5583	NP-PS43	3	-	Pod.bud	0			Podstawy budownictwa
5583	NP-PS44	3	-	Pod.bud	0			Podstawy budownictwa
5583	NP-PS45	3	-	Pod.bud	0			Podstawy budownictwa
5583	NP-PS46	3	-	Pod.bud	0			Podstawy budownictwa
5589	NP-PS44	5	-	Tec.sys.zab	0			Techniczne systemy zabezpieczeń
5589	NP-PS43	5	-	Tec.sys.zab	0			Techniczne systemy zabezpieczeń
5589	NP-PS46	5	-	Tec.sys.zab	0			Techniczne systemy zabezpieczeń
5589	NP-PS45	5	-	Tec.sys.zab	0			Techniczne systemy zabezpieczeń
5592	NP-PS44	6	-	Rat.che.i.eko	0			Ratownictwo chemiczne i ekologiczne
5592	NP-PS43	6	-	Rat.che.i.eko	0			Ratownictwo chemiczne i ekologiczne
5592	NP-PS45	6	-	Rat.che.i.eko	0			Ratownictwo chemiczne i ekologiczne
5592	NP-PS46	6	-	Rat.che.i.eko	0			Ratownictwo chemiczne i ekologiczne
5629	ND-P35	3	\N	DP	0			Praca dyplomowa
5629	ND-P34	3	\N	DP	0			Praca dyplomowa
5630	ND-P34	3	\N	Stu.pra.zaw	0			Studencka praktyka zawodowa
5630	ND-P35	3	\N	Stu.pra.zaw	0			Studencka praktyka zawodowa
5597	NP-PS45	8	lec	Szk.obr	12			Szkolenie obronne
5596	NP-PS44	8	exc	Jęz.ros	8			Język rosyjski
5596	NP-PS43	8	exc	Jęz.ros	8			Język rosyjski
5596	NP-PS45	8	exc	Jęz.ros	8			Język rosyjski
5615	NP-PC20	5	exc	Jęz.ros	16			Język rosyjski
5615	NP-PC21	5	exc	Jęz.ros	16			Język rosyjski
5615	NP-PC19	5	exc	Jęz.ros	16			Język rosyjski
5615	NP-PC18	5	exc	Jęz.ros	16			Język rosyjski
5618	NP-PC21	6	exc	Jęz.ros	16			Język rosyjski
5618	NP-PC18	6	exc	Jęz.ros	16			Język rosyjski
5618	NP-PC20	6	exc	Jęz.ros	16			Język rosyjski
5618	NP-PC19	6	exc	Jęz.ros	16			Język rosyjski
5621	NP-PC21	7	exc	Jęz.ros	14			Język rosyjski
5602	NP-PC21	2	-	Matematyka	0			Matematyka
5602	NP-PC18	2	-	Matematyka	0			Matematyka
5602	NP-PC19	2	-	Matematyka	0			Matematyka
5602	NP-PC20	2	-	Matematyka	0			Matematyka
5603	NP-PC18	2	-	Chemia	0			Chemia
5603	NP-PC20	2	-	Chemia	0			Chemia
5603	NP-PC19	2	-	Chemia	0			Chemia
5603	NP-PC21	2	-	Chemia	0			Chemia
5604	NP-PC19	2	-	Tec.inf	0			Technologie informacyjne
5604	NP-PC18	2	-	Tec.inf	0			Technologie informacyjne
5604	NP-PC20	2	-	Tec.inf	0			Technologie informacyjne
5604	NP-PC21	2	-	Tec.inf	0			Technologie informacyjne
5607	NP-PC18	3	-	Mec.wyt.mat	0			Mechanika i wytrzymałość materiałów
5607	NP-PC21	3	-	Mec.wyt.mat	0			Mechanika i wytrzymałość materiałów
5607	NP-PC20	3	-	Mec.wyt.mat	0			Mechanika i wytrzymałość materiałów
5607	NP-PC19	3	-	Mec.wyt.mat	0			Mechanika i wytrzymałość materiałów
5608	NP-PC21	3	-	Hyd.prz.zao	0			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
5608	NP-PC20	3	-	Hyd.prz.zao	0			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
5608	NP-PC18	3	-	Hyd.prz.zao	0			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
5608	NP-PC19	3	-	Hyd.prz.zao	0			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
5609	NP-PC21	3	-	Pod.bud	0			Podstawy budownictwa
5609	NP-PC19	3	-	Pod.bud	0			Podstawy budownictwa
5609	NP-PC18	3	-	Pod.bud	0			Podstawy budownictwa
5609	NP-PC20	3	-	Pod.bud	0			Podstawy budownictwa
5612	SP-C19	2	-	Matematyka	0			Matematyka
5613	SP-C19	2	-	Chemia	0			Chemia
5616	NP-PC19	5	-	Tec.sys.zab	0			Techniczne systemy zabezpieczeń
5616	NP-PC21	5	-	Tec.sys.zab	0			Techniczne systemy zabezpieczeń
5616	NP-PC18	5	-	Tec.sys.zab	0			Techniczne systemy zabezpieczeń
5650	NP-PS46	8	\N	DP	0			Praca dyplomowa
5650	NP-PS44	8	\N	DP	0			Praca dyplomowa
5650	NP-PS43	8	\N	DP	0			Praca dyplomowa
5650	NP-PS45	8	\N	DP	0			Praca dyplomowa
5651	NP-PS43	7	--	Pra.stu	0			Praktyka studencka
5651	NP-PS44	7	--	Pra.stu	0			Praktyka studencka
5651	NP-PS45	7	--	Pra.stu	0			Praktyka studencka
5651	NP-PS46	7	--	Pra.stu	0			Praktyka studencka
5652	NP-PC19	8	\N	DP	0			Praca dyplomowa
5652	NP-PC18	8	\N	DP	0			Praca dyplomowa
5652	NP-PC21	8	\N	DP	0			Praca dyplomowa
5652	NP-PC20	8	\N	DP	0			Praca dyplomowa
5653	NP-PC21	7	--	Pra.stu	0			Praktyka studencka
5653	NP-PC19	7	--	Pra.stu	0			Praktyka studencka
5653	NP-PC20	7	--	Pra.stu	0			Praktyka studencka
5653	NP-PC18	7	--	Pra.stu	0			Praktyka studencka
5824	SP-CBW4.OL	6	lab	Sym.gra.dec	30			Symulacyjna gra decyzyjna
5824	SP-CBW5.OL	6	lab	Sym.gra.dec	30			Symulacyjna gra decyzyjna
5647	ND-BW4	2	exc	Zar.jak.bez	9			Zarządzanie jakością w bezpieczeństwie
5648	ND-BW4	2	exc	Wyc.fiz	9			Wychowanie fizyczne
5649	ND-BW4	2	exc	Seminarium	4			Seminarium
5792	SP-CBW4.OL	5	exc	Pod.pra.cel	15			Podstawy prawne i cele działania obrony cywilnej
5792	SP-CBW5.OL	5	exc	Pod.pra.cel	15			Podstawy prawne i cele działania obrony cywilnej
5794	SP-CBW5.OL	5	exc	Zag.nat	30			Zagrożenia naturalne
5794	SP-CBW4.OL	5	exc	Zag.nat	30			Zagrożenia naturalne
5797	SP-CBW4.OL	5	exc	Sem.dyp	30			Seminarium dyplomowe
5797	SP-CBW5.OL	5	exc	Sem.dyp	30			Seminarium dyplomowe
5808	SP-CBW4.OL	5	exc	Pom.hum.wym	15			Pomoc humanitarna w wymiarze międzynarodowym
5808	SP-CBW5.OL	5	exc	Pom.hum.wym	15			Pomoc humanitarna w wymiarze międzynarodowym
5809	SP-CBW4.OL	5	exc	Zag.cyw.tec	30			Zagrożenia cywilizacyjno - techniczne
5809	SP-CBW5.OL	5	exc	Zag.cyw.tec	30			Zagrożenia cywilizacyjno - techniczne
5812	SP-CBW4.OL	5	exc	Org.poz.och	15			Organizacje pozarządowe w ochronie ludności
5812	SP-CBW5.OL	5	exc	Org.poz.och	15			Organizacje pozarządowe w ochronie ludności
5814	SP-CBW4.OL	5	exc	Słu.pań.och	15			Służby państwowe w ochronie ludności
5814	SP-CBW5.OL	5	exc	Słu.pań.och	15			Służby państwowe w ochronie ludności
5816	SP-CBW4.OL	6	exc	Pow.Sys.Och	30			Powszechny System Ochrony Ludności
5816	SP-CBW5.OL	6	exc	Pow.Sys.Och	30			Powszechny System Ochrony Ludności
5825	SP-CBW4.OL	6	exc	Rat.ewa.lud	30			Ratownictwo i ewakuacja ludności i mienia
5825	SP-CBW5.OL	6	exc	Rat.ewa.lud	30			Ratownictwo i ewakuacja ludności i mienia
5828	SP-CBW4.OL	6	exc	Org.obr.cyw	15			Organizacja obrony cywilnej i obrony narodowej
5828	SP-CBW5.OL	6	exc	Org.obr.cyw	15			Organizacja obrony cywilnej i obrony narodowej
5829	SP-CBW5.OL	6	exc	Sys.wyk.ska	15			Systemy wykrywania skażeń i alarmowania
5840	SP-C18.IBPr	3	exc	Szk.sub.che	30			Szkodliwe substancje chemiczne
5879	SP-C18.IBPr	4	lab	Nau.mat.bud	15			Nauki o materiałach (Budownictwo)
5882	SP-C18.IBPr	4	lab	Med.kom.mas	45			Media i komunikowanie masowe
5855	SP-C18.IBPr	3	exc	Pra.kra.mię.lud	30			Prawo krajowe i międzynarodowe w ochronie ludności
5856	SP-C18.IBPr	3	exc	Org.fun.sys	15			Organizacja i funkcjonowanie systemów bezpieczeństwa
5861	SP-C18.IBPr	4	exc	Org.sys.rat	15			Organizacja systemów ratownictwa
5863	SP-C18.IBPr	4	exc	Log.bez	15			Logistyka w bezpieczeństwie
5870	SP-C18.IBPr	4	exc	Bez.inf	15			Bezpieczeństwo informacji
5871	SP-C18.IBPr	3	exc	Sku.zag.śro	30			Skutki zagrożeń środowiska naturalnego
5895	SP-C18.IBPr	3	exc	Ide.ana.zag	15			Identyfikacja i analiza zagrożeń biologicznych
5899	SP-C18.IBPr	3	exc	Mon.sta.bez	30			Monitorowanie stanu bezpieczeństwa i higieny pracy
5912	NP-CBW6	1	exc	Jęz.ang	18			Język angielski
5913	NP-CBW6	2	exc	Jęz.ang	18			Język angielski
5914	NP-CBW6	1	exc	Tec.inf	9			Technologie informacyjne
5916	NP-CBW6	2	exc	Wyc.fiz	18			Wychowanie fizyczne
5917	NP-CBW6	1	exc	Wyc.fiz	18			Wychowanie fizyczne
5919	NP-CBW6	1	exc	Erg.fiz.bez	9			Ergonomia i fizjologia w bezpieczeństwie pracy
5921	NP-CBW6	1	exc	Och.wła.int	9			Ochrona własności intelektualnej
5923	NP-CBW6	1	exc	His.bez	9			Historia bezpieczeństwa
5925	NP-CBW6	1	exc	Org.i.zar	9			Organizacja i zarządzanie
5927	NP-CBW6	2	exc	Org.i.zar	9			Organizacja i zarządzanie
5929	NP-CBW6	1	exc	Ekonomia	9			Ekonomia
5931	NP-CBW6	1	exc	Pod.teo.bez	9			Podstawy teorii bezpieczeństwa
5933	NP-CBW6	2	exc	Nau.pań.pra	18			Nauki o państwie i prawie
5935	NP-CBW6	2	exc	Org.fun.adm.sam	9			Organizacja i funkcjonowanie administracji samorządowej
5937	NP-CBW6	1	exc	Org.fun.adm.rzą	9			Organizacja i funkcjonowanie administracji rządowej
5939	NP-CBW6	2	exc	Wsp.pro.bez	18			Współczesne problemy bezpieczeństwa
5941	NP-CBW6	1	exc	Wsp.zag.bez	18			Współczesne zagrożenia bezpieczeństwa
5943	NP-CBW6	2	exc	Pra.kar.mat	9			Prawo karne materialne w bezpieczeństwie
5945	NP-CBW6	2	exc	Sys.bez.RP	9			System Bezpieczeństwa RP
5948	NP-CBW6	2	exc	Och.dan.oso	9			Ochrona danych osobowych i informacji niejawnych
5950	NP-CBW6	2	exc	Pra.cyw.adm	18			Prawo cywilne i administracyjne
5981	Inne	1	exc	Rat.Spe.WUM	1			Ratownictwo Specjalistyczne WUM
5985	Erasmus	1	exc	Era.bui.Fir	60			Erasmus: Building Fire Safety and Fire Safety Engineering
5986	NP-PC18	5	exc	Jęz.nie	16			Język niemiecki
5986	NP-PC19	5	exc	Jęz.nie	16			Język niemiecki
5868	SP-C18.IBPr	4	exc	Log.bez	15			Logistyka w bezpieczeństwie
5872	SP-C18.IBPr	3	exc	Inż.bez.tec	15			Inżynieria bezpieczeństwa technicznego
5873	SP-C18.IBPr	3	exc	Sku.zag.inf.kom	15			Skutki zagrożeń infrastruktury komunalnej
5883	SP-C18.IBPr	4	exc	Nau.mat.bud	15			Nauki o materiałach (Budownictwo)
5900	SP-C18.IBPr	4	exc	Org.met.szk	15			Organizacja i metody szkolenia BHP
6148	ND-BW4	4	lab	Sym.gra.dec	18			Symulacyjna gra decyzyjna
6176	NP-C16	5	lab	Mod.zag	24			Modelowanie zagrożeń
6191	NP-C16	6	lab	Mul.tre.dec	24			Multimedialny trening decyzyjny
6210	NP-C16	6	lab	Erg.pro.sta	16			Ergonomia i projektowanie stanowisk pracy
6218	NP-C16	6	lab	Pra.pom	30			Praktyki pomiarowe
5986	NP-PC20	5	exc	Jęz.nie	16			Język niemiecki
5986	NP-PC21	5	exc	Jęz.nie	16			Język niemiecki
5987	NP-PC18	6	exc	Jęz.nie	16			Język niemiecki
5987	NP-PC20	6	exc	Jęz.nie	16			Język niemiecki
5987	NP-PC19	6	exc	Jęz.nie	16			Język niemiecki
5987	NP-PC21	6	exc	Jęz.nie	16			Język niemiecki
5988	NP-PC21	7	exc	Jęz.nie	14			Język niemiecki
5988	NP-PC19	7	exc	Jęz.nie	14			Język niemiecki
5988	NP-PC20	7	exc	Jęz.nie	14			Język niemiecki
5988	NP-PC18	7	exc	Jęz.nie	14			Język niemiecki
5989	NP-PC20	8	exc	Jęz.nie	8			Język niemiecki
5989	NP-PC19	8	exc	Jęz.nie	8			Język niemiecki
5989	NP-PC18	8	exc	Jęz.nie	8			Język niemiecki
5989	NP-PC21	8	exc	Jęz.nie	8			Język niemiecki
5992	Erasmus	1	exc	Era.fir.and	15			Erasmus: Fire and explosion hazard assessment
5995	Erasmus	1	exc	Era.Ris.Ana	30			Erasmus: Risk Analysis
5997	Erasmus	1	exc	Era.Mat	90			Erasmus: Mathematics
5999	Erasmus	1	exc	Era.Mat.Mak	30			Erasmus: Mathematical Making Decision
6001	Erasmus	1	exc	Era.Phy	30			Erasmus: Physics
6002	Erasmus	1	exc	Era.des.sta	30			Erasmus: Descriptive statistics
6137	NP-C15	6	exc	Jęz.nie	24			Język niemiecki
6149	ND-BW4	4	exc	DP	15			Praca dyplomowa
6151	ND-BW4	4	exc	Pod.pra.och	9			Podstawy prawne ochrony ludzi i mienia
6153	ND-BW4	4	exc	Ewa.ludz.mie	9			Ewakuacja ludzi i mienia
6155	ND-BW4	4	exc	Bez.imp.mas	18			Bezpieczeństwo imprez masowych
6157	ND-BW4	4	exc	Obr.cyw.lud	18			Obrona cywilna, ochrona ludności i pomoc humanitarna
6159	ND-BW4	4	exc	Str.zap.prz	9			Strategie zapobiegania przestępczości
6169	NP-C16	5	exc	Jęz.ang	24			Język angielski
6170	NP-C16	5	exc	Psy.soc	8			Psychologia i socjologia
5993	Erasmus	1	exc	Era.fir.and	15			Erasmus: Fire and explosion hazard assessment
6172	NP-C16	5	exc	Met.ilo.jak	24			Metody ilościowej i jakościowej oceny ryzyka
6186	NP-C16	5	exc	Zag.poż.wyb	8			Zagrożenia pożarowe i wybuchowe
6213	NP-C16	6	exc	Zag.ele	16			Zagrożenia elektroenergetyczne
6260	SP-C19	3	lab	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
6270	SP-C19	3	lab	Nau.mat	15			Nauka o materiałach
6295	SP-C18.IBC	5	lab	Mod.zag	45			Modelowanie zagrożeń
6224	NP-CBW6	3	lec	Pla.cyw	18			Planowanie cywilne
6221	NP-CBW6	3	exc	Jęz.ang	18			Język angielski
6223	NP-CBW6	3	exc	Ins.źró.pra	18			Instytucje i źródła prawa UE
6225	NP-CBW6	3	exc	Pla.cyw	9			Planowanie cywilne
6227	NP-CBW6	3	exc	Zar.kry	9			Zarządzanie kryzysowe
6229	NP-CBW6	3	exc	Bez.spo.lok	9			Bezpieczeństwo społeczności lokalnych i kształtowanie bezpiecznych przestrzeni
6232	NP-CBW6	3	exc	Sys.ins.bez	18			Systemy i instytucje bezpieczeństwa wewnętrznego
6234	NP-CBW6	3	exc	Pos.adm.cyw	18			Postępowanie administracyjne i cywilne
6235	NP-CBW6	4	exc	Jęz.ang	18			Język angielski
6237	NP-CBW6	4	exc	Psy.soc	9			Psychologia i socjologia
6239	NP-CBW6	4	exc	Wsp.sys.pol	9			Współczesne systemy polityczne
6242	NP-CBW6	4	exc	Prz.obr.pań	9			Przygotowania obronne panstwa
6244	NP-CBW6	4	exc	Zar.kry	9			Zarządzanie kryzysowe
6246	NP-CBW6	4	exc	Bez.spo.lok	9			Bezpieczeństwo społeczności lokalnych i kształtowanie bezpiecznych przestrzeni
6248	NP-CBW6	4	exc	Bez.spo.pan	18			Bezpieczeństwo społeczno - ekonomiczne państwa
6250	NP-CBW6	4	exc	Och.osó.mie	18			Ochrona osób, mienia, obiektów i obszarów
6252	NP-CBW6	4	exc	Pra.czł.ety	9			Prawa człowieka i etyka zawodowa funkcjonariuszy służb publicznych
6254	NP-CBW6	4	exc	Inf.kry	9			Infrastruktura krytyczna
6255	NP-CBW6	4	exc	Prosem.dyp	9			Proseminarium dyplomowe
6256	NP-CBW6	4	exc	Praktyka	120			Praktyka
6257	SP-C19	3	exc	Jęz.ang	30			Język angielski
6259	SP-C19	3	exc	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
6262	SP-C19	3	exc	Org.fun.sys	15			Organizacja i funkcjonowanie systemów bezpieczeństwa
6264	SP-C19	3	exc	Sku.zag.śro	30			Skutki zagrożeń środowiska naturalnego
6268	SP-C19	3	exc	Sku.zag.spo	15			Skutki zagrożeń społecznych
6273	SP-C18.IBC	5	exc	Jęz.nie	30			Język niemiecki
6277	SP-C19	3	exc	Ide.ana.zag	15			Identyfikacja i analiza zagrożeń biologicznych
6279	SP-C19	4	exc	Jęz.ang	30			Język angielski
6281	SP-C19	4	exc	Psy.soc	15			Psychologia i socjologia
6283	SP-C19	4	exc	Ana.ryz	30			Analiza ryzyka
6285	SP-C19	4	exc	Log.bez	15			Logistyka w bezpieczeństwie
6286	SP-C18.IBC	5	exc	Jęz.ang	30			Język angielski
6287	SP-C18.IBC	5	exc	Psy.soc	15			Psychologia i socjologia
6292	SP-C18.IBC	5	exc	Sku.zag.bio	15			Skutki zagrożeń biologicznych i ekologicznych
6298	SP-C18.IBC	5	exc	Inf.kry	15			Infrastruktura krytyczna
6266	SP-C19	3	exc	Sku.zag.inf.kom	15			Skutki zagrożeń infrastruktury komunalnej
6289	SP-C18.IBC	5	exc	Met.ilo.jak	45			Metody ilościowej i jakościowej oceny ryzyka
6290	SP-C19	4	exc	Log.bez	15			Logistyka w bezpieczeństwie
6297	SP-C19	4	exc	Bez.zak.zwi	30			Bezpieczeństwo zakładów zwiększonego i dużego ryzyka
6312	SP-C18.IBC	5	lab	Sys.inf.prz	15			Systemy informacji przestrzennej
6326	SP-C18.IBPr	5	lab	Mod.zag	45			Modelowanie zagrożeń
6341	SP-C18.IBC	6	lab	Mul.tre.dec	45			Multimedialny trening decyzyjny
6351	SP-C18.IBC	6	lab	Pra.mod.bez	30			Pracownia modelowania bezpieczeństwa
6359	SP-C18.IBC	6	lab	Pra.pom	30			Praktyki pomiarowe
6364	SP-C18.IBPr	6	lab	Mul.tre.dec	45			Multimedialny trening decyzyjny
6373	SP-C18.IBPr	6	lab	Erg.pro.sta	30			Ergonomia i projektowanie stanowisk pracy
6300	SP-C19	4	exc	Zar.bez.pra	30			Zarządzanie bezpieczeństwem pracy
6301	SP-C18.IBC	5	exc	Prosem.dyp	15			Proseminarium dyplomowe
6306	SP-C18.IBC	5	exc	Ele.teo.dec	15			Elementy teorii decyzji
6308	SP-C18.IBC	5	exc	Zar.kry	30			Zarządzanie kryzysowe
6310	SP-C19	4	exc	Mon.sta.bez	15			Monitorowanie stanu bezpieczeństwa i higieny pracy
6314	SP-C19	4	exc	Szk.sub.che	15			Szkodliwe substancje chemiczne
6316	SP-C18.IBC	5	exc	Int.dzi.bez	15			Integracja działań bezpieczeństwa cywilnego
6319	SP-C18.IBPr	5	exc	Jęz.ang	30			Język angielski
6320	SP-C18.IBPr	5	exc	Jęz.nie	30			Język niemiecki
6324	SP-C18.IBPr	5	exc	Sku.zag.bio	15			Skutki zagrożeń biologicznych i ekologicznych
6328	SP-C18.IBPr	5	exc	Inf.kry	15			Infrastruktura krytyczna
6329	SP-C18.IBPr	5	exc	Prosem.dyp	15			Proseminarium dyplomowe
6331	SP-C18.IBPr	5	exc	Śro.och.ind	15			Środki ochrony indywidualnej i zbiorowej
6333	SP-C18.IBPr	5	exc	Pra.zmi	15			Praca zmianowa
6335	SP-C18.IBPr	5	exc	Zag.poż.wyb	15			Zagrożenia pożarowe i wybuchowe
6338	SP-C18.IBPr	5	exc	Mik.śro.pra	15			Mikroklimat środowiska pracy
6339	SP-C18.IBC	6	exc	Jęz.ang	30			Język angielski
6340	SP-C18.IBC	6	exc	Jęz.nie	30			Język niemiecki
6344	SP-C18.IBC	6	exc	Erg.fiz.bez	30			Ergonomia i fizjologia w bezpieczeństwie pracy
6346	SP-C18.IBC	6	exc	Zar.zas.lud	15			Zarządzanie zasobami ludzkimi
6347	SP-C18.IBC	6	exc	Sem.dyp	30			Seminarium dyplomowe
6349	SP-C18.IBC	6	exc	Pos.adm	15			Postępowanie administracyjne
6353	SP-C18.IBC	6	exc	Zar.bez.cyw	15			Zarządzanie bezpieczeństwem cywilnym
6358	SP-C18.IBC	6	exc	Wyb.pro.bez	15			Wybrane problemy bezpieczeństwa
6360	SP-C18.IBC	6	exc	Pra.zawodowe	160			Praktyki zawodowe
6361	SP-C18.IBPr	6	exc	Jęz.ang	30			Język angielski
6362	SP-C18.IBPr	6	exc	Jęz.nie	30			Język niemiecki
6366	SP-C18.IBPr	6	exc	Erg.fiz.bez	30			Ergonomia i fizjologia w bezpieczeństwie pracy
6368	SP-C18.IBPr	6	exc	Zar.zas.lud	15			Zarządzanie zasobami ludzkimi
6302	SP-C19	4	exc	Zar.bez.pra	15			Zarządzanie bezpieczeństwem pracy
6304	SP-C19	4	exc	Erg.pro.sta	15			Ergonomia i projektowanie stanowisk pracy
6315	SP-C19	4	exc	Szk.sub.che	30			Szkodliwe substancje chemiczne
6317	SP-C18.IBC	5	exc	Int.dzi.bez	30			Integracja działań bezpieczeństwa cywilnego
6322	SP-C18.IBPr	5	exc	Met.ilo.jak	45			Metody ilościowej i jakościowej oceny ryzyka
6336	SP-C18.IBPr	5	exc	Zag.poż.wyb	15			Zagrożenia pożarowe i wybuchowe
6354	SP-C18.IBC	6	exc	Zar.bez.cyw	30			Zarządzanie bezpieczeństwem cywilnym
6356	SP-C18.IBC	6	exc	Edu.dla.bez.cyw	15			Edukacja dla bezpieczeństwa cywilnego
6381	SP-C18.IBPr	6	lab	Pra.pom	30			Praktyki pomiarowe
6427	SP-PK19	2	lab	Tec.inf	30			Technologie informacyjne
6427	SP-PK20	2	lab	Tec.inf	30			Technologie informacyjne
6498	SP-PK20	2	lab	Fizyka	30			Fizyka
6498	SP-PK19	2	lab	Fizyka	30			Fizyka
6551	NP-PS48A	2	lab	Fizyka	18			Fizyka
6551	NP-PS47A	2	lab	Fizyka	18			Fizyka
6378	SP-C18.IBPr	6	exc	Pro.opt.wid	15			Promieniowanie optyczne i widzialne
6380	SP-C18.IBPr	6	exc	Oce.ryz.zaw	15			Ocena ryzyka zawodowego w systemie zarządzania bezpieczeństwem pracy
6382	SP-C18.IBPr	6	exc	Pra.zawodowe	160			Praktyki zawodowe
6392	SP-PK19	1	exc	Fizyka	30			Fizyka
6392	SP-PK20	1	exc	Fizyka	30			Fizyka
6418	SP-PK20	1	exc	Chemia	30			Chemia
6418	SP-PK19	1	exc	Chemia	30			Chemia
6428	SP-PK20	1	exc	Jęz.ang	30			Język angielski
6428	SP-PK19	1	exc	Jęz.ang	30			Język angielski
6429	SP-PK20	2	exc	Chemia	30			Chemia
6429	SP-PK19	2	exc	Chemia	30			Chemia
6485	SP-PK19	1	exc	Matematyka	45			Matematyka
6485	SP-PK20	1	exc	Matematyka	45			Matematyka
6486	SP-PK20	2	exc	Matematyka	45			Matematyka
6486	SP-PK19	2	exc	Matematyka	45			Matematyka
6487	SP-PK20	2	exc	Jęz.ang	30			Język angielski
6487	SP-PK19	2	exc	Jęz.ang	30			Język angielski
6488	SP-PK20	2	exc	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
6488	SP-PK19	2	exc	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
6489	SP-PK19	2	exc	Hyd.prz.zao	30			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
6489	SP-PK20	2	exc	Hyd.prz.zao	30			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
6493	SP-PK19	1	exc	Rys.tec	30			Rysunek techniczny
6493	SP-PK20	1	exc	Rys.tec	30			Rysunek techniczny
6496	SP-PK20	2	exc	Wyc.fiz	30			Wychowanie fizyczne
6496	SP-PK19	2	exc	Wyc.fiz	30			Wychowanie fizyczne
6376	SP-C18.IBPr	6	exc	Zag.ele	30			Zagrożenia elektroenergetyczne
6495	SP-PK19	2	exc	Gra.inż	30			Grafika inżynierska
6495	SP-PK20	2	exc	Gra.inż	30			Grafika inżynierska
6405	SP-PK20	2	-	Chemia	0			Chemia
6405	SP-PK19	2	-	Chemia	0			Chemia
6484	SP-PK19	2	-	Matematyka	0			Matematyka
6484	SP-PK20	2	-	Matematyka	0			Matematyka
6494	SP-PK20	2	-	Tec.inf	0			Technologie informacyjne
6494	SP-PK19	2	-	Tec.inf	0			Technologie informacyjne
6574	NP-PS47A	2	-	Tec.inf	0			Technologie informacyjne
6574	NP-PS48A	2	-	Tec.inf	0			Technologie informacyjne
6577	NP-PS47A	2	-	Matematyka	0			Matematyka
6616	NP-PS48A	2	lab	Tec.inf	18			Technologie informacyjne
6616	NP-PS47A	2	lab	Tec.inf	18			Technologie informacyjne
6648	NP-PS48B	2	lab	Fizyka	18			Fizyka
6648	NP-PS47B	2	lab	Fizyka	18			Fizyka
6666	NP-PS48B	2	lab	Tec.inf	18			Technologie informacyjne
6666	NP-PS47B	2	lab	Tec.inf	18			Technologie informacyjne
6578	NP-PS47A	2	exc	Hyd.prz.zao	18			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
6578	NP-PS48A	2	exc	Hyd.prz.zao	18			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
6589	NP-PS48A	1	exc	Fizyka	18			Fizyka
6589	NP-PS47A	1	exc	Fizyka	18			Fizyka
6594	NP-PS48A	1	exc	Matematyka	32			Matematyka
6594	NP-PS47A	1	exc	Matematyka	32			Matematyka
6613	NP-PS47A	1	exc	Jęz.ang	18			Język angielski
6613	NP-PS48A	1	exc	Jęz.ang	18			Język angielski
6638	NP-PS48B	1	exc	Jęz.ros	18			Język rosyjski
6638	NP-PS47B	1	exc	Jęz.ros	18			Język rosyjski
6641	NP-PS47B	1	exc	Jęz.nie	18			Język niemiecki
6641	NP-PS48B	1	exc	Jęz.nie	18			Język niemiecki
6642	NP-PS47B	2	exc	Jęz.nie	18			Język niemiecki
6642	NP-PS48B	2	exc	Jęz.nie	18			Język niemiecki
6643	NP-PS48B	2	exc	Jęz.ros	18			Język rosyjski
6643	NP-PS47B	2	exc	Jęz.ros	18			Język rosyjski
6644	NP-PS48B	2	exc	Matematyka	32			Matematyka
6644	NP-PS47B	2	exc	Matematyka	32			Matematyka
6645	NP-PS48B	2	exc	Jęz.ang	18			Język angielski
6645	NP-PS47B	2	exc	Jęz.ang	18			Język angielski
6646	NP-PS48B	1	exc	Chemia	18			Chemia
6646	NP-PS47B	1	exc	Chemia	18			Chemia
6647	NP-PS48B	2	exc	Chemia	18			Chemia
6647	NP-PS47B	2	exc	Chemia	18			Chemia
6649	NP-PS48B	2	exc	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
6649	NP-PS47B	2	exc	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
6652	NP-PS47B	1	exc	Rys.tec	18			Rysunek techniczny
6652	NP-PS48B	1	exc	Rys.tec	18			Rysunek techniczny
6654	NP-PS48B	2	exc	Hyd.prz.zao	18			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
6657	NP-PS48B	1	exc	Fizyka	18			Fizyka
6615	NP-PS47A	2	exc	Gra.inż	18			Grafika inżynierska
6615	NP-PS48A	2	exc	Gra.inż	18			Grafika inżynierska
6665	NP-PS48B	2	exc	Gra.inż	18			Grafika inżynierska
6665	NP-PS47B	2	exc	Gra.inż	18			Grafika inżynierska
6577	NP-PS48A	2	-	Matematyka	0			Matematyka
6579	NP-PS48A	2	-	Chemia	0			Chemia
6579	NP-PS47A	2	-	Chemia	0			Chemia
6651	NP-PS47B	2	-	Tec.inf	0			Technologie informacyjne
6651	NP-PS48B	2	-	Tec.inf	0			Technologie informacyjne
6653	NP-PS48B	2	-	Matematyka	0			Matematyka
6653	NP-PS47B	2	-	Matematyka	0			Matematyka
6655	NP-PS48B	2	-	Chemia	0			Chemia
6655	NP-PS47B	2	-	Chemia	0			Chemia
6677	NP-PC22	2	lab	Fizyka	18			Fizyka
6677	NP-PC23	2	lab	Fizyka	18			Fizyka
6695	NP-PC23	2	lab	Tec.inf	18			Technologie informacyjne
6695	NP-PC22	2	lab	Tec.inf	18			Technologie informacyjne
6668	NP-PC23	1	lec	Tec.inf	18			Technologie informacyjne
6670	NP-PC23	1	exc	Jęz.nie	18			Język niemiecki
6670	NP-PC22	1	exc	Jęz.nie	18			Język niemiecki
6671	NP-PC22	2	exc	Jęz.nie	18			Język niemiecki
6671	NP-PC23	2	exc	Jęz.nie	18			Język niemiecki
6672	NP-PC22	2	exc	Jęz.ros	18			Język rosyjski
6672	NP-PC23	2	exc	Jęz.ros	18			Język rosyjski
6673	NP-PC23	2	exc	Matematyka	32			Matematyka
6673	NP-PC22	2	exc	Matematyka	32			Matematyka
6674	NP-PC22	2	exc	Jęz.ang	18			Język angielski
6674	NP-PC23	2	exc	Jęz.ang	18			Język angielski
6675	NP-PC23	1	exc	Chemia	18			Chemia
6675	NP-PC22	1	exc	Chemia	18			Chemia
6676	NP-PC22	2	exc	Chemia	18			Chemia
6676	NP-PC23	2	exc	Chemia	18			Chemia
6678	NP-PC23	2	exc	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
6678	NP-PC22	2	exc	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
6681	NP-PC22	1	exc	Rys.tec	18			Rysunek techniczny
6681	NP-PC23	1	exc	Rys.tec	18			Rysunek techniczny
6683	NP-PC22	2	exc	Hyd.prz.zao	18			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
6683	NP-PC23	2	exc	Hyd.prz.zao	18			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
6686	NP-PC22	1	exc	Fizyka	18			Fizyka
6686	NP-PC23	1	exc	Fizyka	18			Fizyka
6689	NP-PC22	1	exc	Matematyka	32			Matematyka
6689	NP-PC23	1	exc	Matematyka	32			Matematyka
6692	NP-PC23	1	exc	Jęz.ang	18			Język angielski
6692	NP-PC22	1	exc	Jęz.ang	18			Język angielski
6696	SP-C18.IBPr	5	exc	Psy.soc	15			Psychologia i socjologia
6697	SP-PK20	1	exc	Jęz.nie	30			Język niemiecki
6694	NP-PC22	2	exc	Gra.inż	18			Grafika inżynierska
6694	NP-PC23	2	exc	Gra.inż	18			Grafika inżynierska
6680	NP-PC22	2	-	Tec.inf	0			Technologie informacyjne
6680	NP-PC23	2	-	Tec.inf	0			Technologie informacyjne
6682	NP-PC23	2	-	Matematyka	0			Matematyka
6682	NP-PC22	2	-	Matematyka	0			Matematyka
6684	NP-PC22	2	-	Chemia	0			Chemia
6684	NP-PC23	2	-	Chemia	0			Chemia
6742	ND-BW5	1	lec	Bez.pań.oby	9			Bezpieczeństwo państwa i obywateli
6735	ND-BW6	2	exc	Zar.jak.bez	9			Zarządzanie jakością w bezpieczeństwie
6735	ND-BW5	2	exc	Zar.jak.bez	9			Zarządzanie jakością w bezpieczeństwie
6736	ND-BW6	3	exc	Jęz.ang	18			Język angielski
6736	ND-BW5	3	exc	Jęz.ang	18			Język angielski
6737	ND-BW5	1	exc	Kom.spo	9			Komunikowanie społeczne
6737	ND-BW6	1	exc	Kom.spo	9			Komunikowanie społeczne
6738	ND-BW6	2	exc	Met.bad.nad	9			Metodologia badań nad bezpieczeństwem
6738	ND-BW5	2	exc	Met.bad.nad	9			Metodologia badań nad bezpieczeństwem
6739	ND-BW5	1	exc	Jęz.ang	18			Język angielski
6739	ND-BW6	1	exc	Jęz.ang	18			Język angielski
6740	ND-BW6	3	exc	Wsp.mię.bez	18			Współpraca międzynarodowa w bezpieczeństwie wewnętrznym
6740	ND-BW5	3	exc	Wsp.mię.bez	18			Współpraca międzynarodowa w bezpieczeństwie wewnętrznym
6741	ND-BW6	2	exc	Geo.uwa.bez	15			Geopolityczne uwarunkowania bezpieczeństwa wewnętrznego
6741	ND-BW5	2	exc	Geo.uwa.bez	15			Geopolityczne uwarunkowania bezpieczeństwa wewnętrznego
6743	ND-BW5	1	exc	Wyc.fiz	18			Wychowanie fizyczne
6743	ND-BW6	1	exc	Wyc.fiz	18			Wychowanie fizyczne
6746	ND-BW5	3	exc	Inf.kry	9			Infrastruktura krytyczna
6746	ND-BW6	3	exc	Inf.kry	9			Infrastruktura krytyczna
6747	ND-BW5	3	exc	roz.pro.sta	8			Rozpoznawanie i prognozowanie stanów zagrożenia
6747	ND-BW6	3	exc	roz.pro.sta	8			Rozpoznawanie i prognozowanie stanów zagrożenia
6751	ND-BW6	1	exc	Bez.pań.oby	18			Bezpieczeństwo państwa i obywateli
6751	ND-BW5	1	exc	Bez.pań.oby	18			Bezpieczeństwo państwa i obywateli
6752	ND-BW6	3	exc	Proseminarium	16			Proseminarium
6752	ND-BW5	3	exc	Proseminarium	16			Proseminarium
6754	ND-BW6	2	exc	Jęz.ang	18			Język angielski
6754	ND-BW5	2	exc	Jęz.ang	18			Język angielski
6756	ND-BW6	1	exc	Psy.spo	9			Psychologia społeczna
6756	ND-BW5	1	exc	Psy.spo	9			Psychologia społeczna
6759	ND-BW6	2	exc	Pra.asp.bez	9			Prawno - funkcjonalne aspekty bezpieczeństwa wewnętrznego
6759	ND-BW5	2	exc	Pra.asp.bez	9			Prawno - funkcjonalne aspekty bezpieczeństwa wewnętrznego
6766	ND-BW6	2	exc	Wyc.fiz	18			Wychowanie fizyczne
6766	ND-BW5	2	exc	Wyc.fiz	18			Wychowanie fizyczne
6784	SD-BW6	2	exc	Syt.kry.kry	35			Sytuacje kryzysowe, kryzysy i patologie społeczne
6788	SD-BW5	2	exc	Zar.jak.bez	20			Zarządzanie jakością w bezpieczeństwie
6788	SD-BW6	2	exc	Zar.jak.bez	20			Zarządzanie jakością w bezpieczeństwie
6790	SD-BW5	2	exc	Pra.asp.bez	35			Prawno - funkcjonalne aspekty bezpieczeństwa wewnętrznego
6790	SD-BW6	2	exc	Pra.asp.bez	35			Prawno - funkcjonalne aspekty bezpieczeństwa wewnętrznego
6798	SD-BW5	3	exc	Wsp.mię.bez	20			Współpraca międzynarodowa w bezpieczeństwie wewnętrznym
6798	SD-BW6	3	exc	Wsp.mię.bez	20			Współpraca międzynarodowa w bezpieczeństwie wewnętrznym
6799	SD-BW5	3	exc	Sił.zbr.bez	30			Siły Zbrojne w bezpieczeństwie wewnętrznym
6799	SD-BW6	3	exc	Sił.zbr.bez	30			Siły Zbrojne w bezpieczeństwie wewnętrznym
6805	SD-BW5	3	exc	roz.pro.sta	20			Rozpoznawanie i prognozowanie stanów zagrożenia
6805	SD-BW6	3	exc	roz.pro.sta	20			Rozpoznawanie i prognozowanie stanów zagrożenia
6806	SD-BW6	1	exc	Jęz.ang	40			Język angielski
6806	SD-BW5	1	exc	Jęz.ang	40			Język angielski
6809	SD-BW6	1	exc	Kom.spo	15			Komunikowanie społeczne
6809	SD-BW5	1	exc	Kom.spo	15			Komunikowanie społeczne
6811	SD-BW5	3	exc	Pra.zawodowa	80			Praktyka zawodowa
6811	SD-BW6	3	exc	Pra.zawodowa	80			Praktyka zawodowa
6812	SD-BW5	1	exc	Str.bez.wew	15			Strategie bezpieczeństwa wewnętrznego
6812	SD-BW6	1	exc	Str.bez.wew	15			Strategie bezpieczeństwa wewnętrznego
6820	SD-BW5	1	exc	Org.fun.adm.pub	30			Organizacja i funkcjonowanie administracji publicznej
6820	SD-BW6	1	exc	Org.fun.adm.pub	30			Organizacja i funkcjonowanie administracji publicznej
6823	SD-BW6	2	exc	Poz.ins.org	20			Pozarządowe instytucje i organizacje bezpieczeństwa
6823	SD-BW5	2	exc	Poz.ins.org	20			Pozarządowe instytucje i organizacje bezpieczeństwa
6824	SD-BW6	1	exc	Edu.dla.bez	20			Edukacja dla bezpieczeństwa
6824	SD-BW5	1	exc	Edu.dla.bez	20			Edukacja dla bezpieczeństwa
6825	SD-BW6	2	exc	Jęz.ang	40			Język angielski
6825	SD-BW5	2	exc	Jęz.ang	40			Język angielski
6826	SD-BW6	3	exc	Zas.log.bez	30			Zasilanie logistyczne w bezpieczeństwie
6826	SD-BW5	3	exc	Zas.log.bez	30			Zasilanie logistyczne w bezpieczeństwie
6829	SD-BW5	1	exc	Bez.pań.oby	20			Bezpieczeństwo państwa i obywateli
6829	SD-BW6	1	exc	Bez.pań.oby	20			Bezpieczeństwo państwa i obywateli
6834	SD-BW6	2	exc	Met.bad.nad	20			Metodologia badań nad bezpieczeństwem
6834	SD-BW5	2	exc	Met.bad.nad	20			Metodologia badań nad bezpieczeństwem
6847	SP-CBW7	4	exc	Inf.kry	15			Infrastruktura krytyczna
6847	SP-CBW8	4	exc	Inf.kry	15			Infrastruktura krytyczna
6858	SP-CBW8	1	exc	Och.wła.int	15			Ochrona własności intelektualnej
6858	SP-CBW7	1	exc	Och.wła.int	15			Ochrona własności intelektualnej
6859	SP-CBW7	4	exc	Prz.obr.pań	10			Przygotowania obronne panstwa
6859	SP-CBW8	4	exc	Prz.obr.pań	10			Przygotowania obronne panstwa
6860	SP-CBW8	2	exc	Pra.kar.mat	15			Prawo karne materialne w bezpieczeństwie
6860	SP-CBW7	2	exc	Pra.kar.mat	15			Prawo karne materialne w bezpieczeństwie
6861	SP-CBW8	4	exc	Jęz.ang	30			Język angielski
6861	SP-CBW7	4	exc	Jęz.ang	30			Język angielski
6869	SP-CBW8	2	exc	Sys.bez.RP	15			System Bezpieczeństwa RP
6869	SP-CBW7	2	exc	Sys.bez.RP	15			System Bezpieczeństwa RP
6874	SP-CBW8	2	exc	Nau.pań.pra	30			Nauki o państwie i prawie
6874	SP-CBW7	2	exc	Nau.pań.pra	30			Nauki o państwie i prawie
6875	SP-CBW7	2	exc	Jęz.ang	30			Język angielski
6875	SP-CBW8	2	exc	Jęz.ang	30			Język angielski
6883	SP-CBW7	2	exc	Och.dan.oso	15			Ochrona danych osobowych i informacji niejawnych
6883	SP-CBW8	2	exc	Och.dan.oso	15			Ochrona danych osobowych i informacji niejawnych
6886	SP-CBW8	4	exc	Bez.spo.lok	20			Bezpieczeństwo społeczności lokalnych i kształtowanie bezpiecznych przestrzeni
6886	SP-CBW7	4	exc	Bez.spo.lok	20			Bezpieczeństwo społeczności lokalnych i kształtowanie bezpiecznych przestrzeni
6891	SP-CBW8	1	exc	Ekonomia	10			Ekonomia
6891	SP-CBW7	1	exc	Ekonomia	10			Ekonomia
6893	SP-CBW8	1	exc	Wyc.fiz	30			Wychowanie fizyczne
6893	SP-CBW7	1	exc	Wyc.fiz	30			Wychowanie fizyczne
6894	SP-CBW8	3	exc	Pos.adm.cyw	30			Postępowanie administracyjne i cywilne
6894	SP-CBW7	3	exc	Pos.adm.cyw	30			Postępowanie administracyjne i cywilne
6895	SP-CBW8	3	exc	Int.pra.UE	30			Integracja i prawo UE
6895	SP-CBW7	3	exc	Int.pra.UE	30			Integracja i prawo UE
6896	SP-CBW8	1	exc	Jęz.ang	30			Język angielski
6896	SP-CBW7	1	exc	Jęz.ang	30			Język angielski
6897	SP-CBW8	1	exc	Org.fun.adm.pub	15			Organizacja i funkcjonowanie administracji publicznej
6897	SP-CBW7	1	exc	Org.fun.adm.pub	15			Organizacja i funkcjonowanie administracji publicznej
6899	SP-CBW8	2	exc	Wsp.pro.bez	20			Współczesne problemy bezpieczeństwa
6899	SP-CBW7	2	exc	Wsp.pro.bez	20			Współczesne problemy bezpieczeństwa
6902	SP-CBW7	2	exc	Wyc.fiz	30			Wychowanie fizyczne
6902	SP-CBW8	2	exc	Wyc.fiz	30			Wychowanie fizyczne
6904	SP-CBW8	4	exc	Bez.spo.pan	15			Bezpieczeństwo społeczno - ekonomiczne państwa
6904	SP-CBW7	4	exc	Bez.spo.pan	15			Bezpieczeństwo społeczno - ekonomiczne państwa
6905	SP-CBW7	1	exc	Wsp.zag.bez	40			Współczesne zagrożenia bezpieczeństwa
6905	SP-CBW8	1	exc	Wsp.zag.bez	40			Współczesne zagrożenia bezpieczeństwa
6906	SP-CBW7	1	exc	Pod.teo.bez	20			Podstawy teorii bezpieczeństwa
6906	SP-CBW8	1	exc	Pod.teo.bez	20			Podstawy teorii bezpieczeństwa
6907	SP-CBW8	3	exc	Sys.ins.bez	30			Systemy i instytucje bezpieczeństwa wewnętrznego
6907	SP-CBW7	3	exc	Sys.ins.bez	30			Systemy i instytucje bezpieczeństwa wewnętrznego
6908	SP-CBW8	3	exc	Pla.cyw	45			Planowanie cywilne
6908	SP-CBW7	3	exc	Pla.cyw	45			Planowanie cywilne
6909	SP-CBW8	1	exc	Org.i.zar	15			Organizacja i zarządzanie
6909	SP-CBW7	1	exc	Org.i.zar	15			Organizacja i zarządzanie
6911	SP-CBW8	4	exc	Psy.soc	15			Psychologia i socjologia
6911	SP-CBW7	4	exc	Psy.soc	15			Psychologia i socjologia
6912	SP-CBW8	2	exc	Org.i.zar	15			Organizacja i zarządzanie
6912	SP-CBW7	2	exc	Org.i.zar	15			Organizacja i zarządzanie
6913	SP-CBW7	1	exc	Edu.dla.bez	10			Edukacja dla bezpieczeństwa
6913	SP-CBW8	1	exc	Edu.dla.bez	10			Edukacja dla bezpieczeństwa
6914	SP-CBW7	1	exc	Erg.fiz.bez	15			Ergonomia i fizjologia w bezpieczeństwie pracy
6914	SP-CBW8	1	exc	Erg.fiz.bez	15			Ergonomia i fizjologia w bezpieczeństwie pracy
6917	SP-CBW7	4	exc	Och.osó.mie	10			Ochrona osób, mienia, obiektów i obszarów
6917	SP-CBW8	4	exc	Och.osó.mie	10			Ochrona osób, mienia, obiektów i obszarów
6919	SP-CBW7	3	exc	Zar.kry	15			Zarządzanie kryzysowe
6919	SP-CBW8	3	exc	Zar.kry	15			Zarządzanie kryzysowe
6921	SP-CBW7	2	exc	Org.fun.adm.pub	15			Organizacja i funkcjonowanie administracji publicznej
6960	NP-CBW8	2	exc	Org.i.zar	9			Organizacja i zarządzanie
6963	NP-CBW7	2	exc	Jęz.ang	18			Język angielski
6963	NP-CBW8	2	exc	Jęz.ang	18			Język angielski
6967	NP-CBW8	1	exc	Ekonomia	9			Ekonomia
6967	NP-CBW7	1	exc	Ekonomia	9			Ekonomia
6968	NP-CBW7	1	exc	Org.fun.adm.pub	9			Organizacja i funkcjonowanie administracji publicznej
6968	NP-CBW8	1	exc	Org.fun.adm.pub	9			Organizacja i funkcjonowanie administracji publicznej
6970	NP-CBW8	1	exc	Och.wła.int	9			Ochrona własności intelektualnej
6970	NP-CBW7	1	exc	Och.wła.int	9			Ochrona własności intelektualnej
6973	NP-CBW8	2	exc	Nau.pań.pra	18			Nauki o państwie i prawie
6973	NP-CBW7	2	exc	Nau.pań.pra	18			Nauki o państwie i prawie
6976	NP-CBW7	2	exc	Pra.cyw.adm	18			Prawo cywilne i administracyjne
6976	NP-CBW8	2	exc	Pra.cyw.adm	18			Prawo cywilne i administracyjne
6977	NP-CBW8	1	exc	Edu.dla.bez	9			Edukacja dla bezpieczeństwa
6977	NP-CBW7	1	exc	Edu.dla.bez	9			Edukacja dla bezpieczeństwa
6978	NP-CBW7	2	exc	Org.fun.adm.pub	9			Organizacja i funkcjonowanie administracji publicznej
6978	NP-CBW8	2	exc	Org.fun.adm.pub	9			Organizacja i funkcjonowanie administracji publicznej
6980	NP-CBW8	1	exc	Org.i.zar	9			Organizacja i zarządzanie
6980	NP-CBW7	1	exc	Org.i.zar	9			Organizacja i zarządzanie
6983	NP-CBW7	3	exc	Sys.ins.bez	18			Systemy i instytucje bezpieczeństwa wewnętrznego
6983	NP-CBW8	3	exc	Sys.ins.bez	18			Systemy i instytucje bezpieczeństwa wewnętrznego
6984	NP-CBW7	3	exc	Jęz.ang	18			Język angielski
6984	NP-CBW8	3	exc	Jęz.ang	18			Język angielski
6986	NP-CBW7	4	exc	Bez.spo.lok	9			Bezpieczeństwo społeczności lokalnych i kształtowanie bezpiecznych przestrzeni
6986	NP-CBW8	4	exc	Bez.spo.lok	9			Bezpieczeństwo społeczności lokalnych i kształtowanie bezpiecznych przestrzeni
6987	NP-CBW8	4	exc	Zar.kry	9			Zarządzanie kryzysowe
6987	NP-CBW7	4	exc	Zar.kry	9			Zarządzanie kryzysowe
6990	NP-CBW8	4	exc	Jęz.ang	18			Język angielski
6990	NP-CBW7	4	exc	Jęz.ang	18			Język angielski
6991	NP-CBW7	4	exc	Och.osó.mie	18			Ochrona osób, mienia, obiektów i obszarów
6991	NP-CBW8	4	exc	Och.osó.mie	18			Ochrona osób, mienia, obiektów i obszarów
6992	NP-CBW8	4	exc	Pra.czł.ety	9			Prawa człowieka i etyka zawodowa funkcjonariuszy służb publicznych
6992	NP-CBW7	4	exc	Pra.czł.ety	9			Prawa człowieka i etyka zawodowa funkcjonariuszy służb publicznych
6994	NP-CBW8	3	exc	Bez.spo.lok	9			Bezpieczeństwo społeczności lokalnych i kształtowanie bezpiecznych przestrzeni
7021	ND-P35	1	\N	DP	\N			Praca dyplomowa
7021	ND-P34	1	\N	DP	\N			Praca dyplomowa
7029	ND-P36	3	lab	Str.ope.rat	12			Strategiczne operacje ratownicze
7029	ND-P37	3	lab	Str.ope.rat	12			Strategiczne operacje ratownicze
7031	ND-P36	3	\N	DP	0			Praca dyplomowa
7031	ND-P37	3	\N	DP	0			Praca dyplomowa
7033	ND-P37	2	lab	Mod.poż	18			Modelowanie pożarów
7033	ND-P36	2	lab	Mod.poż	18			Modelowanie pożarów
7035	ND-P36	1	lab	Wsp.pro.inż	9			Współczesne problemy inżynierii środowiska
7035	ND-P37	1	lab	Wsp.pro.inż	9			Współczesne problemy inżynierii środowiska
6999	NP-CBW7	3	exc	Pos.adm.cyw	18			Postępowanie administracyjne i cywilne
7000	NP-CBW7	4	exc	Wsp.sys.pol	9			Współczesne systemy polityczne
7000	NP-CBW8	4	exc	Wsp.sys.pol	9			Współczesne systemy polityczne
7001	NP-CBW7	3	exc	Ins.źró.pra	18			Instytucje i źródła prawa UE
7001	NP-CBW8	3	exc	Ins.źró.pra	18			Instytucje i źródła prawa UE
7005	NP-CBW7	4	exc	Bez.spo.pan	18			Bezpieczeństwo społeczno - ekonomiczne państwa
7005	NP-CBW8	4	exc	Bez.spo.pan	18			Bezpieczeństwo społeczno - ekonomiczne państwa
7010	NP-CBW7	4	exc	Inf.kry	9			Infrastruktura krytyczna
7010	NP-CBW8	4	exc	Inf.kry	9			Infrastruktura krytyczna
7012	NP-CBW8	3	exc	Zar.kry	9			Zarządzanie kryzysowe
7012	NP-CBW7	3	exc	Zar.kry	9			Zarządzanie kryzysowe
7013	NP-CBW7	3	exc	Pla.cyw	9			Planowanie cywilne
7013	NP-CBW8	3	exc	Pla.cyw	9			Planowanie cywilne
7015	NP-CBW7	4	exc	Praktyka	240			Praktyka
7015	NP-CBW8	4	exc	Praktyka	240			Praktyka
7019	NP-CBW8	1	exc	Jęz.ang	18			Język angielski
7019	NP-CBW7	1	exc	Jęz.ang	18			Język angielski
7024	SD-BW5	2	exc	Geo.uwa.bez	35			Geopolityczne uwarunkowania bezpieczeństwa wewnętrznego
7024	SD-BW6	2	exc	Geo.uwa.bez	35			Geopolityczne uwarunkowania bezpieczeństwa wewnętrznego
7032	ND-P37	1	exc	Jęz.ros	9			Język rosyjski
7032	ND-P36	1	exc	Jęz.ros	9			Język rosyjski
7034	ND-P36	1	exc	Mat.wsp.dec	18			Matematyczne wspomaganie decyzji
7034	ND-P37	1	exc	Mat.wsp.dec	18			Matematyczne wspomaganie decyzji
7038	ND-P37	3	exc	Sem.mag	9			Seminarium magisterskie
7037	ND-P36	2	exc	Zar.inf.kom	18			Zarządzanie infrastrukturą komunalną w sytuacjach kryzysowych
7037	ND-P37	2	exc	Zar.inf.kom	18			Zarządzanie infrastrukturą komunalną w sytuacjach kryzysowych
7040	ND-P36	1	lab	Sys.inf.prz	18			Systemy informacji przestrzennej
7040	ND-P37	1	lab	Sys.inf.prz	18			Systemy informacji przestrzennej
7038	ND-P36	3	exc	Sem.mag	9			Seminarium magisterskie
7044	ND-P37	2	exc	Jęz.ang	18			Język angielski
7044	ND-P36	2	exc	Jęz.ang	18			Język angielski
7047	ND-P36	2	exc	Ana.sku.wyb	18			Analiza skutków wybuchu
7047	ND-P37	2	exc	Ana.sku.wyb	18			Analiza skutków wybuchu
7048	ND-P36	3	exc	Opt.śro.gas	9			Optymalizacja środków gaśniczych i neutralizacji
7048	ND-P37	3	exc	Opt.śro.gas	9			Optymalizacja środków gaśniczych i neutralizacji
7049	ND-P36	2	exc	Jęz.ros	18			Język rosyjski
7049	ND-P37	2	exc	Jęz.ros	18			Język rosyjski
7051	ND-P37	1	exc	Mod.poż	18			Modelowanie pożarów
7051	ND-P36	1	exc	Mod.poż	18			Modelowanie pożarów
7053	ND-P37	2	exc	Sem.mag	9			Seminarium magisterskie
7053	ND-P36	2	exc	Sem.mag	9			Seminarium magisterskie
7054	ND-P36	2	exc	Kie.dzi.rat	18			Kierowanie działaniami ratowniczymi
7054	ND-P37	2	exc	Kie.dzi.rat	18			Kierowanie działaniami ratowniczymi
7055	ND-P36	1	exc	Sta.opi	18			Statystyka opisowa
7055	ND-P37	1	exc	Sta.opi	18			Statystyka opisowa
7057	ND-P37	3	exc	Pra.zawodowa	160			Praktyka zawodowa
7057	ND-P36	3	exc	Pra.zawodowa	160			Praktyka zawodowa
7058	ND-P37	2	exc	Zar.eks.spr.rg	9			Zarządzanie eksploatacją sprzętu ratowniczo - gaśniczego
7058	ND-P36	2	exc	Zar.eks.spr.rg	9			Zarządzanie eksploatacją sprzętu ratowniczo - gaśniczego
7060	ND-P36	2	exc	Jęz.nie	18			Język niemiecki
7060	ND-P37	2	exc	Jęz.nie	18			Język niemiecki
7069	ND-P37	2	exc	Ana.ryz.inz	9			Analiza ryzyka w inżynierii bezpieczeństwa
7069	ND-P36	2	exc	Ana.ryz.inz	9			Analiza ryzyka w inżynierii bezpieczeństwa
7073	ND-P37	1	exc	Zas.now.tec	18			Zastosowanie nowoczesnych technik w inżynierii bezpieczeństwa
7073	ND-P36	1	exc	Zas.now.tec	18			Zastosowanie nowoczesnych technik w inżynierii bezpieczeństwa
7074	ND-P36	2	exc	Kra.sys.wyk	9			Krajowy system wykrywania skażeń i alarmowania
7074	ND-P37	2	exc	Kra.sys.wyk	9			Krajowy system wykrywania skażeń i alarmowania
7076	ND-P37	1	exc	Jęz.nie	9			Język niemiecki
7076	ND-P36	1	exc	Jęz.nie	9			Język niemiecki
7042	ND-P37	3	exc	Str.ope.rat	6			Strategiczne operacje ratownicze
7042	ND-P36	3	exc	Str.ope.rat	6			Strategiczne operacje ratownicze
7043	ND-P37	2	exc	Pro.doc.pop	9			Procedura dochodzeń popożarowych
7043	ND-P36	2	exc	Pro.doc.pop	9			Procedura dochodzeń popożarowych
7052	ND-P36	3	exc	Rze.prz	18			Rzeczoznawstwo przeciwpożarowe
7052	ND-P37	3	exc	Rze.prz	18			Rzeczoznawstwo przeciwpożarowe
7062	ND-P37	3	exc	Noś.kon.war	18			Nośność konstrukcji w warunkach pożaru
7062	ND-P36	3	exc	Noś.kon.war	18			Nośność konstrukcji w warunkach pożaru
7065	ND-P36	1	exc	Prz.ope.och	18			Przygotowanie operacyjne w ochronie ludności
7065	ND-P37	1	exc	Prz.ope.och	18			Przygotowanie operacyjne w ochronie ludności
7078	ND-P37	1	exc	Nie.bez.bud	18			Niezawodność i bezpieczeństwo budowli
7078	ND-P36	1	exc	Nie.bez.bud	18			Niezawodność i bezpieczeństwo budowli
7056	ND-P36	2	-	Mod.poż	0			Modelowanie pożarów
7056	ND-P37	2	-	Mod.poż	0			Modelowanie pożarów
7088	SD-P14	2	lab	Mod.poż	30			Modelowanie pożarów
7088	SD-P15	2	lab	Mod.poż	30			Modelowanie pożarów
7103	SD-P15	1	lab	Wsp.pro.inż	15			Współczesne problemy inżynierii środowiska
7103	SD-P14	1	lab	Wsp.pro.inż	15			Współczesne problemy inżynierii środowiska
7106	SD-P15	1	lab	Sys.inf.prz	30			Systemy informacji przestrzennej
7106	SD-P14	1	lab	Sys.inf.prz	30			Systemy informacji przestrzennej
7116	SD-P14	3	\N	DP	0			Praca dyplomowa
7116	SD-P15	3	\N	DP	0			Praca dyplomowa
7081	ND-P37	1	exc	Met.tec.zar	9			Metody i techniki zarządzania zasobami ludzkimi
7081	ND-P36	1	exc	Met.tec.zar	9			Metody i techniki zarządzania zasobami ludzkimi
7082	ND-P36	1	exc	Jęz.ang	9			Język angielski
7082	ND-P37	1	exc	Jęz.ang	9			Język angielski
7086	SD-P14	1	exc	Mod.poż	30			Modelowanie pożarów
7086	SD-P15	1	exc	Mod.poż	30			Modelowanie pożarów
7090	SD-P15	1	exc	Mat.wsp.dec	30			Matematyczne wspomaganie decyzji
7090	SD-P14	1	exc	Mat.wsp.dec	30			Matematyczne wspomaganie decyzji
7091	SD-P15	2	exc	Zar.eks.spr.rg	15			Zarządzanie eksploatacją sprzętu ratowniczo - gaśniczego
7091	SD-P14	2	exc	Zar.eks.spr.rg	15			Zarządzanie eksploatacją sprzętu ratowniczo - gaśniczego
7094	SD-P15	2	exc	Jęz.ang	30			Język angielski
7094	SD-P14	2	exc	Jęz.ang	30			Język angielski
7097	SD-P14	1	exc	Zas.now.tec	30			Zastosowanie nowoczesnych technik w inżynierii bezpieczeństwa
7097	SD-P15	1	exc	Zas.now.tec	30			Zastosowanie nowoczesnych technik w inżynierii bezpieczeństwa
7101	SD-P14	1	exc	Met.tec.zar	15			Metody i techniki zarządzania zasobami ludzkimi
7101	SD-P15	1	exc	Met.tec.zar	15			Metody i techniki zarządzania zasobami ludzkimi
7102	SD-P14	3	exc	Pra.zawodowa	160			Praktyka zawodowa
7102	SD-P15	3	exc	Pra.zawodowa	160			Praktyka zawodowa
7105	SD-P14	2	exc	Kie.dzi.rat	30			Kierowanie działaniami ratowniczymi
7105	SD-P15	2	exc	Kie.dzi.rat	30			Kierowanie działaniami ratowniczymi
7112	SD-P15	2	exc	Sem.mag	15			Seminarium magisterskie
7112	SD-P14	2	exc	Sem.mag	15			Seminarium magisterskie
7114	SD-P14	1	exc	Jęz.ang	15			Język angielski
7114	SD-P15	1	exc	Jęz.ang	15			Język angielski
7122	SD-P14	1	exc	Sta.opi	30			Statystyka opisowa
7122	SD-P15	1	exc	Sta.opi	30			Statystyka opisowa
7123	SD-P14	2	exc	Ana.sku.wyb	30			Analiza skutków wybuchu
7123	SD-P15	2	exc	Ana.sku.wyb	30			Analiza skutków wybuchu
7124	SD-P15	2	exc	Ana.ryz.inz	30			Analiza ryzyka w inżynierii bezpieczeństwa
7093	SD-P14	3	exc	Noś.kon.war	30			Nośność konstrukcji w warunkach pożaru
7093	SD-P15	3	exc	Noś.kon.war	30			Nośność konstrukcji w warunkach pożaru
7100	SD-P14	1	exc	Nie.bez.bud	30			Niezawodność i bezpieczeństwo budowli
7100	SD-P15	1	exc	Nie.bez.bud	30			Niezawodność i bezpieczeństwo budowli
7111	SD-P15	3	exc	Rze.prz	30			Rzeczoznawstwo przeciwpożarowe
7111	SD-P14	3	exc	Rze.prz	30			Rzeczoznawstwo przeciwpożarowe
7119	SD-P14	1	exc	Prz.ope.och	30			Przygotowanie operacyjne w ochronie ludności
7119	SD-P15	1	exc	Prz.ope.och	30			Przygotowanie operacyjne w ochronie ludności
7121	SD-P15	2	exc	Zar.inf.kom	30			Zarządzanie infrastrukturą komunalną w sytuacjach kryzysowych
7121	SD-P14	2	exc	Zar.inf.kom	30			Zarządzanie infrastrukturą komunalną w sytuacjach kryzysowych
7125	SD-P14	3	lab	Str.ope.rat	20			Strategiczne operacje ratownicze
7125	SD-P15	3	lab	Str.ope.rat	20			Strategiczne operacje ratownicze
7142	SD-P14	3	lab	Wsp.med.dzi	15			Współpraca z mediami w działaniach PSP
7142	SD-P15	3	lab	Wsp.med.dzi	15			Współpraca z mediami w działaniach PSP
7146	ND-P37	3	lab	Wsp.med.dzi	9			Współpraca z mediami w działaniach PSP
7146	ND-P36	3	lab	Wsp.med.dzi	9			Współpraca z mediami w działaniach PSP
7149	Erasmus	3	lab	Era.fire.sci.com	24			Erasmus: Fire Science and Combustion
7155	Erasmus	3	lab	Era.for.fir.saf	15			Erasmus: Forest Fire Safety
7158	Erasmus	3	lab	Era.hydro	30			Erasmus: Hydromechanics
7159	Erasmus	3	lab	Era.chem.eco	30			Erasmus: Chemical and Ecological Rescue
7164	Erasmus	3	lab	Era.intr.fir.mod	6			Erasmus: An Introduction to Fire Modeling
7168	Erasmus	3	lab	Era.fir.and	15			Erasmus: Fire and explosion hazard assessment
7173	SP-PC19	2	lab	Tec.inf	30			Technologie informacyjne
7173	SP-PC20	2	lab	Tec.inf	30			Technologie informacyjne
7124	SD-P14	2	exc	Ana.ryz.inz	30			Analiza ryzyka w inżynierii bezpieczeństwa
7128	SD-P14	3	exc	Opt.śro.gas	15			Optymalizacja środków gaśniczych i neutralizacji
7128	SD-P15	3	exc	Opt.śro.gas	15			Optymalizacja środków gaśniczych i neutralizacji
7134	SD-P15	3	exc	Sem.mag	15			Seminarium magisterskie
7134	SD-P14	3	exc	Sem.mag	15			Seminarium magisterskie
7136	SD-P14	2	exc	Kra.sys.wyk	15			Krajowy system wykrywania skażeń i alarmowania
7136	SD-P15	2	exc	Kra.sys.wyk	15			Krajowy system wykrywania skażeń i alarmowania
7151	Erasmus	3	exc	Era.int.saf	30			Erasmus: International Safety and Security Institutions
7153	Erasmus	3	exc	Era.cri.man	30			Erasmus: Crisis Management
7157	Erasmus	3	exc	Era.civ.eme	15			Erasmus: Civil Emergency Planning
7162	Erasmus	3	exc	Era.ide.ana.biol	15			Erasmus: Identification and Analysis of Biological Treats
7167	Erasmus	3	exc	Era.fir.and	15			Erasmus: Fire and explosion hazard assessment
7169	SP-PC19	1	exc	Fizyka	30			Fizyka
7169	SP-PC20	1	exc	Fizyka	30			Fizyka
7174	SP-PC19	2	exc	Hyd.prz.zao	30			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
7174	SP-PC20	2	exc	Hyd.prz.zao	30			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
7129	SD-P14	2	exc	Pro.doc.pop	15			Procedura dochodzeń popożarowych
7129	SD-P15	2	exc	Pro.doc.pop	15			Procedura dochodzeń popożarowych
7130	SD-P14	3	exc	Str.ope.rat	10			Strategiczne operacje ratownicze
7130	SD-P15	3	exc	Str.ope.rat	10			Strategiczne operacje ratownicze
7132	SD-P15	2	-	Mod.poż	0			Modelowanie pożarów
7132	SD-P14	2	-	Mod.poż	0			Modelowanie pożarów
7188	SP-PC19	2	lab	Fizyka	30			Fizyka
7188	SP-PC20	2	lab	Fizyka	30			Fizyka
7219	Erasmus	4	lab	Era.chem.eco	30			Erasmus: Chemical and Ecological Rescue
7222	SP-C19	5	lab	Mod.zag	30			Modelowanie zagrożeń
7232	SP-C19	5	lab	Zag.ele	15			Zagrożenia elektroenergetyczne
7239	SP-C19	6	lab	Mul.tre.dec	45			Multimedialny trening decyzyjny
7177	SP-PC19	1	exc	Chemia	30			Chemia
7177	SP-PC20	1	exc	Chemia	30			Chemia
7181	SP-PC19	2	exc	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
7181	SP-PC20	2	exc	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
7183	SP-PC19	2	exc	Jęz.ang	30			Język angielski
7183	SP-PC20	2	exc	Jęz.ang	30			Język angielski
7185	SP-PC20	2	exc	Wyc.fiz	30			Wychowanie fizyczne
7185	SP-PC19	2	exc	Wyc.fiz	30			Wychowanie fizyczne
7186	SP-PC20	1	exc	Matematyka	45			Matematyka
7186	SP-PC19	1	exc	Matematyka	45			Matematyka
7187	SP-PC19	2	exc	Matematyka	45			Matematyka
7187	SP-PC20	2	exc	Matematyka	45			Matematyka
7189	SP-PC19	2	exc	Chemia	30			Chemia
7189	SP-PC20	2	exc	Chemia	30			Chemia
7194	SP-PC20	1	exc	Rys.tec	30			Rysunek techniczny
7194	SP-PC19	1	exc	Rys.tec	30			Rysunek techniczny
7195	SP-PC19	1	exc	Wyc.fiz	30			Wychowanie fizyczne
7195	SP-PC20	1	exc	Wyc.fiz	30			Wychowanie fizyczne
7196	SP-PC19	2	exc	Jęz.ros	30			Język rosyjski
7196	SP-PC20	2	exc	Jęz.ros	30			Język rosyjski
7197	SP-PC20	2	exc	Jęz.nie	30			Język niemiecki
7197	SP-PC19	2	exc	Jęz.nie	30			Język niemiecki
7198	SP-PC20	1	exc	Jęz.ros	30			Język rosyjski
7198	SP-PC19	1	exc	Jęz.ros	30			Język rosyjski
7199	SP-PC19	1	exc	Jęz.nie	30			Język niemiecki
7199	SP-PC20	1	exc	Jęz.nie	30			Język niemiecki
7202	SP-PC19	1	exc	Jęz.ang	30			Język angielski
7176	SP-PC19	2	exc	Gra.inż	30			Grafika inżynierska
7176	SP-PC20	2	exc	Gra.inż	30			Grafika inżynierska
7220	SP-C19	5	exc	Ana.ryz	30			Analiza ryzyka
7228	SP-C19	5	exc	Pro.sys.bez	30			Projektowanie systemów bezpieczeństwa
7230	SP-C19	5	exc	Zar.bez.pra	15			Zarządzanie bezpieczeństwem pracy
7233	SP-C19	5	exc	Zag.ele	15			Zagrożenia elektroenergetyczne
7178	SP-PC19	2	-	Matematyka	0			Matematyka
7178	SP-PC20	2	-	Matematyka	0			Matematyka
7184	SP-PC19	2	-	Tec.inf	0			Technologie informacyjne
7184	SP-PC20	2	-	Tec.inf	0			Technologie informacyjne
7200	SP-PC19	2	-	Chemia	0			Chemia
7200	SP-PC20	2	-	Chemia	0			Chemia
7243	SP-C19	6	lab	Med.kom.mas	30			Media i komunikowanie masowe
7245	SP-C19	6	lab	Lab.BHP	30			Laboratorium BHP
7246	SP-C19	6	lab	Pra.pom	30			Praktyki pomiarowe
7260	SP-C18.IBPr	7	lab	Lab.BHP	45			Laboratorium BHP
7267	SP-PK19	3	lab	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
7267	SP-PK20	3	lab	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
7271	SP-PK19	3	lab	Hyd.prz.zao	30			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
7271	SP-PK20	3	lab	Hyd.prz.zao	30			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
7277	SP-PK20	3	lab	Ele.ele.poz	30			Elektrotechnika i elektronika w pożarnictwie
7277	SP-PK19	3	lab	Ele.ele.poz	30			Elektrotechnika i elektronika w pożarnictwie
7290	SP-PK19	4	lab	Tec.sys.zab	30			Techniczne systemy zabezpieczeń
7290	SP-PK20	4	lab	Tec.sys.zab	30			Techniczne systemy zabezpieczeń
7244	SP-C19	6	exc	Sem.dyp.(w	30			Seminarium dyplomowe (w tym praca dyplomowa)
7247	SP-C19	6	exc	Pra.zawodowe	160			Praktyki zawodowe
7251	SP-C18.IBC	7	exc	Wyb.zag.eko	15			Wybrane zagadnienia z ekonomii
7252	SP-C18.IBC	7	exc	Sem.dyp	30			Seminarium dyplomowe
7256	SP-C18.IBPr	7	exc	Wyb.zag.eko	15			Wybrane zagadnienia z ekonomii
7257	SP-C18.IBPr	7	exc	Sem.dyp	30			Seminarium dyplomowe
7261	SP-PK20	3	exc	Jęz.ang	30			Język angielski
7261	SP-PK19	3	exc	Jęz.ang	30			Język angielski
7262	SP-PK20	3	exc	Jęz.nie	30			Język niemiecki
7262	SP-PK19	3	exc	Jęz.nie	30			Język niemiecki
7263	SP-PK20	3	exc	Jęz.ros	30			Język rosyjski
7263	SP-PK19	3	exc	Jęz.ros	30			Język rosyjski
7264	SP-PK19	3	exc	Prz.kon	30			Przygotowanie kondycyjne
7264	SP-PK20	3	exc	Prz.kon	30			Przygotowanie kondycyjne
7266	SP-PK19	3	exc	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
7266	SP-PK20	3	exc	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
7278	SP-PK19	4	exc	Jęz.ang	30			Język angielski
7278	SP-PK20	4	exc	Jęz.ang	30			Język angielski
7279	SP-PK19	4	exc	Jęz.nie	30			Język niemiecki
7279	SP-PK20	4	exc	Jęz.nie	30			Język niemiecki
7280	SP-PK20	4	exc	Jęz.ros	30			Język rosyjski
7280	SP-PK19	4	exc	Jęz.ros	30			Język rosyjski
7282	SP-PK20	4	exc	Psy.soc	15			Psychologia i socjologia
7282	SP-PK19	4	exc	Psy.soc	15			Psychologia i socjologia
7283	SP-PK20	4	exc	Prz.kon	30			Przygotowanie kondycyjne
7283	SP-PK19	4	exc	Prz.kon	30			Przygotowanie kondycyjne
7286	SP-PK20	4	exc	Fiz.spa	30			Fizykochemia spalania
7286	SP-PK19	4	exc	Fiz.spa	30			Fizykochemia spalania
7288	SP-PK20	4	exc	Pod.kon.mas	15			Podstawy konstrukcji maszyn
7288	SP-PK19	4	exc	Pod.kon.mas	15			Podstawy konstrukcji maszyn
7249	SP-C18.IBC	7	exc	Zar.cią.dzi	15			Zarządzanie ciągłością działania
7254	SP-C18.IBPr	7	exc	Zar.cią.dzi	15			Zarządzanie ciągłością działania
7259	SP-C18.IBPr	7	exc	Rat.sys.pie	15			Ratownictwo i systemy pierwszej pomocy w przedsiębiorstwie
7275	SP-PK20	3	exc	Pod.bud	30			Podstawy budownictwa
7275	SP-PK19	3	exc	Pod.bud	30			Podstawy budownictwa
7265	SP-PK20	3	-	Mec.wyt.mat	0			Mechanika i wytrzymałość materiałów
7265	SP-PK19	3	-	Mec.wyt.mat	0			Mechanika i wytrzymałość materiałów
7270	SP-PK20	3	-	Hyd.prz.zao	0			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
7270	SP-PK19	3	-	Hyd.prz.zao	0			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
7274	SP-PK19	3	-	Pod.bud	0			Podstawy budownictwa
7274	SP-PK20	3	-	Pod.bud	0			Podstawy budownictwa
7292	SP-PK20	4	lab	Śro.gaś.neu	30			Środki gaśnicze i neutralizujące
7292	SP-PK19	4	lab	Śro.gaś.neu	30			Środki gaśnicze i neutralizujące
7300	SP-PC20	3	lab	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
7300	SP-PC19	3	lab	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
7304	SP-PC19	3	lab	Hyd.prz.zao	30			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
7304	SP-PC20	3	lab	Hyd.prz.zao	30			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
7310	SP-PC20	3	lab	Ele.ele.poz	30			Elektrotechnika i elektronika w pożarnictwie
7310	SP-PC19	3	lab	Ele.ele.poz	30			Elektrotechnika i elektronika w pożarnictwie
7336	NP-PS48A	3	lab	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
7336	NP-PS47A	3	lab	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
7339	NP-PS47A	3	lab	Hyd.prz.zao	18			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
7339	NP-PS48A	3	lab	Hyd.prz.zao	18			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
7344	NP-PS47A	3	lab	Ele.ele.poz	18			Elektrotechnika i elektronika w pożarnictwie
7344	NP-PS48A	3	lab	Ele.ele.poz	18			Elektrotechnika i elektronika w pożarnictwie
7294	SP-PC20	3	exc	Jęz.ang	30			Język angielski
7294	SP-PC19	3	exc	Jęz.ang	30			Język angielski
7295	SP-PC19	3	exc	Jęz.nie	30			Język niemiecki
7295	SP-PC20	3	exc	Jęz.nie	30			Język niemiecki
7296	SP-PC19	3	exc	Jęz.ros	30			Język rosyjski
7296	SP-PC20	3	exc	Jęz.ros	30			Język rosyjski
7299	SP-PC20	3	exc	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
7299	SP-PC19	3	exc	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
7317	SP-CBW8	3	exc	Kry.kry	15			Kryminalistyka i kryminologia
7317	SP-CBW7	3	exc	Kry.kry	15			Kryminalistyka i kryminologia
7319	SP-CBW7	3	exc	Pra.czł.ety	10			Prawa człowieka i etyka zawodowa funkcjonariuszy służb publicznych
7319	SP-CBW8	3	exc	Pra.czł.ety	10			Prawa człowieka i etyka zawodowa funkcjonariuszy służb publicznych
7320	SP-CBW7	4	exc	Str.bez.Rze	20			Strategia bezpieczeństwa Rzeczypospolitej Polskiej
7320	SP-CBW8	4	exc	Str.bez.Rze	20			Strategia bezpieczeństwa Rzeczypospolitej Polskiej
7321	SD-BW4	3	exc	Prosem.dyp	25			Proseminarium dyplomowe
7321	SD-BW3	3	exc	Prosem.dyp	25			Proseminarium dyplomowe
7332	NP-PS48A	3	exc	Jęz.ang	18			Język angielski
7332	NP-PS47A	3	exc	Jęz.ang	18			Język angielski
7335	NP-PS47A	3	exc	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
7335	NP-PS48A	3	exc	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
7348	NP-PS48B	3	exc	Jęz.ang	18			Język angielski
7348	NP-PS47B	3	exc	Jęz.ang	18			Język angielski
7349	NP-PS47B	3	exc	Jęz.nie	18			Język niemiecki
7349	NP-PS48B	3	exc	Jęz.nie	18			Język niemiecki
7297	SP-PC20	3	exc	Gra.inż	30			Grafika inżynierska
7297	SP-PC19	3	exc	Gra.inż	30			Grafika inżynierska
7308	SP-PC20	3	exc	Pod.bud	30			Podstawy budownictwa
7308	SP-PC19	3	exc	Pod.bud	30			Podstawy budownictwa
7342	NP-PS48A	3	exc	Pod.bud	18			Podstawy budownictwa
7342	NP-PS47A	3	exc	Pod.bud	18			Podstawy budownictwa
7298	SP-PC20	3	-	Mec.wyt.mat	0			Mechanika i wytrzymałość materiałów
7298	SP-PC19	3	-	Mec.wyt.mat	0			Mechanika i wytrzymałość materiałów
7303	SP-PC19	3	-	Hyd.prz.zao	0			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
7303	SP-PC20	3	-	Hyd.prz.zao	0			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
7307	SP-PC20	3	-	Pod.bud	0			Podstawy budownictwa
7307	SP-PC19	3	-	Pod.bud	0			Podstawy budownictwa
7352	NP-PS47B	3	lab	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
7352	NP-PS48B	3	lab	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
7355	NP-PS48B	3	lab	Hyd.prz.zao	18			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
7355	NP-PS47B	3	lab	Hyd.prz.zao	18			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
7360	NP-PS47B	3	lab	Ele.ele.poz	18			Elektrotechnika i elektronika w pożarnictwie
7360	NP-PS48B	3	lab	Ele.ele.poz	18			Elektrotechnika i elektronika w pożarnictwie
7371	NP-PS47A	4	lab	Tec.sys.zab	18			Techniczne systemy zabezpieczeń
7371	NP-PS48A	4	lab	Tec.sys.zab	18			Techniczne systemy zabezpieczeń
7373	NP-PS48A	4	lab	Śro.gaś.neu	18			Środki gaśnicze i neutralizujące
7373	NP-PS47A	4	lab	Śro.gaś.neu	18			Środki gaśnicze i neutralizujące
7388	NP-PS47B	4	lab	Tec.sys.zab	18			Techniczne systemy zabezpieczeń
7388	NP-PS48B	4	lab	Tec.sys.zab	18			Techniczne systemy zabezpieczeń
7390	NP-PS47B	4	lab	Śro.gaś.neu	18			Środki gaśnicze i neutralizujące
7390	NP-PS48B	4	lab	Śro.gaś.neu	18			Środki gaśnicze i neutralizujące
7350	NP-PS47B	3	exc	Jęz.ros	18			Język rosyjski
7350	NP-PS48B	3	exc	Jęz.ros	18			Język rosyjski
7351	NP-PS47B	3	exc	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
7351	NP-PS48B	3	exc	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
7362	NP-PS48A	4	exc	Jęz.ang	18			Język angielski
7362	NP-PS47A	4	exc	Jęz.ang	18			Język angielski
7364	NP-PS47A	4	exc	Psy.soc	9			Psychologia i socjologia
7364	NP-PS48A	4	exc	Psy.soc	9			Psychologia i socjologia
7367	NP-PS47A	4	exc	Fiz.spa	18			Fizykochemia spalania
7367	NP-PS48A	4	exc	Fiz.spa	18			Fizykochemia spalania
7369	NP-PS47A	4	exc	Pod.kon.mas	9			Podstawy konstrukcji maszyn
7369	NP-PS48A	4	exc	Pod.kon.mas	9			Podstawy konstrukcji maszyn
7377	NP-PS48B	4	exc	Jęz.ang	18			Język angielski
7377	NP-PS47B	4	exc	Jęz.ang	18			Język angielski
7378	NP-PS48B	4	exc	Jęz.nie	18			Język niemiecki
7378	NP-PS47B	4	exc	Jęz.nie	18			Język niemiecki
7379	NP-PS47B	4	exc	Jęz.ros	18			Język rosyjski
7379	NP-PS48B	4	exc	Jęz.ros	18			Język rosyjski
7381	NP-PS48B	4	exc	Psy.soc	9			Psychologia i socjologia
7381	NP-PS47B	4	exc	Psy.soc	9			Psychologia i socjologia
7384	NP-PS48B	4	exc	Fiz.spa	18			Fizykochemia spalania
7384	NP-PS47B	4	exc	Fiz.spa	18			Fizykochemia spalania
7386	NP-PS47B	4	exc	Pod.kon.mas	9			Podstawy konstrukcji maszyn
7386	NP-PS48B	4	exc	Pod.kon.mas	9			Podstawy konstrukcji maszyn
7358	NP-PS47B	3	exc	Pod.bud	18			Podstawy budownictwa
7358	NP-PS48B	3	exc	Pod.bud	18			Podstawy budownictwa
7399	NP-PC22	3	lab	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
7399	NP-PC23	3	lab	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
7403	NP-PC23	3	lab	Hyd.prz.zao	18			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
7403	NP-PC22	3	lab	Hyd.prz.zao	18			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
7409	NP-PC22	3	lab	Ele.ele.poz	18			Elektrotechnika i elektronika w pożarnictwie
7409	NP-PC23	3	lab	Ele.ele.poz	18			Elektrotechnika i elektronika w pożarnictwie
7714	SP-PK20	5	lab	Fiz.spa	30			Fizykochemia spalania
7714	SP-PK19	5	lab	Fiz.spa	30			Fizykochemia spalania
7721	SP-PK20	5	lab	Rat.che.i.eko	30			Ratownictwo chemiczne i ekologiczne
7721	SP-PK19	5	lab	Rat.che.i.eko	30			Ratownictwo chemiczne i ekologiczne
7723	SP-PK19	5	lab	Med.kat	30			Medycyna katastrof
7723	SP-PK20	5	lab	Med.kat	30			Medycyna katastrof
7393	NP-PC23	3	exc	Jęz.ang	18			Język angielski
7393	NP-PC22	3	exc	Jęz.ang	18			Język angielski
7394	NP-PC23	3	exc	Jęz.nie	18			Język niemiecki
7394	NP-PC22	3	exc	Jęz.nie	18			Język niemiecki
7395	NP-PC22	3	exc	Jęz.ros	18			Język rosyjski
7395	NP-PC23	3	exc	Jęz.ros	18			Język rosyjski
7398	NP-PC23	3	exc	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
7398	NP-PC22	3	exc	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
7710	SP-PK19	5	exc	Jęz.ang	30			Język angielski
7710	SP-PK20	5	exc	Jęz.ang	30			Język angielski
7711	SP-PK19	5	exc	Jęz.nie	30			Język niemiecki
7711	SP-PK20	5	exc	Jęz.nie	30			Język niemiecki
7712	SP-PK20	5	exc	Jęz.ros	30			Język rosyjski
7712	SP-PK19	5	exc	Jęz.ros	30			Język rosyjski
7713	SP-PK19	5	exc	Prz.kon	30			Przygotowanie kondycyjne
7713	SP-PK20	5	exc	Prz.kon	30			Przygotowanie kondycyjne
7719	SP-PK19	5	exc	Sprz.rat.i.gas	30			Sprzęt ratowniczy i gaśniczy
7719	SP-PK20	5	exc	Sprz.rat.i.gas	30			Sprzęt ratowniczy i gaśniczy
7396	NP-PC23	3	exc	Gra.inż	18			Grafika inżynierska
7396	NP-PC22	3	exc	Gra.inż	18			Grafika inżynierska
7407	NP-PC22	3	exc	Pod.bud	18			Podstawy budownictwa
7407	NP-PC23	3	exc	Pod.bud	18			Podstawy budownictwa
7716	SP-PK20	5	exc	Tec.sys.zab	30			Techniczne systemy zabezpieczeń
7716	SP-PK19	5	exc	Tec.sys.zab	30			Techniczne systemy zabezpieczeń
7397	NP-PC22	3	-	Mec.wyt.mat	0			Mechanika i wytrzymałość materiałów
7397	NP-PC23	3	-	Mec.wyt.mat	0			Mechanika i wytrzymałość materiałów
7402	NP-PC23	3	-	Hyd.prz.zao	0			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
7402	NP-PC22	3	-	Hyd.prz.zao	0			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
7406	NP-PC23	3	-	Pod.bud	0			Podstawy budownictwa
7406	NP-PC22	3	-	Pod.bud	0			Podstawy budownictwa
7413	NP-PS47A	3	-	Mec.wyt.mat	0			Mechanika i wytrzymałość materiałów
7413	NP-PS48A	3	-	Mec.wyt.mat	0			Mechanika i wytrzymałość materiałów
7414	NP-PS47A	3	-	Pod.bud	0			Podstawy budownictwa
7414	NP-PS48A	3	-	Pod.bud	0			Podstawy budownictwa
7415	NP-PS47A	3	-	Hyd.prz.zao	0			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
7415	NP-PS48A	3	-	Hyd.prz.zao	0			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
7416	NP-PS48B	3	-	Mec.wyt.mat	0			Mechanika i wytrzymałość materiałów
7416	NP-PS47B	3	-	Mec.wyt.mat	0			Mechanika i wytrzymałość materiałów
7418	NP-PS48B	3	-	Pod.bud	0			Podstawy budownictwa
7737	SP-PK19	6	lab	Sprz.rat.i.gas	30			Sprzęt ratowniczy i gaśniczy
7737	SP-PK20	6	lab	Sprz.rat.i.gas	30			Sprzęt ratowniczy i gaśniczy
7745	SP-PK20	6	lab	Org.łąc.ala	15			Organizacja łączności i alarmowanie
7745	SP-PK19	6	lab	Org.łąc.ala	15			Organizacja łączności i alarmowanie
7746	SP-PK20	6	lab	Bez.dzi.rat	30			Bezpieczeństwo działań ratowniczych
7746	SP-PK19	6	lab	Bez.dzi.rat	30			Bezpieczeństwo działań ratowniczych
7751	NP-PS47A	5	lab	Fiz.spa	18			Fizykochemia spalania
7751	NP-PS48A	5	lab	Fiz.spa	18			Fizykochemia spalania
7757	NP-PS48A	5	lab	Rat.che.i.eko	18			Ratownictwo chemiczne i ekologiczne
7757	NP-PS47A	5	lab	Rat.che.i.eko	18			Ratownictwo chemiczne i ekologiczne
7759	NP-PS47A	5	lab	Med.kat	18			Medycyna katastrof
7759	NP-PS48A	5	lab	Med.kat	18			Medycyna katastrof
7728	SP-PK19	5	exc	Bez.dzi.rat	30			Bezpieczeństwo działań ratowniczych
7728	SP-PK20	5	exc	Bez.dzi.rat	30			Bezpieczeństwo działań ratowniczych
7730	SP-PK19	6	exc	Jęz.ang	30			Język angielski
7730	SP-PK20	6	exc	Jęz.ang	30			Język angielski
7732	SP-PK19	6	exc	Jęz.nie	30			Język niemiecki
7732	SP-PK20	6	exc	Jęz.nie	30			Język niemiecki
7734	SP-PK19	6	exc	Jęz.ros	30			Język rosyjski
7734	SP-PK20	6	exc	Jęz.ros	30			Język rosyjski
7735	SP-PK20	6	exc	Prz.kon	30			Przygotowanie kondycyjne
7735	SP-PK19	6	exc	Prz.kon	30			Przygotowanie kondycyjne
7736	SP-PK19	6	exc	Sam.poj.rat	15			Samochody i pojazdy ratownicze
7736	SP-PK20	6	exc	Sam.poj.rat	15			Samochody i pojazdy ratownicze
7741	SP-PK19	6	exc	Rat.che.i.eko	30			Ratownictwo chemiczne i ekologiczne
7741	SP-PK20	6	exc	Rat.che.i.eko	30			Ratownictwo chemiczne i ekologiczne
7742	SP-PK20	6	exc	Rat.tec	30			Ratownictwo techniczne
7742	SP-PK19	6	exc	Rat.tec	30			Ratownictwo techniczne
7743	SP-PK20	6	exc	Ewa.int	30			Ewakuacja interwencyjna
7743	SP-PK19	6	exc	Ewa.int	30			Ewakuacja interwencyjna
7744	SP-PK19	6	exc	Org.łąc.ala	15			Organizacja łączności i alarmowanie
7744	SP-PK20	6	exc	Org.łąc.ala	15			Organizacja łączności i alarmowanie
7748	SP-PK20	6	exc	Tak.dow	30			Taktyka i dowodzenie
7748	SP-PK19	6	exc	Tak.dow	30			Taktyka i dowodzenie
7750	NP-PS47A	5	exc	Jęz.ang	18			Język angielski
7750	NP-PS48A	5	exc	Jęz.ang	18			Język angielski
7755	NP-PS48A	5	exc	Sprz.rat.i.gas	18			Sprzęt ratowniczy i gaśniczy
7755	NP-PS47A	5	exc	Sprz.rat.i.gas	18			Sprzęt ratowniczy i gaśniczy
7739	SP-PK19	6	exc	Dzi.gas	30			Działania gaśnicze
7739	SP-PK20	6	exc	Dzi.gas	30			Działania gaśnicze
7749	SP-PK19	6	exc	Ćwi.pol	80			Ćwiczenia poligonowe
7749	SP-PK20	6	exc	Ćwi.pol	80			Ćwiczenia poligonowe
7752	NP-PS48A	5	exc	Tec.sys.zab	18			Techniczne systemy zabezpieczeń
7752	NP-PS47A	5	exc	Tec.sys.zab	18			Techniczne systemy zabezpieczeń
7729	SP-PK19	6	-	Jęz.ang	0			Język angielski
7729	SP-PK20	6	-	Jęz.ang	0			Język angielski
7731	SP-PK19	6	-	Jęz.nie	0			Język niemiecki
7731	SP-PK20	6	-	Jęz.nie	0			Język niemiecki
7733	SP-PK19	6	-	Jęz.ros	0			Język rosyjski
7733	SP-PK20	6	-	Jęz.ros	0			Język rosyjski
7740	SP-PK20	6	-	Rat.che.i.eko	0			Ratownictwo chemiczne i ekologiczne
7740	SP-PK19	6	-	Rat.che.i.eko	0			Ratownictwo chemiczne i ekologiczne
7772	SP-PK19	7	lab	Met.bad.prz	15			Metodyka badań przyczyn pożarów
7772	SP-PK20	7	lab	Met.bad.prz	15			Metodyka badań przyczyn pożarów
7787	SP-PK20	8	lab	Sys.wsp.dzi	28			Systemy wspomagania działań ratowniczych
7787	SP-PK19	8	lab	Sys.wsp.dzi	28			Systemy wspomagania działań ratowniczych
7792	NP-PS47A	6	lab	Sprz.rat.i.gas	18			Sprzęt ratowniczy i gaśniczy
7792	NP-PS48A	6	lab	Sprz.rat.i.gas	18			Sprzęt ratowniczy i gaśniczy
7800	NP-PS47A	6	lab	Org.łąc.ala	9			Organizacja łączności i alarmowanie
7800	NP-PS48A	6	lab	Org.łąc.ala	9			Organizacja łączności i alarmowanie
7801	NP-PS47A	6	lab	Bez.dzi.rat	18			Bezpieczeństwo działań ratowniczych
7801	NP-PS48A	6	lab	Bez.dzi.rat	18			Bezpieczeństwo działań ratowniczych
7771	SP-PK19	7	exc	Met.bad.prz	30			Metodyka badań przyczyn pożarów
7771	SP-PK20	7	exc	Met.bad.prz	30			Metodyka badań przyczyn pożarów
7774	SP-PK20	7	exc	Pla.ope	30			Planowanie operacyjne
7774	SP-PK19	7	exc	Pla.ope	30			Planowanie operacyjne
7776	SP-PK19	7	exc	Sem.dyp	15			Seminarium dyplomowe
7776	SP-PK20	7	exc	Sem.dyp	15			Seminarium dyplomowe
7778	SP-PK20	7	exc	Pra.zawodowa	240			Praktyka zawodowa
7778	SP-PK19	7	exc	Pra.zawodowa	240			Praktyka zawodowa
7780	SP-PK20	8	exc	Prz.kon	14			Przygotowanie kondycyjne
7780	SP-PK19	8	exc	Prz.kon	14			Przygotowanie kondycyjne
7782	SP-PK20	8	exc	Sem.dyp	14			Seminarium dyplomowe
7782	SP-PK19	8	exc	Sem.dyp	14			Seminarium dyplomowe
7789	NP-PS48A	6	exc	Jęz.ang	18			Język angielski
7789	NP-PS47A	6	exc	Jęz.ang	18			Język angielski
7791	NP-PS48A	6	exc	Sam.poj.rat	9			Samochody i pojazdy ratownicze
7791	NP-PS47A	6	exc	Sam.poj.rat	9			Samochody i pojazdy ratownicze
7796	NP-PS47A	6	exc	Rat.che.i.eko	18			Ratownictwo chemiczne i ekologiczne
7796	NP-PS48A	6	exc	Rat.che.i.eko	18			Ratownictwo chemiczne i ekologiczne
7797	NP-PS47A	6	exc	Rat.tec	18			Ratownictwo techniczne
7797	NP-PS48A	6	exc	Rat.tec	18			Ratownictwo techniczne
7798	NP-PS48A	6	exc	Ewa.int	18			Ewakuacja interwencyjna
7798	NP-PS47A	6	exc	Ewa.int	18			Ewakuacja interwencyjna
7799	NP-PS47A	6	exc	Org.łąc.ala	9			Organizacja łączności i alarmowanie
7799	NP-PS48A	6	exc	Org.łąc.ala	9			Organizacja łączności i alarmowanie
7803	NP-PS48A	6	exc	Tak.dow	18			Taktyka i dowodzenie
7767	SP-PK20	7	exc	Bez.poż.budo	30			Bezpieczeństwo pożarowe budowli
7767	SP-PK19	7	exc	Bez.poż.budo	30			Bezpieczeństwo pożarowe budowli
7769	SP-PK19	7	exc	Ana.ryz.pro	30			Analiza ryzyka w procesach przemysłowych
7769	SP-PK20	7	exc	Ana.ryz.pro	30			Analiza ryzyka w procesach przemysłowych
7775	SP-PK20	7	exc	Str.rea.rat	15			Strategiczne reagowanie ratownicze
7775	SP-PK19	7	exc	Str.rea.rat	15			Strategiczne reagowanie ratownicze
7777	SP-PK19	7	exc	Org.kie.dzi	30			Organizacja i kierowanie działaniami ratowniczymi (ćw. terenowe)
7777	SP-PK20	7	exc	Org.kie.dzi	30			Organizacja i kierowanie działaniami ratowniczymi (ćw. terenowe)
7783	SP-PK19	8	exc	Org.kie.dzi	14			Organizacja i kierowanie działaniami ratowniczymi (ćw. terenowe)
7783	SP-PK20	8	exc	Org.kie.dzi	14			Organizacja i kierowanie działaniami ratowniczymi (ćw. terenowe)
7794	NP-PS47A	6	exc	Dzi.gas	18			Działania gaśnicze
7794	NP-PS48A	6	exc	Dzi.gas	18			Działania gaśnicze
7805	NP-PS48A	7	exc	Bez.poż.budo	18			Bezpieczeństwo pożarowe budowli
7790	NP-PS47A	6	-	Jęz.ang	0			Język angielski
7790	NP-PS48A	6	-	Jęz.ang	0			Język angielski
7795	NP-PS48A	6	-	Rat.che.i.eko	0			Ratownictwo chemiczne i ekologiczne
7795	NP-PS47A	6	-	Rat.che.i.eko	0			Ratownictwo chemiczne i ekologiczne
7810	NP-PS47A	7	lab	Met.bad.prz	9			Metodyka badań przyczyn pożarów
7810	NP-PS48A	7	lab	Met.bad.prz	9			Metodyka badań przyczyn pożarów
7821	NP-PS48A	8	lab	Sys.wsp.dzi	16			Systemy wspomagania działań ratowniczych
7821	NP-PS47A	8	lab	Sys.wsp.dzi	16			Systemy wspomagania działań ratowniczych
7826	NP-PS47B	5	lab	Fiz.spa	18			Fizykochemia spalania
7826	NP-PS48B	5	lab	Fiz.spa	18			Fizykochemia spalania
7833	NP-PS47B	5	lab	Rat.che.i.eko	18			Ratownictwo chemiczne i ekologiczne
7833	NP-PS48B	5	lab	Rat.che.i.eko	18			Ratownictwo chemiczne i ekologiczne
7835	NP-PS48B	5	lab	Med.kat	18			Medycyna katastrof
7835	NP-PS47B	5	lab	Med.kat	18			Medycyna katastrof
7809	NP-PS47A	7	exc	Met.bad.prz	18			Metodyka badań przyczyn pożarów
7809	NP-PS48A	7	exc	Met.bad.prz	18			Metodyka badań przyczyn pożarów
7812	NP-PS47A	7	exc	Pla.ope	18			Planowanie operacyjne
7812	NP-PS48A	7	exc	Pla.ope	18			Planowanie operacyjne
7814	NP-PS48A	7	exc	Sem.dyp	9			Seminarium dyplomowe
7814	NP-PS47A	7	exc	Sem.dyp	9			Seminarium dyplomowe
7815	NP-PS47A	7	exc	Pra.zawodowa	240			Praktyka zawodowa
7815	NP-PS48A	7	exc	Pra.zawodowa	240			Praktyka zawodowa
7817	NP-PS48A	8	exc	Sem.dyp	9			Seminarium dyplomowe
7817	NP-PS47A	8	exc	Sem.dyp	9			Seminarium dyplomowe
7823	NP-PS47B	5	exc	Jęz.ang	18			Język angielski
7823	NP-PS48B	5	exc	Jęz.ang	18			Język angielski
7824	NP-PS47B	5	exc	Jęz.nie	18			Język niemiecki
7824	NP-PS48B	5	exc	Jęz.nie	18			Język niemiecki
7825	NP-PS48B	5	exc	Jęz.ros	18			Język rosyjski
7825	NP-PS47B	5	exc	Jęz.ros	18			Język rosyjski
7831	NP-PS47B	5	exc	Sprz.rat.i.gas	18			Sprzęt ratowniczy i gaśniczy
7831	NP-PS48B	5	exc	Sprz.rat.i.gas	18			Sprzęt ratowniczy i gaśniczy
7840	NP-PS47B	5	exc	Bez.dzi.rat	18			Bezpieczeństwo działań ratowniczych
7840	NP-PS48B	5	exc	Bez.dzi.rat	18			Bezpieczeństwo działań ratowniczych
7841	NP-PS47B	6	exc	Jęz.ang	18			Język angielski
7841	NP-PS48B	6	exc	Jęz.ang	18			Język angielski
7843	NP-PS47B	6	exc	Jęz.nie	18			Język niemiecki
7843	NP-PS48B	6	exc	Jęz.nie	18			Język niemiecki
7805	NP-PS47A	7	exc	Bez.poż.budo	18			Bezpieczeństwo pożarowe budowli
7807	NP-PS47A	7	exc	Ana.ryz.pro	18			Analiza ryzyka w procesach przemysłowych
7807	NP-PS48A	7	exc	Ana.ryz.pro	18			Analiza ryzyka w procesach przemysłowych
7813	NP-PS48A	7	exc	Str.rea.rat	9			Strategiczne reagowanie ratownicze
7813	NP-PS47A	7	exc	Str.rea.rat	9			Strategiczne reagowanie ratownicze
7827	NP-PS47B	5	exc	Tec.sys.zab	18			Techniczne systemy zabezpieczeń
7827	NP-PS48B	5	exc	Tec.sys.zab	18			Techniczne systemy zabezpieczeń
7828	NP-PS47B	5	-	Tec.sys.zab	0			Techniczne systemy zabezpieczeń
7828	NP-PS48B	5	-	Tec.sys.zab	0			Techniczne systemy zabezpieczeń
7842	NP-PS47B	6	-	Jęz.ang	0			Język angielski
7842	NP-PS48B	6	-	Jęz.ang	0			Język angielski
7848	NP-PS47B	6	lab	Sprz.rat.i.gas	18			Sprzęt ratowniczy i gaśniczy
7848	NP-PS48B	6	lab	Sprz.rat.i.gas	18			Sprzęt ratowniczy i gaśniczy
7856	NP-PS48B	6	lab	Org.łąc.ala	9			Organizacja łączności i alarmowanie
7856	NP-PS47B	6	lab	Org.łąc.ala	9			Organizacja łączności i alarmowanie
7857	NP-PS47B	6	lab	Bez.dzi.rat	18			Bezpieczeństwo działań ratowniczych
7857	NP-PS48B	6	lab	Bez.dzi.rat	18			Bezpieczeństwo działań ratowniczych
7876	NP-PS48B	7	lab	Met.bad.prz	9			Metodyka badań przyczyn pożarów
7876	NP-PS47B	7	lab	Met.bad.prz	9			Metodyka badań przyczyn pożarów
7888	NP-PS47B	8	lab	Sys.wsp.dzi	16			Systemy wspomagania działań ratowniczych
7888	NP-PS48B	8	lab	Sys.wsp.dzi	16			Systemy wspomagania działań ratowniczych
7892	NP-PS47B	8	\N	DP	0			Praca dyplomowa
7892	NP-PS48B	8	\N	DP	0			Praca dyplomowa
7893	NP-PS47A	8	\N	DP	0			Praca dyplomowa
7893	NP-PS48A	8	\N	DP	0			Praca dyplomowa
7894	SP-PK19	8	\N	DP	0			Praca dyplomowa
7894	SP-PK20	8	\N	DP	0			Praca dyplomowa
7845	NP-PS48B	6	exc	Jęz.ros	18			Język rosyjski
7845	NP-PS47B	6	exc	Jęz.ros	18			Język rosyjski
7847	NP-PS47B	6	exc	Sam.poj.rat	9			Samochody i pojazdy ratownicze
7847	NP-PS48B	6	exc	Sam.poj.rat	9			Samochody i pojazdy ratownicze
7851	NP-PS47B	6	exc	Rat.che.i.eko	18			Ratownictwo chemiczne i ekologiczne
7851	NP-PS48B	6	exc	Rat.che.i.eko	18			Ratownictwo chemiczne i ekologiczne
7853	NP-PS48B	6	exc	Rat.tec	18			Ratownictwo techniczne
7853	NP-PS47B	6	exc	Rat.tec	18			Ratownictwo techniczne
7854	NP-PS48B	6	exc	Ewa.int	18			Ewakuacja interwencyjna
7854	NP-PS47B	6	exc	Ewa.int	18			Ewakuacja interwencyjna
7855	NP-PS47B	6	exc	Org.łąc.ala	9			Organizacja łączności i alarmowanie
7855	NP-PS48B	6	exc	Org.łąc.ala	9			Organizacja łączności i alarmowanie
7859	NP-PS47B	6	exc	Tak.dow	18			Taktyka i dowodzenie
7859	NP-PS48B	6	exc	Tak.dow	18			Taktyka i dowodzenie
7875	NP-PS47B	7	exc	Met.bad.prz	18			Metodyka badań przyczyn pożarów
7875	NP-PS48B	7	exc	Met.bad.prz	18			Metodyka badań przyczyn pożarów
7878	NP-PS47B	7	exc	Pla.ope	18			Planowanie operacyjne
7878	NP-PS48B	7	exc	Pla.ope	18			Planowanie operacyjne
7880	NP-PS47B	7	exc	Sem.dyp	9			Seminarium dyplomowe
7880	NP-PS48B	7	exc	Sem.dyp	9			Seminarium dyplomowe
7881	NP-PS48B	7	exc	Pra.zawodowa	240			Praktyka zawodowa
7881	NP-PS47B	7	exc	Pra.zawodowa	240			Praktyka zawodowa
7884	NP-PS47B	8	exc	Sem.dyp	9			Seminarium dyplomowe
7884	NP-PS48B	8	exc	Sem.dyp	9			Seminarium dyplomowe
7850	NP-PS47B	6	exc	Dzi.gas	18			Działania gaśnicze
7850	NP-PS48B	6	exc	Dzi.gas	18			Działania gaśnicze
7871	NP-PS48B	7	exc	Bez.poż.budo	18			Bezpieczeństwo pożarowe budowli
7871	NP-PS47B	7	exc	Bez.poż.budo	18			Bezpieczeństwo pożarowe budowli
7873	NP-PS48B	7	exc	Ana.ryz.pro	18			Analiza ryzyka w procesach przemysłowych
7873	NP-PS47B	7	exc	Ana.ryz.pro	18			Analiza ryzyka w procesach przemysłowych
7879	NP-PS48B	7	exc	Str.rea.rat	9			Strategiczne reagowanie ratownicze
7879	NP-PS47B	7	exc	Str.rea.rat	9			Strategiczne reagowanie ratownicze
8423	SP-C19	7	exc	Zar.cią.dzi	30			Zarządzanie ciągłością działania
7844	NP-PS48B	6	-	Jęz.nie	0			Język niemiecki
7844	NP-PS47B	6	-	Jęz.nie	0			Język niemiecki
7846	NP-PS47B	6	-	Jęz.ros	0			Język rosyjski
7846	NP-PS48B	6	-	Jęz.ros	0			Język rosyjski
7852	NP-PS48B	6	-	Rat.che.i.eko	0			Ratownictwo chemiczne i ekologiczne
7852	NP-PS47B	6	-	Rat.che.i.eko	0			Ratownictwo chemiczne i ekologiczne
8431	SP-C19	7	lab	Rat.sys.pie	15			Ratownictwo i systemy pierwszej pomocy w przedsiębiorstwie
9263	NP-CBW6	6	lab	Sym.gra.dec	18			Symulacyjna gra decyzyjna
8425	SP-C19	7	exc	Śro.och.zbi	15			Środki ochrony zbiorowej i indywidualnej
8427	SP-C19	7	exc	Zag.poż.wyb	15			Zagrożenia pożarowe i wybuchowe
8429	SP-C19	7	exc	Wyp.eko.BHP	15			Wypadkoznastwo i ekonomika BHP
9241	NP-CBW6	5	exc	Sem.dyp	18			Seminarium dyplomowe
9243	NP-CBW6	5	exc	Zag.cyw.tec	18			Zagrożenia cywilizacyjno - techniczne
9245	NP-CBW6	5	exc	Zag.nat	18			Zagrożenia naturalne
9247	NP-CBW6	5	exc	Pod.pra.cel	9			Podstawy prawne i cele działania obrony cywilnej
9249	NP-CBW6	5	exc	Pom.hum.wym	9			Pomoc humanitarna w wymiarze międzynarodowym
9251	NP-CBW6	5	exc	Org.poz.och	9			Organizacje pozarządowe w ochronie ludności
9253	NP-CBW6	5	exc	Słu.pań.och	9			Służby państwowe w ochronie ludności
9254	NP-CBW6	6	exc	DP	10			Praca dyplomowa
9256	NP-CBW6	6	exc	Pow.Sys.Och	18			Powszechny System Ochrony Ludności
9258	NP-CBW6	6	exc	Rat.ewa.lud	18			Ratownictwo i ewakuacja ludności i mienia
9260	NP-CBW6	6	exc	Org.obr.cyw	9			Organizacja obrony cywilnej i obrony narodowej
9145	NP-PS48A	5	-	Tec.sys.zab	0			Techniczne systemy zabezpieczeń
9145	NP-PS47A	5	-	Tec.sys.zab	0			Techniczne systemy zabezpieczeń
9146	SP-CBW8	4	-	Jęz.ang	0			Język angielski
9146	SP-CBW7	4	-	Jęz.ang	0			Język angielski
9363	SD-BW6	3	-	Jęz.ang	0			Język angielski
9363	SD-BW5	3	-	Jęz.ang	0			Język angielski
9393	NP-PS47A	6	-	Jęz.nie	0			Język niemiecki
9393	NP-PS48A	6	-	Jęz.nie	0			Język niemiecki
9395	NP-PS48A	6	-	Jęz.ros	0			Język rosyjski
9395	NP-PS47A	6	-	Jęz.ros	0			Język rosyjski
9418	SD-BW6	3	-	Jęz.nie	0			Język niemiecki
9418	SD-BW5	3	-	Jęz.nie	0			Język niemiecki
9420	SD-BW5	3	-	Jęz.ros	0			Język rosyjski
9420	SD-BW6	3	-	Jęz.ros	0			Język rosyjski
9431	NP-CBW7	4	-	Jęz.ang	0			Język angielski
9442	ND-BW5	3	\N	Pra.zawodowa	0			Praktyka zawodowa
9442	ND-BW6	3	\N	Pra.zawodowa	0			Praktyka zawodowa
46	ND-BW4	3	lec	Inf.kry	9			Infrastruktura krytyczna
123	ND-BW4	1	lec	Ele.log	9			Elementy logiki
128	ND-BW4	1	lec	His.bez.wew	9			Historia bezpieczeństwa wewnętrznego w Polsce
141	ND-BW4	1	lec	Org.fun.adm.pub	9			Organizacja i funkcjonowanie administracji publicznej
199	ND-BW4	3	lec	roz.pro.sta	9			Rozpoznawanie i prognozowanie stanów zagrożenia
216	ND-BW4	1	lec	Str.bez.wew	18			Strategie bezpieczeństwa wewnętrznego
691	SD-BW3	3	lec	Inf.kry	30			Infrastruktura krytyczna
691	SD-BW4	3	lec	Inf.kry	30			Infrastruktura krytyczna
873	ND-BW4	1	lec	Bez.pań.oby	9			Bezpieczeństwo państwa i obywateli
939	SD-BW3	3	lec	roz.pro.sta	30			Rozpoznawanie i prognozowanie stanów zagrożenia
939	SD-BW4	3	lec	roz.pro.sta	30			Rozpoznawanie i prognozowanie stanów zagrożenia
1191	ND-BW4	3	lec	Sił.zbr.bez	9			Siły Zbrojne w bezpieczeństwie wewnętrznym
1323	SD-BW4	3	lec	Zas.log.bez	30			Zasilanie logistyczne w bezpieczeństwie
1323	SD-BW3	3	lec	Zas.log.bez	30			Zasilanie logistyczne w bezpieczeństwie
1325	SD-BW4	1	lec	Bez.pań.oby	15			Bezpieczeństwo państwa i obywateli
1325	SD-BW3	1	lec	Bez.pań.oby	15			Bezpieczeństwo państwa i obywateli
1327	SD-BW4	1	lec	Ele.log	15			Elementy logiki
1327	SD-BW3	1	lec	Ele.log	15			Elementy logiki
1328	SD-BW4	1	lec	His.bez.wew	15			Historia bezpieczeństwa wewnętrznego w Polsce
1328	SD-BW3	1	lec	His.bez.wew	15			Historia bezpieczeństwa wewnętrznego w Polsce
1331	SD-BW4	1	lec	Kom.spo	15			Komunikowanie społeczne
1331	SD-BW3	1	lec	Kom.spo	15			Komunikowanie społeczne
1389	SD-BW3	3	lec	Wsp.mię.bez	30			Współpraca międzynarodowa w bezpieczeństwie wewnętrznym
1389	SD-BW4	3	lec	Wsp.mię.bez	30			Współpraca międzynarodowa w bezpieczeństwie wewnętrznym
1399	ND-BW4	3	lec	Wsp.mię.bez	9			Współpraca międzynarodowa w bezpieczeństwie wewnętrznym
1405	ND-BW4	3	lec	Zas.log.bez	9			Zasilanie logistyczne w bezpieczeństwie
1408	ND-BW4	1	lec	Psy.spo	18			Psychologia społeczna
1478	SD-BW3	1	lec	Psy.spo	30			Psychologia społeczna
1478	SD-BW4	1	lec	Psy.spo	30			Psychologia społeczna
1533	ND-BW4	1	lec	Kom.spo	9			Komunikowanie społeczne
1598	SP-CBW5	3	lec	Ins.źró.pra	15			Instytucje i źródła prawa UE
1598	SP-CBW6	3	lec	Ins.źró.pra	15			Instytucje i źródła prawa UE
9433	NP-CBW8	4	exc	Jęz.nie	18			Język niemiecki
9431	NP-CBW8	4	-	Jęz.ang	0			Język angielski
9432	NP-CBW8	4	-	Jęz.nie	0			Język niemiecki
9432	NP-CBW7	4	-	Jęz.nie	0			Język niemiecki
9434	NP-CBW8	4	-	Jęz.ros	0			Język rosyjski
9434	NP-CBW7	4	-	Jęz.ros	0			Język rosyjski
9445	ND-BW6	3	-	Jęz.ang	0			Język angielski
9445	ND-BW5	3	-	Jęz.ang	0			Język angielski
9446	ND-BW6	3	-	Jęz.nie	0			Język niemiecki
9446	ND-BW5	3	-	Jęz.nie	0			Język niemiecki
9447	ND-BW6	3	-	Jęz.ros	0			Język rosyjski
9447	ND-BW5	3	-	Jęz.ros	0			Język rosyjski
9455	SP-CBW7	4	-	Jęz.nie	0			Język niemiecki
9455	SP-CBW8	4	-	Jęz.nie	0			Język niemiecki
9457	SP-CBW7	4	-	Jęz.ros	0			Język rosyjski
9457	SP-CBW8	4	-	Jęz.ros	0			Język rosyjski
1717	SP-CBW5	3	lec	Kry.kry	30			Kryminalistyka i kryminologia
1717	SP-CBW6	3	lec	Kry.kry	30			Kryminalistyka i kryminologia
1723	SP-CBW5	3	lec	Zar.kry	15			Zarządzanie kryzysowe
1723	SP-CBW6	3	lec	Zar.kry	15			Zarządzanie kryzysowe
1823	SD-BW4	1	lec	Str.bez.wew	30			Strategie bezpieczeństwa wewnętrznego
1823	SD-BW3	1	lec	Str.bez.wew	30			Strategie bezpieczeństwa wewnętrznego
1902	SP-CBW5	4	lec	Bez.spo.lok	15			Bezpieczeństwo społeczności lokalnych i kształtowanie bezpiecznych przestrzeni
1902	SP-CBW6	4	lec	Bez.spo.lok	15			Bezpieczeństwo społeczności lokalnych i kształtowanie bezpiecznych przestrzeni
1932	SP-CBW5	1	lec	Och.wła.int	15			Ochrona własności intelektualnej
1932	SP-CBW6	1	lec	Och.wła.int	15			Ochrona własności intelektualnej
1945	SP-CBW6	1	lec	Wsp.zag.bez	30			Współczesne zagrożenia bezpieczeństwa
1945	SP-CBW5	1	lec	Wsp.zag.bez	30			Współczesne zagrożenia bezpieczeństwa
3552	SD-BW4	3	lec	Sił.zbr.bez	30			Siły Zbrojne w bezpieczeństwie wewnętrznym
3552	SD-BW3	3	lec	Sił.zbr.bez	30			Siły Zbrojne w bezpieczeństwie wewnętrznym
3558	SD-BW4	1	lec	Org.fun.adm.pub	15			Organizacja i funkcjonowanie administracji publicznej
3558	SD-BW3	1	lec	Org.fun.adm.pub	15			Organizacja i funkcjonowanie administracji publicznej
3782	SP-CBW6	3	lec	Sys.ins.bez	30			Systemy i instytucje bezpieczeństwa wewnętrznego
3782	SP-CBW5	3	lec	Sys.ins.bez	30			Systemy i instytucje bezpieczeństwa wewnętrznego
3903	SP-CBW6	3	lec	Pla.cyw	30			Planowanie cywilne
3962	SP-CBW6	3	lec	Bez.spo.lok	15			Bezpieczeństwo społeczności lokalnych i kształtowanie bezpiecznych przestrzeni
3962	SP-CBW5	3	lec	Bez.spo.lok	15			Bezpieczeństwo społeczności lokalnych i kształtowanie bezpiecznych przestrzeni
3982	SP-CBW5	3	lec	Pos.adm.cyw	15			Postępowanie administracyjne i cywilne
3982	SP-CBW6	3	lec	Pos.adm.cyw	15			Postępowanie administracyjne i cywilne
3985	SP-CBW6	1	lec	Ekonomia	15			Ekonomia
3985	SP-CBW5	1	lec	Ekonomia	15			Ekonomia
3988	SP-CBW6	1	lec	His.bez	15			Historia bezpieczeństwa
3988	SP-CBW5	1	lec	His.bez	15			Historia bezpieczeństwa
3994	SP-CBW6	1	lec	Org.i.zar	15			Organizacja i zarządzanie
3994	SP-CBW5	1	lec	Org.i.zar	15			Organizacja i zarządzanie
3995	SP-CBW6	1	lec	Org.fun.adm.rzą	15			Organizacja i funkcjonowanie administracji rządowej
3995	SP-CBW5	1	lec	Org.fun.adm.rzą	15			Organizacja i funkcjonowanie administracji rządowej
3996	SP-CBW6	4	lec	Psy.soc	15			Psychologia i socjologia
3996	SP-CBW5	4	lec	Psy.soc	15			Psychologia i socjologia
4003	SP-CBW5	1	lec	Pod.teo.bez	30			Podstawy teorii bezpieczeństwa
4003	SP-CBW6	1	lec	Pod.teo.bez	30			Podstawy teorii bezpieczeństwa
4038	SP-CBW6	1	lec	Erg.fiz.bez	15			Ergonomia i fizjologia w bezpieczeństwie pracy
4038	SP-CBW5	1	lec	Erg.fiz.bez	15			Ergonomia i fizjologia w bezpieczeństwie pracy
4132	ND-BW4	2	lec	Pra.asp.bez	9			Prawno - funkcjonalne aspekty bezpieczeństwa wewnętrznego
4141	SP-PK15	4	lec	Psy.soc	15			Psychologia i socjologia
4141	SP-PK17	4	lec	Psy.soc	15			Psychologia i socjologia
4141	SP-PK16	4	lec	Psy.soc	15			Psychologia i socjologia
4141	SP-PK18	4	lec	Psy.soc	15			Psychologia i socjologia
4143	SP-PK15	1	lec	Fil.ety	30			Filozofia i etyka
4143	SP-PK16	1	lec	Fil.ety	30			Filozofia i etyka
4143	SP-PK17	1	lec	Fil.ety	30			Filozofia i etyka
4143	SP-PK18	1	lec	Fil.ety	30			Filozofia i etyka
4144	SP-PK16	2	lec	Ekonomia	30			Ekonomia
4144	SP-PK18	2	lec	Ekonomia	30			Ekonomia
4144	SP-PK17	2	lec	Ekonomia	30			Ekonomia
4144	SP-PK15	2	lec	Ekonomia	30			Ekonomia
4153	SP-PK18	2	lec	Och.wła.int	7			Ochrona własności intelektualnej
4153	SP-PK17	2	lec	Och.wła.int	7			Ochrona własności intelektualnej
4153	SP-PK15	2	lec	Och.wła.int	7			Ochrona własności intelektualnej
4153	SP-PK16	2	lec	Och.wła.int	7			Ochrona własności intelektualnej
4154	SP-PK16	2	lec	His.poz	8			Historia pożarnictwa
4154	SP-PK15	2	lec	His.poz	8			Historia pożarnictwa
4154	SP-PK17	2	lec	His.poz	8			Historia pożarnictwa
4154	SP-PK18	2	lec	His.poz	8			Historia pożarnictwa
4155	SP-PK15	8	lec	Szk.obr	21			Szkolenie obronne
4155	SP-PK18	8	lec	Szk.obr	21			Szkolenie obronne
4155	SP-PK16	8	lec	Szk.obr	21			Szkolenie obronne
4155	SP-PK17	8	lec	Szk.obr	21			Szkolenie obronne
4156	SP-PK18	1	lec	Matematyka	30			Matematyka
4156	SP-PK17	1	lec	Matematyka	30			Matematyka
4156	SP-PK16	1	lec	Matematyka	30			Matematyka
4156	SP-PK15	1	lec	Matematyka	30			Matematyka
4159	SP-PK17	1	lec	Fizyka	30			Fizyka
4159	SP-PK18	1	lec	Fizyka	30			Fizyka
4159	SP-PK16	1	lec	Fizyka	30			Fizyka
4159	SP-PK15	1	lec	Fizyka	30			Fizyka
4162	SP-PK16	1	lec	Chemia	30			Chemia
4162	SP-PK17	1	lec	Chemia	30			Chemia
4162	SP-PK15	1	lec	Chemia	30			Chemia
4162	SP-PK18	1	lec	Chemia	30			Chemia
4165	SP-PK15	1	lec	Tec.inf	30			Technologie informacyjne
4165	SP-PK16	1	lec	Tec.inf	30			Technologie informacyjne
4165	SP-PK18	1	lec	Tec.inf	30			Technologie informacyjne
4165	SP-PK17	1	lec	Tec.inf	30			Technologie informacyjne
4169	SP-PK18	1	lec	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
4169	SP-PK17	1	lec	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
4169	SP-PK15	1	lec	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
4169	SP-PK16	1	lec	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
4172	SP-PK16	3	lec	Termodynamika	30			Termodynamika
4172	SP-PK18	3	lec	Termodynamika	30			Termodynamika
4172	SP-PK15	3	lec	Termodynamika	30			Termodynamika
4172	SP-PK17	3	lec	Termodynamika	30			Termodynamika
4173	SP-PK15	3	lec	Pra.kra.mię.lud	30			Prawo krajowe i międzynarodowe w ochronie ludności
4173	SP-PK17	3	lec	Pra.kra.mię.lud	30			Prawo krajowe i międzynarodowe w ochronie ludności
4173	SP-PK18	3	lec	Pra.kra.mię.lud	30			Prawo krajowe i międzynarodowe w ochronie ludności
4173	SP-PK16	3	lec	Pra.kra.mię.lud	30			Prawo krajowe i międzynarodowe w ochronie ludności
4174	SP-PK15	2	lec	Hyd.prz.zao	30			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4174	SP-PK17	2	lec	Hyd.prz.zao	30			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4174	SP-PK18	2	lec	Hyd.prz.zao	30			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4174	SP-PK16	2	lec	Hyd.prz.zao	30			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4177	SP-PK17	3	lec	Mon.zag.bez	30			Monitorowanie zagrożeń bezpieczeństwa
4177	SP-PK15	3	lec	Mon.zag.bez	30			Monitorowanie zagrożeń bezpieczeństwa
4177	SP-PK16	3	lec	Mon.zag.bez	30			Monitorowanie zagrożeń bezpieczeństwa
4177	SP-PK18	3	lec	Mon.zag.bez	30			Monitorowanie zagrożeń bezpieczeństwa
4178	SP-PK18	3	lec	Org.fun.rat	30			Organizacja i funkcjonowanie ratownictwa i innych systemów bezpieczeństwa
4178	SP-PK16	3	lec	Org.fun.rat	30			Organizacja i funkcjonowanie ratownictwa i innych systemów bezpieczeństwa
4178	SP-PK17	3	lec	Org.fun.rat	30			Organizacja i funkcjonowanie ratownictwa i innych systemów bezpieczeństwa
4178	SP-PK15	3	lec	Org.fun.rat	30			Organizacja i funkcjonowanie ratownictwa i innych systemów bezpieczeństwa
4179	SP-PK15	2	lec	Pod.bud	30			Podstawy budownictwa
4179	SP-PK17	2	lec	Pod.bud	30			Podstawy budownictwa
4179	SP-PK16	2	lec	Pod.bud	30			Podstawy budownictwa
4179	SP-PK18	2	lec	Pod.bud	30			Podstawy budownictwa
4181	SP-PK16	3	lec	Ele.ele.poz	30			Elektrotechnika i elektronika w pożarnictwie
4181	SP-PK17	3	lec	Ele.ele.poz	30			Elektrotechnika i elektronika w pożarnictwie
4181	SP-PK18	3	lec	Ele.ele.poz	30			Elektrotechnika i elektronika w pożarnictwie
4181	SP-PK15	3	lec	Ele.ele.poz	30			Elektrotechnika i elektronika w pożarnictwie
4183	SP-PK15	4	lec	Teo.poż	30			Teoria pożarów
4183	SP-PK17	4	lec	Teo.poż	30			Teoria pożarów
4183	SP-PK18	4	lec	Teo.poż	30			Teoria pożarów
4183	SP-PK16	4	lec	Teo.poż	30			Teoria pożarów
4184	SP-PK18	4	lec	Fiz.spa	15			Fizykochemia spalania
4184	SP-PK15	4	lec	Fiz.spa	15			Fizykochemia spalania
4184	SP-PK16	4	lec	Fiz.spa	15			Fizykochemia spalania
4184	SP-PK17	4	lec	Fiz.spa	15			Fizykochemia spalania
4187	SP-PK18	4	lec	Pod.kon.mas	15			Podstawy konstrukcji maszyn
4187	SP-PK15	4	lec	Pod.kon.mas	15			Podstawy konstrukcji maszyn
4187	SP-PK17	4	lec	Pod.kon.mas	15			Podstawy konstrukcji maszyn
4187	SP-PK16	4	lec	Pod.kon.mas	15			Podstawy konstrukcji maszyn
4189	SP-PK18	4	lec	Tec.sys.zab	30			Techniczne systemy zabezpieczeń
4189	SP-PK16	4	lec	Tec.sys.zab	30			Techniczne systemy zabezpieczeń
4189	SP-PK17	4	lec	Tec.sys.zab	30			Techniczne systemy zabezpieczeń
4189	SP-PK15	4	lec	Tec.sys.zab	30			Techniczne systemy zabezpieczeń
4192	SP-PK16	4	lec	Śro.gaś.neu	30			Środki gaśnicze i neutralizujące
4192	SP-PK18	4	lec	Śro.gaś.neu	30			Środki gaśnicze i neutralizujące
4192	SP-PK17	4	lec	Śro.gaś.neu	30			Środki gaśnicze i neutralizujące
4192	SP-PK15	4	lec	Śro.gaś.neu	30			Środki gaśnicze i neutralizujące
4194	SP-PK18	4	lec	Inf.kom	30			Infrastruktura komunalna
4194	SP-PK16	4	lec	Inf.kom	30			Infrastruktura komunalna
4194	SP-PK15	4	lec	Inf.kom	30			Infrastruktura komunalna
4194	SP-PK17	4	lec	Inf.kom	30			Infrastruktura komunalna
4195	SP-PK15	5	lec	Sam.poj.rat	30			Samochody i pojazdy ratownicze
4195	SP-PK17	5	lec	Sam.poj.rat	30			Samochody i pojazdy ratownicze
4195	SP-PK16	5	lec	Sam.poj.rat	30			Samochody i pojazdy ratownicze
4195	SP-PK18	5	lec	Sam.poj.rat	30			Samochody i pojazdy ratownicze
4197	SP-PK18	5	lec	Spr.rat	30			Sprzęt ratowniczo - gaśniczy
4197	SP-PK15	5	lec	Spr.rat	30			Sprzęt ratowniczo - gaśniczy
4197	SP-PK16	5	lec	Spr.rat	30			Sprzęt ratowniczo - gaśniczy
4197	SP-PK17	5	lec	Spr.rat	30			Sprzęt ratowniczo - gaśniczy
4200	SP-PK18	6	lec	Dzi.gas	30			Działania gaśnicze
4200	SP-PK16	6	lec	Dzi.gas	30			Działania gaśnicze
4200	SP-PK17	6	lec	Dzi.gas	30			Działania gaśnicze
4200	SP-PK15	6	lec	Dzi.gas	30			Działania gaśnicze
4202	SP-PK17	5	lec	Rat.che.i.eko	30			Ratownictwo chemiczne i ekologiczne
4202	SP-PK16	5	lec	Rat.che.i.eko	30			Ratownictwo chemiczne i ekologiczne
4202	SP-PK15	5	lec	Rat.che.i.eko	30			Ratownictwo chemiczne i ekologiczne
4202	SP-PK18	5	lec	Rat.che.i.eko	30			Ratownictwo chemiczne i ekologiczne
4205	SP-PK17	5	lec	Med.kat	15			Medycyna katastrof
4205	SP-PK16	5	lec	Med.kat	15			Medycyna katastrof
4205	SP-PK15	5	lec	Med.kat	15			Medycyna katastrof
4205	SP-PK18	5	lec	Med.kat	15			Medycyna katastrof
4207	SP-PK16	5	lec	Rat.tec	15			Ratownictwo techniczne
4207	SP-PK18	5	lec	Rat.tec	15			Ratownictwo techniczne
4207	SP-PK17	5	lec	Rat.tec	15			Ratownictwo techniczne
4207	SP-PK15	5	lec	Rat.tec	15			Ratownictwo techniczne
4209	SP-PK18	5	lec	Ewa.int	15			Ewakuacja interwencyjna
4209	SP-PK15	5	lec	Ewa.int	15			Ewakuacja interwencyjna
4209	SP-PK17	5	lec	Ewa.int	15			Ewakuacja interwencyjna
4209	SP-PK16	5	lec	Ewa.int	15			Ewakuacja interwencyjna
4211	SP-PK18	5	lec	Org.łąc.ala	15			Organizacja łączności i alarmowanie
4211	SP-PK17	5	lec	Org.łąc.ala	15			Organizacja łączności i alarmowanie
4211	SP-PK16	5	lec	Org.łąc.ala	15			Organizacja łączności i alarmowanie
4211	SP-PK15	5	lec	Org.łąc.ala	15			Organizacja łączności i alarmowanie
4214	SP-PK16	5	lec	Bez.dzi.rat	30			Bezpieczeństwo działań ratowniczych
4214	SP-PK18	5	lec	Bez.dzi.rat	30			Bezpieczeństwo działań ratowniczych
4214	SP-PK15	5	lec	Bez.dzi.rat	30			Bezpieczeństwo działań ratowniczych
4214	SP-PK17	5	lec	Bez.dzi.rat	30			Bezpieczeństwo działań ratowniczych
4217	SP-PK16	6	lec	Tak.dow	30			Taktyka i dowodzenie
4217	SP-PK18	6	lec	Tak.dow	30			Taktyka i dowodzenie
4217	SP-PK17	6	lec	Tak.dow	30			Taktyka i dowodzenie
4217	SP-PK15	6	lec	Tak.dow	30			Taktyka i dowodzenie
4220	SP-PK17	7	lec	Bez.poż.budy	30			Bezpieczeństwo pożarowe budynków
4220	SP-PK15	7	lec	Bez.poż.budy	30			Bezpieczeństwo pożarowe budynków
4220	SP-PK18	7	lec	Bez.poż.budy	30			Bezpieczeństwo pożarowe budynków
4220	SP-PK16	7	lec	Bez.poż.budy	30			Bezpieczeństwo pożarowe budynków
4222	SP-PK16	7	lec	Ana.ryz.pro	30			Analiza ryzyka w procesach przemysłowych
4222	SP-PK17	7	lec	Ana.ryz.pro	30			Analiza ryzyka w procesach przemysłowych
4222	SP-PK18	7	lec	Ana.ryz.pro	30			Analiza ryzyka w procesach przemysłowych
4222	SP-PK15	7	lec	Ana.ryz.pro	30			Analiza ryzyka w procesach przemysłowych
4224	SP-PK17	7	lec	Met.bad.prz	15			Metodyka badań przyczyn pożarów
4224	SP-PK18	7	lec	Met.bad.prz	15			Metodyka badań przyczyn pożarów
4224	SP-PK15	7	lec	Met.bad.prz	15			Metodyka badań przyczyn pożarów
4224	SP-PK16	7	lec	Met.bad.prz	15			Metodyka badań przyczyn pożarów
4227	SP-PK18	7	lec	Bez.poż.las	15			Bezpieczeństwo pożarowe lasów
4227	SP-PK16	7	lec	Bez.poż.las	15			Bezpieczeństwo pożarowe lasów
4227	SP-PK15	7	lec	Bez.poż.las	15			Bezpieczeństwo pożarowe lasów
4227	SP-PK17	7	lec	Bez.poż.las	15			Bezpieczeństwo pożarowe lasów
4234	SP-PK16	8	lec	Inż.bez.tec	21			Inżynieria bezpieczeństwa technicznego
4234	SP-PK15	8	lec	Inż.bez.tec	21			Inżynieria bezpieczeństwa technicznego
4234	SP-PK18	8	lec	Inż.bez.tec	21			Inżynieria bezpieczeństwa technicznego
4234	SP-PK17	8	lec	Inż.bez.tec	21			Inżynieria bezpieczeństwa technicznego
4235	SP-PK16	8	lec	Mię.wsp.rat	14			Międzynarodowa współpraca ratownicza
4235	SP-PK17	8	lec	Mię.wsp.rat	14			Międzynarodowa współpraca ratownicza
4235	SP-PK15	8	lec	Mię.wsp.rat	14			Międzynarodowa współpraca ratownicza
4235	SP-PK18	8	lec	Mię.wsp.rat	14			Międzynarodowa współpraca ratownicza
4236	SP-PK16	8	lec	Log.wsp.dłu	14			Logistyczne wsparcie długotrwałych działań ratowniczych
4236	SP-PK17	8	lec	Log.wsp.dłu	14			Logistyczne wsparcie długotrwałych działań ratowniczych
4236	SP-PK15	8	lec	Log.wsp.dłu	14			Logistyczne wsparcie długotrwałych działań ratowniczych
4236	SP-PK18	8	lec	Log.wsp.dłu	14			Logistyczne wsparcie długotrwałych działań ratowniczych
4238	SP-PK17	8	lec	Dzi.rat.pod	14			Działania ratownicze podczas klęsk żywiołowych
4238	SP-PK16	8	lec	Dzi.rat.pod	14			Działania ratownicze podczas klęsk żywiołowych
4238	SP-PK15	8	lec	Dzi.rat.pod	14			Działania ratownicze podczas klęsk żywiołowych
4238	SP-PK18	8	lec	Dzi.rat.pod	14			Działania ratownicze podczas klęsk żywiołowych
4276	ND-P35	1	lec	Met.bad.nau	9			Metodologia badań naukowych w inżynierii bezpieczeństwa
4276	ND-P34	1	lec	Met.bad.nau	9			Metodologia badań naukowych w inżynierii bezpieczeństwa
4277	ND-P35	1	lec	Mat.wsp.dec	9			Matematyczne wspomaganie decyzji
4277	ND-P34	1	lec	Mat.wsp.dec	9			Matematyczne wspomaganie decyzji
4280	ND-P35	1	lec	Zar.inf	9			Zarządzanie informacjami
4280	ND-P34	1	lec	Zar.inf	9			Zarządzanie informacjami
4282	ND-P34	1	lec	Mod.poż	9			Modelowanie pożarów
4282	ND-P35	1	lec	Mod.poż	9			Modelowanie pożarów
4286	ND-P35	1	lec	Wsp.pro.inż	18			Współczesne problemy inżynierii środowiska
4286	ND-P34	1	lec	Wsp.pro.inż	18			Współczesne problemy inżynierii środowiska
4293	SP-PC18	4	lec	Psy.soc	15			Psychologia i socjologia
4293	SP-PC17	4	lec	Psy.soc	15			Psychologia i socjologia
4293	SP-PC15	4	lec	Psy.soc	15			Psychologia i socjologia
4293	SP-PC16	4	lec	Psy.soc	15			Psychologia i socjologia
4295	SP-PC17	1	lec	Fil.ety	30			Filozofia i etyka
4295	SP-PC16	1	lec	Fil.ety	30			Filozofia i etyka
4295	SP-PC15	1	lec	Fil.ety	30			Filozofia i etyka
4295	SP-PC18	1	lec	Fil.ety	30			Filozofia i etyka
4296	SP-PC16	2	lec	Ekonomia	30			Ekonomia
4296	SP-PC15	2	lec	Ekonomia	30			Ekonomia
4296	SP-PC18	2	lec	Ekonomia	30			Ekonomia
4296	SP-PC17	2	lec	Ekonomia	30			Ekonomia
4299	SP-PC16	1	lec	Matematyka	30			Matematyka
4299	SP-PC17	1	lec	Matematyka	30			Matematyka
4299	SP-PC18	1	lec	Matematyka	30			Matematyka
4299	SP-PC15	1	lec	Matematyka	30			Matematyka
4302	SP-PC18	1	lec	Fizyka	30			Fizyka
4302	SP-PC17	1	lec	Fizyka	30			Fizyka
4302	SP-PC16	1	lec	Fizyka	30			Fizyka
4302	SP-PC15	1	lec	Fizyka	30			Fizyka
4305	SP-PC16	1	lec	Tec.inf	30			Technologie informacyjne
4305	SP-PC18	1	lec	Tec.inf	30			Technologie informacyjne
4305	SP-PC15	1	lec	Tec.inf	30			Technologie informacyjne
4305	SP-PC17	1	lec	Tec.inf	30			Technologie informacyjne
4310	SP-PC15	1	lec	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
4310	SP-PC16	1	lec	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
4310	SP-PC17	1	lec	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
4310	SP-PC18	1	lec	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
4314	SP-PC16	3	lec	Termodynamika	30			Termodynamika
4314	SP-PC15	3	lec	Termodynamika	30			Termodynamika
4314	SP-PC18	3	lec	Termodynamika	30			Termodynamika
4314	SP-PC17	3	lec	Termodynamika	30			Termodynamika
4315	SP-PC18	3	lec	Pra.kra.mię.lud	30			Prawo krajowe i międzynarodowe w ochronie ludności
4315	SP-PC16	3	lec	Pra.kra.mię.lud	30			Prawo krajowe i międzynarodowe w ochronie ludności
4315	SP-PC17	3	lec	Pra.kra.mię.lud	30			Prawo krajowe i międzynarodowe w ochronie ludności
4315	SP-PC15	3	lec	Pra.kra.mię.lud	30			Prawo krajowe i międzynarodowe w ochronie ludności
4316	SP-PC17	2	lec	Hyd.prz.zao	30			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4316	SP-PC18	2	lec	Hyd.prz.zao	30			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4316	SP-PC15	2	lec	Hyd.prz.zao	30			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4316	SP-PC16	2	lec	Hyd.prz.zao	30			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4319	SP-PC17	3	lec	Mon.zag.bez	30			Monitorowanie zagrożeń bezpieczeństwa
4319	SP-PC16	3	lec	Mon.zag.bez	30			Monitorowanie zagrożeń bezpieczeństwa
4319	SP-PC18	3	lec	Mon.zag.bez	30			Monitorowanie zagrożeń bezpieczeństwa
4319	SP-PC15	3	lec	Mon.zag.bez	30			Monitorowanie zagrożeń bezpieczeństwa
4320	SP-PC16	3	lec	Org.fun.rat	30			Organizacja i funkcjonowanie ratownictwa i innych systemów bezpieczeństwa
4320	SP-PC18	3	lec	Org.fun.rat	30			Organizacja i funkcjonowanie ratownictwa i innych systemów bezpieczeństwa
4320	SP-PC15	3	lec	Org.fun.rat	30			Organizacja i funkcjonowanie ratownictwa i innych systemów bezpieczeństwa
4320	SP-PC17	3	lec	Org.fun.rat	30			Organizacja i funkcjonowanie ratownictwa i innych systemów bezpieczeństwa
4321	SP-PC15	2	lec	Pod.bud	30			Podstawy budownictwa
4321	SP-PC16	2	lec	Pod.bud	30			Podstawy budownictwa
4321	SP-PC17	2	lec	Pod.bud	30			Podstawy budownictwa
4321	SP-PC18	2	lec	Pod.bud	30			Podstawy budownictwa
4323	SP-PC15	3	lec	Ele.ele.poz	30			Elektrotechnika i elektronika w pożarnictwie
4323	SP-PC17	3	lec	Ele.ele.poz	30			Elektrotechnika i elektronika w pożarnictwie
4323	SP-PC16	3	lec	Ele.ele.poz	30			Elektrotechnika i elektronika w pożarnictwie
4323	SP-PC18	3	lec	Ele.ele.poz	30			Elektrotechnika i elektronika w pożarnictwie
4325	SP-PC17	4	lec	Teo.poż	30			Teoria pożarów
4325	SP-PC15	4	lec	Teo.poż	30			Teoria pożarów
4325	SP-PC18	4	lec	Teo.poż	30			Teoria pożarów
4325	SP-PC16	4	lec	Teo.poż	30			Teoria pożarów
4327	SP-PC18	4	lec	Fiz.spa	15			Fizykochemia spalania
4327	SP-PC16	4	lec	Fiz.spa	15			Fizykochemia spalania
4327	SP-PC17	4	lec	Fiz.spa	15			Fizykochemia spalania
4327	SP-PC15	4	lec	Fiz.spa	15			Fizykochemia spalania
4329	SP-PC18	4	lec	Pod.kon.mas	15			Podstawy konstrukcji maszyn
4329	SP-PC15	4	lec	Pod.kon.mas	15			Podstawy konstrukcji maszyn
4329	SP-PC16	4	lec	Pod.kon.mas	15			Podstawy konstrukcji maszyn
4329	SP-PC17	4	lec	Pod.kon.mas	15			Podstawy konstrukcji maszyn
4331	SP-PC15	4	lec	Tec.sys.zab	30			Techniczne systemy zabezpieczeń
4331	SP-PC16	4	lec	Tec.sys.zab	30			Techniczne systemy zabezpieczeń
4331	SP-PC17	4	lec	Tec.sys.zab	30			Techniczne systemy zabezpieczeń
4331	SP-PC18	4	lec	Tec.sys.zab	30			Techniczne systemy zabezpieczeń
4333	SP-PC18	4	lec	Śro.gaś.neu	30			Środki gaśnicze i neutralizujące
4333	SP-PC15	4	lec	Śro.gaś.neu	30			Środki gaśnicze i neutralizujące
4333	SP-PC17	4	lec	Śro.gaś.neu	30			Środki gaśnicze i neutralizujące
4333	SP-PC16	4	lec	Śro.gaś.neu	30			Środki gaśnicze i neutralizujące
4335	SP-PC15	4	lec	Inf.kom	30			Infrastruktura komunalna
4335	SP-PC16	4	lec	Inf.kom	30			Infrastruktura komunalna
4335	SP-PC17	4	lec	Inf.kom	30			Infrastruktura komunalna
4335	SP-PC18	4	lec	Inf.kom	30			Infrastruktura komunalna
4338	SP-PC15	7	lec	Och.wła.int	15			Ochrona własności intelektualnej
4338	SP-PC18	7	lec	Och.wła.int	15			Ochrona własności intelektualnej
4338	SP-PC17	7	lec	Och.wła.int	15			Ochrona własności intelektualnej
4338	SP-PC16	7	lec	Och.wła.int	15			Ochrona własności intelektualnej
4339	SP-PC16	8	lec	Szk.obr	21			Szkolenie obronne
4339	SP-PC15	8	lec	Szk.obr	21			Szkolenie obronne
4339	SP-PC18	8	lec	Szk.obr	21			Szkolenie obronne
4339	SP-PC17	8	lec	Szk.obr	21			Szkolenie obronne
4342	SP-PC15	5	lec	Sam.poj.rat	30			Samochody i pojazdy ratownicze
4342	SP-PC17	5	lec	Sam.poj.rat	30			Samochody i pojazdy ratownicze
4342	SP-PC16	5	lec	Sam.poj.rat	30			Samochody i pojazdy ratownicze
4342	SP-PC18	5	lec	Sam.poj.rat	30			Samochody i pojazdy ratownicze
4344	SP-PC17	5	lec	Spr.rat	30			Sprzęt ratowniczo - gaśniczy
4344	SP-PC15	5	lec	Spr.rat	30			Sprzęt ratowniczo - gaśniczy
4344	SP-PC16	5	lec	Spr.rat	30			Sprzęt ratowniczo - gaśniczy
4344	SP-PC18	5	lec	Spr.rat	30			Sprzęt ratowniczo - gaśniczy
4347	SP-PC17	6	lec	Dzi.gas	30			Działania gaśnicze
4347	SP-PC15	6	lec	Dzi.gas	30			Działania gaśnicze
4347	SP-PC16	6	lec	Dzi.gas	30			Działania gaśnicze
4347	SP-PC18	6	lec	Dzi.gas	30			Działania gaśnicze
4349	SP-PC16	5	lec	Rat.che.i.eko	30			Ratownictwo chemiczne i ekologiczne
4349	SP-PC17	5	lec	Rat.che.i.eko	30			Ratownictwo chemiczne i ekologiczne
4349	SP-PC18	5	lec	Rat.che.i.eko	30			Ratownictwo chemiczne i ekologiczne
4349	SP-PC15	5	lec	Rat.che.i.eko	30			Ratownictwo chemiczne i ekologiczne
4364	SP-PC16	5	lec	Med.kat	15			Medycyna katastrof
4364	SP-PC15	5	lec	Med.kat	15			Medycyna katastrof
4364	SP-PC17	5	lec	Med.kat	15			Medycyna katastrof
4364	SP-PC18	5	lec	Med.kat	15			Medycyna katastrof
4366	SP-PC18	5	lec	Rat.tec	15			Ratownictwo techniczne
4366	SP-PC16	5	lec	Rat.tec	15			Ratownictwo techniczne
4366	SP-PC17	5	lec	Rat.tec	15			Ratownictwo techniczne
4366	SP-PC15	5	lec	Rat.tec	15			Ratownictwo techniczne
4368	SP-PC18	5	lec	Ewa.int	15			Ewakuacja interwencyjna
4368	SP-PC17	5	lec	Ewa.int	15			Ewakuacja interwencyjna
4368	SP-PC15	5	lec	Ewa.int	15			Ewakuacja interwencyjna
4368	SP-PC16	5	lec	Ewa.int	15			Ewakuacja interwencyjna
4370	SP-PC15	5	lec	Org.łąc.ala	15			Organizacja łączności i alarmowanie
4370	SP-PC18	5	lec	Org.łąc.ala	15			Organizacja łączności i alarmowanie
4370	SP-PC16	5	lec	Org.łąc.ala	15			Organizacja łączności i alarmowanie
4370	SP-PC17	5	lec	Org.łąc.ala	15			Organizacja łączności i alarmowanie
4373	SP-PC15	5	lec	Bez.dzi.rat	30			Bezpieczeństwo działań ratowniczych
4373	SP-PC18	5	lec	Bez.dzi.rat	30			Bezpieczeństwo działań ratowniczych
4373	SP-PC17	5	lec	Bez.dzi.rat	30			Bezpieczeństwo działań ratowniczych
4373	SP-PC16	5	lec	Bez.dzi.rat	30			Bezpieczeństwo działań ratowniczych
4376	SP-PC16	6	lec	Tak.dow	30			Taktyka i dowodzenie
4376	SP-PC18	6	lec	Tak.dow	30			Taktyka i dowodzenie
4376	SP-PC17	6	lec	Tak.dow	30			Taktyka i dowodzenie
4378	SP-PC17	5	lec	Wen.poz	30			Wentylacja pożarowa
4378	SP-PC15	5	lec	Wen.poz	30			Wentylacja pożarowa
4378	SP-PC18	5	lec	Wen.poz	30			Wentylacja pożarowa
4378	SP-PC16	5	lec	Wen.poz	30			Wentylacja pożarowa
4381	SP-PC15	6	lec	Zab.pro.tec	30			Zabezpieczenia w procesach technologicznych
4381	SP-PC16	6	lec	Zab.pro.tec	30			Zabezpieczenia w procesach technologicznych
4381	SP-PC17	6	lec	Zab.pro.tec	30			Zabezpieczenia w procesach technologicznych
4381	SP-PC18	6	lec	Zab.pro.tec	30			Zabezpieczenia w procesach technologicznych
4383	SP-PC18	7	lec	Bez.poż.budy	30			Bezpieczeństwo pożarowe budynków
4383	SP-PC16	7	lec	Bez.poż.budy	30			Bezpieczeństwo pożarowe budynków
4383	SP-PC17	7	lec	Bez.poż.budy	30			Bezpieczeństwo pożarowe budynków
4383	SP-PC15	7	lec	Bez.poż.budy	30			Bezpieczeństwo pożarowe budynków
4385	SP-PC17	7	lec	Ana.ryz.pro	30			Analiza ryzyka w procesach przemysłowych
4385	SP-PC18	7	lec	Ana.ryz.pro	30			Analiza ryzyka w procesach przemysłowych
4385	SP-PC16	7	lec	Ana.ryz.pro	30			Analiza ryzyka w procesach przemysłowych
4385	SP-PC15	7	lec	Ana.ryz.pro	30			Analiza ryzyka w procesach przemysłowych
4387	SP-PC17	7	lec	Met.bad.prz	15			Metodyka badań przyczyn pożarów
4387	SP-PC18	7	lec	Met.bad.prz	15			Metodyka badań przyczyn pożarów
4387	SP-PC16	7	lec	Met.bad.prz	15			Metodyka badań przyczyn pożarów
4387	SP-PC15	7	lec	Met.bad.prz	15			Metodyka badań przyczyn pożarów
4390	SP-PC18	7	lec	Bez.poż.las	15			Bezpieczeństwo pożarowe lasów
4390	SP-PC17	7	lec	Bez.poż.las	15			Bezpieczeństwo pożarowe lasów
4390	SP-PC16	7	lec	Bez.poż.las	15			Bezpieczeństwo pożarowe lasów
4390	SP-PC15	7	lec	Bez.poż.las	15			Bezpieczeństwo pożarowe lasów
4392	SP-PC18	8	lec	Inż.bez.tec	21			Inżynieria bezpieczeństwa technicznego
4392	SP-PC16	8	lec	Inż.bez.tec	21			Inżynieria bezpieczeństwa technicznego
4392	SP-PC17	8	lec	Inż.bez.tec	21			Inżynieria bezpieczeństwa technicznego
4392	SP-PC15	8	lec	Inż.bez.tec	21			Inżynieria bezpieczeństwa technicznego
4397	SP-PC16	7	lec	Awa.prz	30			Awarie przemysłowe
4397	SP-PC15	7	lec	Awa.prz	30			Awarie przemysłowe
4397	SP-PC17	7	lec	Awa.prz	30			Awarie przemysłowe
4397	SP-PC18	7	lec	Awa.prz	30			Awarie przemysłowe
4399	SP-PC16	8	lec	Mię.wsp.rat	14			Międzynarodowa współpraca ratownicza
4399	SP-PC15	8	lec	Mię.wsp.rat	14			Międzynarodowa współpraca ratownicza
4399	SP-PC17	8	lec	Mię.wsp.rat	14			Międzynarodowa współpraca ratownicza
4399	SP-PC18	8	lec	Mię.wsp.rat	14			Międzynarodowa współpraca ratownicza
4400	SP-PC18	8	lec	Log.wsp.dłu	14			Logistyczne wsparcie długotrwałych działań ratowniczych
4400	SP-PC17	8	lec	Log.wsp.dłu	14			Logistyczne wsparcie długotrwałych działań ratowniczych
4400	SP-PC16	8	lec	Log.wsp.dłu	14			Logistyczne wsparcie długotrwałych działań ratowniczych
4400	SP-PC15	8	lec	Log.wsp.dłu	14			Logistyczne wsparcie długotrwałych działań ratowniczych
4402	SP-PC17	8	lec	Dzi.rat.pod	14			Działania ratownicze podczas klęsk żywiołowych
4402	SP-PC18	8	lec	Dzi.rat.pod	14			Działania ratownicze podczas klęsk żywiołowych
4402	SP-PC16	8	lec	Dzi.rat.pod	14			Działania ratownicze podczas klęsk żywiołowych
4402	SP-PC15	8	lec	Dzi.rat.pod	14			Działania ratownicze podczas klęsk żywiołowych
4403	SP-PC15	8	lec	Pro.bie.zab	14			Projektowanie biernych zabezpieczeń przeciwpożarowych
4403	SP-PC16	8	lec	Pro.bie.zab	14			Projektowanie biernych zabezpieczeń przeciwpożarowych
4403	SP-PC18	8	lec	Pro.bie.zab	14			Projektowanie biernych zabezpieczeń przeciwpożarowych
4403	SP-PC17	8	lec	Pro.bie.zab	14			Projektowanie biernych zabezpieczeń przeciwpożarowych
4449	SD-P13	1	lec	Met.bad.nau	15			Metodologia badań naukowych w inżynierii bezpieczeństwa
4449	SD-P12	1	lec	Met.bad.nau	15			Metodologia badań naukowych w inżynierii bezpieczeństwa
4450	SD-P12	1	lec	Mat.wsp.dec	15			Matematyczne wspomaganie decyzji
4450	SD-P13	1	lec	Mat.wsp.dec	15			Matematyczne wspomaganie decyzji
4453	SD-P13	1	lec	Zar.inf	15			Zarządzanie informacjami
4453	SD-P12	1	lec	Zar.inf	15			Zarządzanie informacjami
4455	SD-P13	1	lec	Mod.poż	15			Modelowanie pożarów
4455	SD-P12	1	lec	Mod.poż	15			Modelowanie pożarów
4459	SD-P12	1	lec	Wsp.pro.inż	30			Współczesne problemy inżynierii środowiska
4459	SD-P13	1	lec	Wsp.pro.inż	30			Współczesne problemy inżynierii środowiska
4464	SD-P13	1	lec	Nie.bez.bud	15			Niezawodność i bezpieczeństwo budowli
4464	SD-P12	1	lec	Nie.bez.bud	15			Niezawodność i bezpieczeństwo budowli
4466	SD-P12	1	lec	Sys.inf.prz	15			Systemy informacji przestrzennej
4466	SD-P13	1	lec	Sys.inf.prz	15			Systemy informacji przestrzennej
4468	SD-P13	1	lec	Met.tec.zar	15			Metody i techniki zarządzania zasobami ludzkimi
4468	SD-P12	1	lec	Met.tec.zar	15			Metody i techniki zarządzania zasobami ludzkimi
4470	SD-P12	2	lec	Kie.dzi.rat	15			Kierowanie działaniami ratowniczymi
4470	SD-P13	2	lec	Kie.dzi.rat	15			Kierowanie działaniami ratowniczymi
4472	SD-P13	1	lec	Prz.ope.och	30			Przygotowanie operacyjne w ochronie ludności
4472	SD-P12	1	lec	Prz.ope.och	30			Przygotowanie operacyjne w ochronie ludności
4474	SD-P12	1	lec	Wsp.zag.ter	15			Współczesne zagrożenia terrorystyczne
4474	SD-P13	1	lec	Wsp.zag.ter	15			Współczesne zagrożenia terrorystyczne
4475	SD-P12	2	lec	Ana.ryz.inz	15			Analiza ryzyka w inżynierii bezpieczeństwa
4475	SD-P13	2	lec	Ana.ryz.inz	15			Analiza ryzyka w inżynierii bezpieczeństwa
4478	SD-P12	2	lec	Pro.doc.pop	15			Procedura dochodzeń popożarowych
4478	SD-P13	2	lec	Pro.doc.pop	15			Procedura dochodzeń popożarowych
4480	SD-P12	3	lec	Noś.kon.war	15			Nośność konstrukcji w warunkach pożaru
4480	SD-P13	3	lec	Noś.kon.war	15			Nośność konstrukcji w warunkach pożaru
4482	SD-P12	2	lec	Zar.inf.kom	15			Zarządzanie infrastrukturą komunalną w sytuacjach kryzysowych
4482	SD-P13	2	lec	Zar.inf.kom	15			Zarządzanie infrastrukturą komunalną w sytuacjach kryzysowych
4484	SD-P12	3	lec	Str.ope.rat	15			Strategiczne operacje ratownicze
4484	SD-P13	3	lec	Str.ope.rat	15			Strategiczne operacje ratownicze
4487	SD-P12	3	lec	Rze.prz	15			Rzeczoznawstwo przeciwpożarowe
4487	SD-P13	3	lec	Rze.prz	15			Rzeczoznawstwo przeciwpożarowe
4489	SD-P12	2	lec	Kra.sys.wyk	15			Krajowy system wykrywania skażeń i alarmowania
4489	SD-P13	2	lec	Kra.sys.wyk	15			Krajowy system wykrywania skażeń i alarmowania
4494	ND-P34	1	lec	Nie.bez.bud	9			Niezawodność i bezpieczeństwo budowli
4494	ND-P35	1	lec	Nie.bez.bud	9			Niezawodność i bezpieczeństwo budowli
4496	ND-P34	1	lec	Sys.inf.prz	9			Systemy informacji przestrzennej
4496	ND-P35	1	lec	Sys.inf.prz	9			Systemy informacji przestrzennej
4498	ND-P34	1	lec	Met.tec.zar	9			Metody i techniki zarządzania zasobami ludzkimi
4498	ND-P35	1	lec	Met.tec.zar	9			Metody i techniki zarządzania zasobami ludzkimi
4500	ND-P35	2	lec	Kie.dzi.rat	9			Kierowanie działaniami ratowniczymi
4500	ND-P34	2	lec	Kie.dzi.rat	9			Kierowanie działaniami ratowniczymi
4502	ND-P34	1	lec	Prz.ope.och	18			Przygotowanie operacyjne w ochronie ludności
4502	ND-P35	1	lec	Prz.ope.och	18			Przygotowanie operacyjne w ochronie ludności
4504	ND-P35	1	lec	Wsp.zag.ter	9			Współczesne zagrożenia terrorystyczne
4504	ND-P34	1	lec	Wsp.zag.ter	9			Współczesne zagrożenia terrorystyczne
4505	ND-P34	2	lec	Ana.ryz.inz	9			Analiza ryzyka w inżynierii bezpieczeństwa
4505	ND-P35	2	lec	Ana.ryz.inz	9			Analiza ryzyka w inżynierii bezpieczeństwa
4508	ND-P34	2	lec	Pro.doc.pop	9			Procedura dochodzeń popożarowych
4508	ND-P35	2	lec	Pro.doc.pop	9			Procedura dochodzeń popożarowych
4510	ND-P34	3	lec	Noś.kon.war	9			Nośność konstrukcji w warunkach pożaru
4510	ND-P35	3	lec	Noś.kon.war	9			Nośność konstrukcji w warunkach pożaru
4512	ND-P34	2	lec	Zar.inf.kom	9			Zarządzanie infrastrukturą komunalną w sytuacjach kryzysowych
4512	ND-P35	2	lec	Zar.inf.kom	9			Zarządzanie infrastrukturą komunalną w sytuacjach kryzysowych
4514	ND-P34	3	lec	Str.ope.rat	9			Strategiczne operacje ratownicze
4514	ND-P35	3	lec	Str.ope.rat	9			Strategiczne operacje ratownicze
4517	ND-P34	3	lec	Rze.prz	9			Rzeczoznawstwo przeciwpożarowe
4517	ND-P35	3	lec	Rze.prz	9			Rzeczoznawstwo przeciwpożarowe
4519	ND-P34	2	lec	Kra.sys.wyk	9			Krajowy system wykrywania skażeń i alarmowania
4519	ND-P35	2	lec	Kra.sys.wyk	9			Krajowy system wykrywania skażeń i alarmowania
4524	ND-P34	1	lec	Wyb.zag.fil	9			Wybrane zagadnienia z filozofii i etyki
4524	ND-P35	1	lec	Wyb.zag.fil	9			Wybrane zagadnienia z filozofii i etyki
4525	ND-P35	1	lec	Psy.asp.bez	9			Psychologiczne aspekty bezpieczeństwa
4525	ND-P34	1	lec	Psy.asp.bez	9			Psychologiczne aspekty bezpieczeństwa
4526	ND-P35	1	lec	Zas.pro.dzi	9			Zasady prowadzenia działalności gospodarczej
4526	ND-P34	1	lec	Zas.pro.dzi	9			Zasady prowadzenia działalności gospodarczej
4527	ND-P35	1	lec	Med.prz.inf	9			Medialny przekaz informacji w działaniach PSP
4527	ND-P34	1	lec	Med.prz.inf	9			Medialny przekaz informacji w działaniach PSP
4532	SD-P13	1	lec	Wyb.zag.fil	15			Wybrane zagadnienia z filozofii i etyki
4532	SD-P12	1	lec	Wyb.zag.fil	15			Wybrane zagadnienia z filozofii i etyki
4533	SD-P12	1	lec	Psy.asp.bez	15			Psychologiczne aspekty bezpieczeństwa
4533	SD-P13	1	lec	Psy.asp.bez	15			Psychologiczne aspekty bezpieczeństwa
4534	SD-P12	1	lec	Zas.pro.dzi	15			Zasady prowadzenia działalności gospodarczej
4534	SD-P13	1	lec	Zas.pro.dzi	15			Zasady prowadzenia działalności gospodarczej
4535	SD-P13	1	lec	Med.prz.inf	15			Medialny przekaz informacji w działaniach PSP
4535	SD-P12	1	lec	Med.prz.inf	15			Medialny przekaz informacji w działaniach PSP
4544	NP-PC19	4	lec	Psy.soc	9			Psychologia i socjologia
4544	NP-PC21	4	lec	Psy.soc	9			Psychologia i socjologia
4544	NP-PC20	4	lec	Psy.soc	9			Psychologia i socjologia
4544	NP-PC18	4	lec	Psy.soc	9			Psychologia i socjologia
4546	NP-PC18	1	lec	Fil.ety	16			Filozofia i etyka
4546	NP-PC21	1	lec	Fil.ety	16			Filozofia i etyka
4546	NP-PC19	1	lec	Fil.ety	16			Filozofia i etyka
4546	NP-PC20	1	lec	Fil.ety	16			Filozofia i etyka
4547	NP-PC20	2	lec	Ekonomia	16			Ekonomia
4547	NP-PC19	2	lec	Ekonomia	16			Ekonomia
4547	NP-PC18	2	lec	Ekonomia	16			Ekonomia
4547	NP-PC21	2	lec	Ekonomia	16			Ekonomia
4550	NP-PC19	1	lec	Matematyka	18			Matematyka
4550	NP-PC18	1	lec	Matematyka	18			Matematyka
4550	NP-PC21	1	lec	Matematyka	18			Matematyka
4550	NP-PC20	1	lec	Matematyka	18			Matematyka
4553	NP-PC18	1	lec	Fizyka	18			Fizyka
4553	NP-PC21	1	lec	Fizyka	18			Fizyka
4553	NP-PC20	1	lec	Fizyka	18			Fizyka
4553	NP-PC19	1	lec	Fizyka	18			Fizyka
4556	NP-PC18	1	lec	Chemia	18			Chemia
4556	NP-PC20	1	lec	Chemia	18			Chemia
4556	NP-PC21	1	lec	Chemia	18			Chemia
4556	NP-PC19	1	lec	Chemia	18			Chemia
4559	NP-PC18	1	lec	Tec.inf	18			Technologie informacyjne
4559	NP-PC20	1	lec	Tec.inf	18			Technologie informacyjne
4559	NP-PC21	1	lec	Tec.inf	18			Technologie informacyjne
4559	NP-PC19	1	lec	Tec.inf	18			Technologie informacyjne
4564	NP-PC18	1	lec	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
4564	NP-PC19	1	lec	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
4564	NP-PC20	1	lec	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
4564	NP-PC21	1	lec	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
4568	NP-PC21	3	lec	Termodynamika	18			Termodynamika
4568	NP-PC20	3	lec	Termodynamika	18			Termodynamika
4568	NP-PC19	3	lec	Termodynamika	18			Termodynamika
4568	NP-PC18	3	lec	Termodynamika	18			Termodynamika
4569	NP-PC18	3	lec	Pra.kra.mię.lud	18			Prawo krajowe i międzynarodowe w ochronie ludności
4569	NP-PC20	3	lec	Pra.kra.mię.lud	18			Prawo krajowe i międzynarodowe w ochronie ludności
4569	NP-PC21	3	lec	Pra.kra.mię.lud	18			Prawo krajowe i międzynarodowe w ochronie ludności
4569	NP-PC19	3	lec	Pra.kra.mię.lud	18			Prawo krajowe i międzynarodowe w ochronie ludności
4570	NP-PC18	2	lec	Hyd.prz.zao	24			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4570	NP-PC19	2	lec	Hyd.prz.zao	24			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4570	NP-PC21	2	lec	Hyd.prz.zao	24			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4570	NP-PC20	2	lec	Hyd.prz.zao	24			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4573	NP-PC18	3	lec	Mon.zag.bez	18			Monitorowanie zagrożeń bezpieczeństwa
4573	NP-PC19	3	lec	Mon.zag.bez	18			Monitorowanie zagrożeń bezpieczeństwa
4573	NP-PC20	3	lec	Mon.zag.bez	18			Monitorowanie zagrożeń bezpieczeństwa
4573	NP-PC21	3	lec	Mon.zag.bez	18			Monitorowanie zagrożeń bezpieczeństwa
4574	NP-PC21	3	lec	Org.fun.rat	18			Organizacja i funkcjonowanie ratownictwa i innych systemów bezpieczeństwa
4574	NP-PC19	3	lec	Org.fun.rat	18			Organizacja i funkcjonowanie ratownictwa i innych systemów bezpieczeństwa
4574	NP-PC18	3	lec	Org.fun.rat	18			Organizacja i funkcjonowanie ratownictwa i innych systemów bezpieczeństwa
4574	NP-PC20	3	lec	Org.fun.rat	18			Organizacja i funkcjonowanie ratownictwa i innych systemów bezpieczeństwa
4575	NP-PC21	2	lec	Pod.bud	18			Podstawy budownictwa
4575	NP-PC20	2	lec	Pod.bud	18			Podstawy budownictwa
4575	NP-PC19	2	lec	Pod.bud	18			Podstawy budownictwa
4575	NP-PC18	2	lec	Pod.bud	18			Podstawy budownictwa
4577	NP-PC21	3	lec	Ele.ele.poz	18			Elektrotechnika i elektronika w pożarnictwie
4577	NP-PC20	3	lec	Ele.ele.poz	18			Elektrotechnika i elektronika w pożarnictwie
4577	NP-PC19	3	lec	Ele.ele.poz	18			Elektrotechnika i elektronika w pożarnictwie
4577	NP-PC18	3	lec	Ele.ele.poz	18			Elektrotechnika i elektronika w pożarnictwie
4579	NP-PC19	4	lec	Teo.poż	18			Teoria pożarów
4579	NP-PC18	4	lec	Teo.poż	18			Teoria pożarów
4579	NP-PC21	4	lec	Teo.poż	18			Teoria pożarów
4579	NP-PC20	4	lec	Teo.poż	18			Teoria pożarów
4581	NP-PC18	4	lec	Fiz.spa	9			Fizykochemia spalania
4581	NP-PC20	4	lec	Fiz.spa	9			Fizykochemia spalania
4581	NP-PC21	4	lec	Fiz.spa	9			Fizykochemia spalania
4581	NP-PC19	4	lec	Fiz.spa	9			Fizykochemia spalania
4583	NP-PC20	4	lec	Pod.kon.mas	9			Podstawy konstrukcji maszyn
4583	NP-PC18	4	lec	Pod.kon.mas	9			Podstawy konstrukcji maszyn
4583	NP-PC21	4	lec	Pod.kon.mas	9			Podstawy konstrukcji maszyn
4583	NP-PC19	4	lec	Pod.kon.mas	9			Podstawy konstrukcji maszyn
4585	NP-PC20	4	lec	Tec.sys.zab	24			Techniczne systemy zabezpieczeń
4585	NP-PC19	4	lec	Tec.sys.zab	24			Techniczne systemy zabezpieczeń
4585	NP-PC21	4	lec	Tec.sys.zab	24			Techniczne systemy zabezpieczeń
4585	NP-PC18	4	lec	Tec.sys.zab	24			Techniczne systemy zabezpieczeń
4587	NP-PC18	4	lec	Śro.gaś.neu	18			Środki gaśnicze i neutralizujące
4587	NP-PC20	4	lec	Śro.gaś.neu	18			Środki gaśnicze i neutralizujące
4587	NP-PC21	4	lec	Śro.gaś.neu	18			Środki gaśnicze i neutralizujące
4587	NP-PC19	4	lec	Śro.gaś.neu	18			Środki gaśnicze i neutralizujące
4589	NP-PC19	4	lec	Inf.kom	18			Infrastruktura komunalna
4589	NP-PC21	4	lec	Inf.kom	18			Infrastruktura komunalna
4589	NP-PC18	4	lec	Inf.kom	18			Infrastruktura komunalna
4589	NP-PC20	4	lec	Inf.kom	18			Infrastruktura komunalna
4590	NP-PC19	7	lec	Och.wła.int	8			Ochrona własności intelektualnej
4590	NP-PC20	7	lec	Och.wła.int	8			Ochrona własności intelektualnej
4590	NP-PC18	7	lec	Och.wła.int	8			Ochrona własności intelektualnej
4590	NP-PC21	7	lec	Och.wła.int	8			Ochrona własności intelektualnej
4591	NP-PC19	8	lec	Szk.obr	12			Szkolenie obronne
4591	NP-PC21	8	lec	Szk.obr	12			Szkolenie obronne
4591	NP-PC18	8	lec	Szk.obr	12			Szkolenie obronne
4591	NP-PC20	8	lec	Szk.obr	12			Szkolenie obronne
4594	NP-PC20	5	lec	Sam.poj.rat	18			Samochody i pojazdy ratownicze
4594	NP-PC18	5	lec	Sam.poj.rat	18			Samochody i pojazdy ratownicze
4594	NP-PC21	5	lec	Sam.poj.rat	18			Samochody i pojazdy ratownicze
4594	NP-PC19	5	lec	Sam.poj.rat	18			Samochody i pojazdy ratownicze
4596	NP-PC20	5	lec	Spr.rat	24			Sprzęt ratowniczo - gaśniczy
4596	NP-PC21	5	lec	Spr.rat	24			Sprzęt ratowniczo - gaśniczy
4596	NP-PC18	5	lec	Spr.rat	24			Sprzęt ratowniczo - gaśniczy
4596	NP-PC19	5	lec	Spr.rat	24			Sprzęt ratowniczo - gaśniczy
4599	NP-PC19	6	lec	Dzi.gas	18			Działania gaśnicze
4599	NP-PC20	6	lec	Dzi.gas	18			Działania gaśnicze
4599	NP-PC21	6	lec	Dzi.gas	18			Działania gaśnicze
4599	NP-PC18	6	lec	Dzi.gas	18			Działania gaśnicze
4601	NP-PC18	5	lec	Rat.che.i.eko	24			Ratownictwo chemiczne i ekologiczne
4601	NP-PC20	5	lec	Rat.che.i.eko	24			Ratownictwo chemiczne i ekologiczne
4601	NP-PC19	5	lec	Rat.che.i.eko	24			Ratownictwo chemiczne i ekologiczne
4601	NP-PC21	5	lec	Rat.che.i.eko	24			Ratownictwo chemiczne i ekologiczne
4604	NP-PC18	5	lec	Med.kat	9			Medycyna katastrof
4604	NP-PC19	5	lec	Med.kat	9			Medycyna katastrof
4604	NP-PC20	5	lec	Med.kat	9			Medycyna katastrof
4604	NP-PC21	5	lec	Med.kat	9			Medycyna katastrof
4606	NP-PC21	5	lec	Rat.tec	9			Ratownictwo techniczne
4606	NP-PC19	5	lec	Rat.tec	9			Ratownictwo techniczne
4606	NP-PC18	5	lec	Rat.tec	9			Ratownictwo techniczne
4606	NP-PC20	5	lec	Rat.tec	9			Ratownictwo techniczne
4608	NP-PC20	5	lec	Ewa.int	9			Ewakuacja interwencyjna
4608	NP-PC19	5	lec	Ewa.int	9			Ewakuacja interwencyjna
4608	NP-PC18	5	lec	Ewa.int	9			Ewakuacja interwencyjna
4608	NP-PC21	5	lec	Ewa.int	9			Ewakuacja interwencyjna
4610	NP-PC21	5	lec	Org.łąc.ala	9			Organizacja łączności i alarmowanie
4610	NP-PC18	5	lec	Org.łąc.ala	9			Organizacja łączności i alarmowanie
4610	NP-PC19	5	lec	Org.łąc.ala	9			Organizacja łączności i alarmowanie
4610	NP-PC20	5	lec	Org.łąc.ala	9			Organizacja łączności i alarmowanie
4613	NP-PC21	5	lec	Bez.dzi.rat	24			Bezpieczeństwo działań ratowniczych
4613	NP-PC18	5	lec	Bez.dzi.rat	24			Bezpieczeństwo działań ratowniczych
4613	NP-PC20	5	lec	Bez.dzi.rat	24			Bezpieczeństwo działań ratowniczych
4613	NP-PC19	5	lec	Bez.dzi.rat	24			Bezpieczeństwo działań ratowniczych
4616	NP-PC19	6	lec	Tak.dow	18			Taktyka i dowodzenie
4616	NP-PC21	6	lec	Tak.dow	18			Taktyka i dowodzenie
4616	NP-PC18	6	lec	Tak.dow	18			Taktyka i dowodzenie
4616	NP-PC20	6	lec	Tak.dow	18			Taktyka i dowodzenie
4618	NP-PC20	5	lec	Wen.poz	18			Wentylacja pożarowa
4618	NP-PC18	5	lec	Wen.poz	18			Wentylacja pożarowa
4618	NP-PC19	5	lec	Wen.poz	18			Wentylacja pożarowa
4618	NP-PC21	5	lec	Wen.poz	18			Wentylacja pożarowa
4621	NP-PC19	6	lec	Zab.pro.tec	18			Zabezpieczenia w procesach technologicznych
4621	NP-PC18	6	lec	Zab.pro.tec	18			Zabezpieczenia w procesach technologicznych
4621	NP-PC21	6	lec	Zab.pro.tec	18			Zabezpieczenia w procesach technologicznych
4621	NP-PC20	6	lec	Zab.pro.tec	18			Zabezpieczenia w procesach technologicznych
4623	NP-PC19	7	lec	Bez.poż.budy	18			Bezpieczeństwo pożarowe budynków
4623	NP-PC20	7	lec	Bez.poż.budy	18			Bezpieczeństwo pożarowe budynków
4623	NP-PC21	7	lec	Bez.poż.budy	18			Bezpieczeństwo pożarowe budynków
4623	NP-PC18	7	lec	Bez.poż.budy	18			Bezpieczeństwo pożarowe budynków
4625	NP-PC19	7	lec	Ana.ryz.pro	18			Analiza ryzyka w procesach przemysłowych
4625	NP-PC20	7	lec	Ana.ryz.pro	18			Analiza ryzyka w procesach przemysłowych
4625	NP-PC21	7	lec	Ana.ryz.pro	18			Analiza ryzyka w procesach przemysłowych
4625	NP-PC18	7	lec	Ana.ryz.pro	18			Analiza ryzyka w procesach przemysłowych
4627	NP-PC18	7	lec	Met.bad.prz	9			Metodyka badań przyczyn pożarów
4627	NP-PC19	7	lec	Met.bad.prz	9			Metodyka badań przyczyn pożarów
4627	NP-PC21	7	lec	Met.bad.prz	9			Metodyka badań przyczyn pożarów
4627	NP-PC20	7	lec	Met.bad.prz	9			Metodyka badań przyczyn pożarów
4630	NP-PC18	7	lec	Bez.poż.las	9			Bezpieczeństwo pożarowe lasów
4630	NP-PC21	7	lec	Bez.poż.las	9			Bezpieczeństwo pożarowe lasów
4630	NP-PC20	7	lec	Bez.poż.las	9			Bezpieczeństwo pożarowe lasów
4630	NP-PC19	7	lec	Bez.poż.las	9			Bezpieczeństwo pożarowe lasów
4632	NP-PC21	7	lec	Awa.prz	18			Awarie przemysłowe
4632	NP-PC18	7	lec	Awa.prz	18			Awarie przemysłowe
4632	NP-PC19	7	lec	Awa.prz	18			Awarie przemysłowe
4632	NP-PC20	7	lec	Awa.prz	18			Awarie przemysłowe
4636	NP-PC20	8	lec	Inż.bez.tec	12			Inżynieria bezpieczeństwa technicznego
4636	NP-PC21	8	lec	Inż.bez.tec	12			Inżynieria bezpieczeństwa technicznego
4636	NP-PC18	8	lec	Inż.bez.tec	12			Inżynieria bezpieczeństwa technicznego
4636	NP-PC19	8	lec	Inż.bez.tec	12			Inżynieria bezpieczeństwa technicznego
4637	NP-PC18	8	lec	Mię.wsp.rat	9			Międzynarodowa współpraca ratownicza
4637	NP-PC20	8	lec	Mię.wsp.rat	9			Międzynarodowa współpraca ratownicza
4637	NP-PC19	8	lec	Mię.wsp.rat	9			Międzynarodowa współpraca ratownicza
4637	NP-PC21	8	lec	Mię.wsp.rat	9			Międzynarodowa współpraca ratownicza
4638	NP-PC19	8	lec	Log.wsp.dłu	9			Logistyczne wsparcie długotrwałych działań ratowniczych
4638	NP-PC18	8	lec	Log.wsp.dłu	9			Logistyczne wsparcie długotrwałych działań ratowniczych
4638	NP-PC21	8	lec	Log.wsp.dłu	9			Logistyczne wsparcie długotrwałych działań ratowniczych
4638	NP-PC20	8	lec	Log.wsp.dłu	9			Logistyczne wsparcie długotrwałych działań ratowniczych
4640	NP-PC20	7	lec	Dzi.rat.pod	9			Działania ratownicze podczas klęsk żywiołowych
4640	NP-PC18	7	lec	Dzi.rat.pod	9			Działania ratownicze podczas klęsk żywiołowych
4640	NP-PC19	7	lec	Dzi.rat.pod	9			Działania ratownicze podczas klęsk żywiołowych
4640	NP-PC21	7	lec	Dzi.rat.pod	9			Działania ratownicze podczas klęsk żywiołowych
4641	NP-PC19	8	lec	Pro.bie.zab	9			Projektowanie biernych zabezpieczeń przeciwpożarowych
4641	NP-PC18	8	lec	Pro.bie.zab	9			Projektowanie biernych zabezpieczeń przeciwpożarowych
4641	NP-PC21	8	lec	Pro.bie.zab	9			Projektowanie biernych zabezpieczeń przeciwpożarowych
4641	NP-PC20	8	lec	Pro.bie.zab	9			Projektowanie biernych zabezpieczeń przeciwpożarowych
4652	NP-PS43	4	lec	Psy.soc	9			Psychologia i socjologia
4652	NP-PS46	4	lec	Psy.soc	9			Psychologia i socjologia
4652	NP-PS44	4	lec	Psy.soc	9			Psychologia i socjologia
4652	NP-PS45	4	lec	Psy.soc	9			Psychologia i socjologia
4654	NP-PS44	1	lec	Fil.ety	16			Filozofia i etyka
4654	NP-PS46	1	lec	Fil.ety	16			Filozofia i etyka
4654	NP-PS43	1	lec	Fil.ety	16			Filozofia i etyka
4654	NP-PS45	1	lec	Fil.ety	16			Filozofia i etyka
4655	NP-PS43	2	lec	Ekonomia	16			Ekonomia
4655	NP-PS46	2	lec	Ekonomia	16			Ekonomia
4655	NP-PS44	2	lec	Ekonomia	16			Ekonomia
4655	NP-PS45	2	lec	Ekonomia	16			Ekonomia
4656	NP-PS46	2	lec	Och.wła.int	4			Ochrona własności intelektualnej
4656	NP-PS43	2	lec	Och.wła.int	4			Ochrona własności intelektualnej
4656	NP-PS44	2	lec	Och.wła.int	4			Ochrona własności intelektualnej
4656	NP-PS45	2	lec	Och.wła.int	4			Ochrona własności intelektualnej
4657	NP-PS43	2	lec	His.poz	4			Historia pożarnictwa
4657	NP-PS44	2	lec	His.poz	4			Historia pożarnictwa
4657	NP-PS46	2	lec	His.poz	4			Historia pożarnictwa
4657	NP-PS45	2	lec	His.poz	4			Historia pożarnictwa
4659	NP-PS46	1	lec	Matematyka	18			Matematyka
4659	NP-PS43	1	lec	Matematyka	18			Matematyka
4659	NP-PS44	1	lec	Matematyka	18			Matematyka
4659	NP-PS45	1	lec	Matematyka	18			Matematyka
4662	NP-PS46	1	lec	Fizyka	18			Fizyka
4662	NP-PS43	1	lec	Fizyka	18			Fizyka
4662	NP-PS45	1	lec	Fizyka	18			Fizyka
4662	NP-PS44	1	lec	Fizyka	18			Fizyka
4665	NP-PS45	1	lec	Chemia	18			Chemia
4665	NP-PS44	1	lec	Chemia	18			Chemia
4665	NP-PS46	1	lec	Chemia	18			Chemia
4668	NP-PS43	1	lec	Tec.inf	18			Technologie informacyjne
4668	NP-PS44	1	lec	Tec.inf	18			Technologie informacyjne
4668	NP-PS45	1	lec	Tec.inf	18			Technologie informacyjne
4668	NP-PS46	1	lec	Tec.inf	18			Technologie informacyjne
4672	NP-PS45	1	lec	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
4672	NP-PS44	1	lec	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
4672	NP-PS46	1	lec	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
4672	NP-PS43	1	lec	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
4676	NP-PS44	3	lec	Termodynamika	18			Termodynamika
4676	NP-PS46	3	lec	Termodynamika	18			Termodynamika
4676	NP-PS45	3	lec	Termodynamika	18			Termodynamika
4676	NP-PS43	3	lec	Termodynamika	18			Termodynamika
4677	NP-PS46	3	lec	Pra.kra.mię.lud	18			Prawo krajowe i międzynarodowe w ochronie ludności
4677	NP-PS44	3	lec	Pra.kra.mię.lud	18			Prawo krajowe i międzynarodowe w ochronie ludności
4677	NP-PS43	3	lec	Pra.kra.mię.lud	18			Prawo krajowe i międzynarodowe w ochronie ludności
4677	NP-PS45	3	lec	Pra.kra.mię.lud	18			Prawo krajowe i międzynarodowe w ochronie ludności
4678	NP-PS43	2	lec	Hyd.prz.zao	24			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4678	NP-PS44	2	lec	Hyd.prz.zao	24			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4678	NP-PS45	2	lec	Hyd.prz.zao	24			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4678	NP-PS46	2	lec	Hyd.prz.zao	24			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
4681	NP-PS45	3	lec	Mon.zag.bez	18			Monitorowanie zagrożeń bezpieczeństwa
4681	NP-PS44	3	lec	Mon.zag.bez	18			Monitorowanie zagrożeń bezpieczeństwa
4681	NP-PS46	3	lec	Mon.zag.bez	18			Monitorowanie zagrożeń bezpieczeństwa
4681	NP-PS43	3	lec	Mon.zag.bez	18			Monitorowanie zagrożeń bezpieczeństwa
4682	NP-PS45	3	lec	Org.fun.rat	18			Organizacja i funkcjonowanie ratownictwa i innych systemów bezpieczeństwa
4682	NP-PS44	3	lec	Org.fun.rat	18			Organizacja i funkcjonowanie ratownictwa i innych systemów bezpieczeństwa
4682	NP-PS46	3	lec	Org.fun.rat	18			Organizacja i funkcjonowanie ratownictwa i innych systemów bezpieczeństwa
4682	NP-PS43	3	lec	Org.fun.rat	18			Organizacja i funkcjonowanie ratownictwa i innych systemów bezpieczeństwa
4683	NP-PS44	2	lec	Pod.bud	18			Podstawy budownictwa
4683	NP-PS43	2	lec	Pod.bud	18			Podstawy budownictwa
4683	NP-PS45	2	lec	Pod.bud	18			Podstawy budownictwa
4683	NP-PS46	2	lec	Pod.bud	18			Podstawy budownictwa
4685	NP-PS44	3	lec	Ele.ele.poz	18			Elektrotechnika i elektronika w pożarnictwie
4685	NP-PS43	3	lec	Ele.ele.poz	18			Elektrotechnika i elektronika w pożarnictwie
4685	NP-PS45	3	lec	Ele.ele.poz	18			Elektrotechnika i elektronika w pożarnictwie
4685	NP-PS46	3	lec	Ele.ele.poz	18			Elektrotechnika i elektronika w pożarnictwie
4687	NP-PS44	4	lec	Teo.poż	18			Teoria pożarów
4687	NP-PS45	4	lec	Teo.poż	18			Teoria pożarów
4687	NP-PS46	4	lec	Teo.poż	18			Teoria pożarów
4687	NP-PS43	4	lec	Teo.poż	18			Teoria pożarów
4688	NP-PS46	4	lec	Fiz.spa	9			Fizykochemia spalania
4688	NP-PS44	4	lec	Fiz.spa	9			Fizykochemia spalania
4688	NP-PS43	4	lec	Fiz.spa	9			Fizykochemia spalania
4688	NP-PS45	4	lec	Fiz.spa	9			Fizykochemia spalania
4691	NP-PS46	4	lec	Pod.kon.mas	9			Podstawy konstrukcji maszyn
4691	NP-PS43	4	lec	Pod.kon.mas	9			Podstawy konstrukcji maszyn
4691	NP-PS44	4	lec	Pod.kon.mas	9			Podstawy konstrukcji maszyn
4691	NP-PS45	4	lec	Pod.kon.mas	9			Podstawy konstrukcji maszyn
4693	NP-PS44	4	lec	Tec.sys.zab	24			Techniczne systemy zabezpieczeń
4693	NP-PS45	4	lec	Tec.sys.zab	24			Techniczne systemy zabezpieczeń
4693	NP-PS43	4	lec	Tec.sys.zab	24			Techniczne systemy zabezpieczeń
4693	NP-PS46	4	lec	Tec.sys.zab	24			Techniczne systemy zabezpieczeń
4696	NP-PS45	4	lec	Śro.gaś.neu	18			Środki gaśnicze i neutralizujące
4696	NP-PS46	4	lec	Śro.gaś.neu	18			Środki gaśnicze i neutralizujące
4696	NP-PS43	4	lec	Śro.gaś.neu	18			Środki gaśnicze i neutralizujące
4696	NP-PS44	4	lec	Śro.gaś.neu	18			Środki gaśnicze i neutralizujące
4698	NP-PS46	4	lec	Inf.kom	18			Infrastruktura komunalna
4698	NP-PS44	4	lec	Inf.kom	18			Infrastruktura komunalna
4698	NP-PS43	4	lec	Inf.kom	18			Infrastruktura komunalna
4698	NP-PS45	4	lec	Inf.kom	18			Infrastruktura komunalna
4699	NP-PS45	5	lec	Sam.poj.rat	18			Samochody i pojazdy ratownicze
4699	NP-PS46	5	lec	Sam.poj.rat	18			Samochody i pojazdy ratownicze
4699	NP-PS43	5	lec	Sam.poj.rat	18			Samochody i pojazdy ratownicze
4699	NP-PS44	5	lec	Sam.poj.rat	18			Samochody i pojazdy ratownicze
4701	NP-PS44	5	lec	Spr.rat	24			Sprzęt ratowniczo - gaśniczy
4701	NP-PS46	5	lec	Spr.rat	24			Sprzęt ratowniczo - gaśniczy
4701	NP-PS43	5	lec	Spr.rat	24			Sprzęt ratowniczo - gaśniczy
4701	NP-PS45	5	lec	Spr.rat	24			Sprzęt ratowniczo - gaśniczy
4704	NP-PS43	6	lec	Dzi.gas	18			Działania gaśnicze
4704	NP-PS45	6	lec	Dzi.gas	18			Działania gaśnicze
4704	NP-PS46	6	lec	Dzi.gas	18			Działania gaśnicze
4704	NP-PS44	6	lec	Dzi.gas	18			Działania gaśnicze
4706	NP-PS43	5	lec	Rat.che.i.eko	24			Ratownictwo chemiczne i ekologiczne
4706	NP-PS44	5	lec	Rat.che.i.eko	24			Ratownictwo chemiczne i ekologiczne
4706	NP-PS46	5	lec	Rat.che.i.eko	24			Ratownictwo chemiczne i ekologiczne
4706	NP-PS45	5	lec	Rat.che.i.eko	24			Ratownictwo chemiczne i ekologiczne
4709	NP-PS46	5	lec	Med.kat	9			Medycyna katastrof
4709	NP-PS43	5	lec	Med.kat	9			Medycyna katastrof
4709	NP-PS45	5	lec	Med.kat	9			Medycyna katastrof
4709	NP-PS44	5	lec	Med.kat	9			Medycyna katastrof
4711	NP-PS44	5	lec	Rat.tec	9			Ratownictwo techniczne
4711	NP-PS46	5	lec	Rat.tec	9			Ratownictwo techniczne
4711	NP-PS43	5	lec	Rat.tec	9			Ratownictwo techniczne
4711	NP-PS45	5	lec	Rat.tec	9			Ratownictwo techniczne
4713	NP-PS45	5	lec	Ewa.int	9			Ewakuacja interwencyjna
4713	NP-PS44	5	lec	Ewa.int	9			Ewakuacja interwencyjna
4713	NP-PS46	5	lec	Ewa.int	9			Ewakuacja interwencyjna
4713	NP-PS43	5	lec	Ewa.int	9			Ewakuacja interwencyjna
4715	NP-PS44	5	lec	Org.łąc.ala	9			Organizacja łączności i alarmowanie
4715	NP-PS45	5	lec	Org.łąc.ala	9			Organizacja łączności i alarmowanie
4715	NP-PS43	5	lec	Org.łąc.ala	9			Organizacja łączności i alarmowanie
4715	NP-PS46	5	lec	Org.łąc.ala	9			Organizacja łączności i alarmowanie
4718	NP-PS46	5	lec	Bez.dzi.rat	24			Bezpieczeństwo działań ratowniczych
4718	NP-PS45	5	lec	Bez.dzi.rat	24			Bezpieczeństwo działań ratowniczych
4718	NP-PS43	5	lec	Bez.dzi.rat	24			Bezpieczeństwo działań ratowniczych
4718	NP-PS44	5	lec	Bez.dzi.rat	24			Bezpieczeństwo działań ratowniczych
4721	NP-PS44	6	lec	Tak.dow	18			Taktyka i dowodzenie
4721	NP-PS45	6	lec	Tak.dow	18			Taktyka i dowodzenie
4721	NP-PS43	6	lec	Tak.dow	18			Taktyka i dowodzenie
4721	NP-PS46	6	lec	Tak.dow	18			Taktyka i dowodzenie
4723	NP-PS46	7	lec	Bez.poż.budy	18			Bezpieczeństwo pożarowe budynków
4723	NP-PS43	7	lec	Bez.poż.budy	18			Bezpieczeństwo pożarowe budynków
4723	NP-PS45	7	lec	Bez.poż.budy	18			Bezpieczeństwo pożarowe budynków
4723	NP-PS44	7	lec	Bez.poż.budy	18			Bezpieczeństwo pożarowe budynków
4725	NP-PS43	7	lec	Ana.ryz.pro	18			Analiza ryzyka w procesach przemysłowych
4725	NP-PS46	7	lec	Ana.ryz.pro	18			Analiza ryzyka w procesach przemysłowych
4725	NP-PS44	7	lec	Ana.ryz.pro	18			Analiza ryzyka w procesach przemysłowych
4725	NP-PS45	7	lec	Ana.ryz.pro	18			Analiza ryzyka w procesach przemysłowych
4727	NP-PS45	7	lec	Met.bad.prz	9			Metodyka badań przyczyn pożarów
4727	NP-PS43	7	lec	Met.bad.prz	9			Metodyka badań przyczyn pożarów
4727	NP-PS44	7	lec	Met.bad.prz	9			Metodyka badań przyczyn pożarów
4727	NP-PS46	7	lec	Met.bad.prz	9			Metodyka badań przyczyn pożarów
4730	NP-PS45	7	lec	Bez.poż.las	9			Bezpieczeństwo pożarowe lasów
4730	NP-PS43	7	lec	Bez.poż.las	9			Bezpieczeństwo pożarowe lasów
4730	NP-PS44	7	lec	Bez.poż.las	9			Bezpieczeństwo pożarowe lasów
4730	NP-PS46	7	lec	Bez.poż.las	9			Bezpieczeństwo pożarowe lasów
4735	NP-PS43	8	lec	Inż.bez.tec	12			Inżynieria bezpieczeństwa technicznego
4735	NP-PS45	8	lec	Inż.bez.tec	12			Inżynieria bezpieczeństwa technicznego
4735	NP-PS44	8	lec	Inż.bez.tec	12			Inżynieria bezpieczeństwa technicznego
4735	NP-PS46	8	lec	Inż.bez.tec	12			Inżynieria bezpieczeństwa technicznego
4736	NP-PS46	8	lec	Mię.wsp.rat	9			Międzynarodowa współpraca ratownicza
4736	NP-PS45	8	lec	Mię.wsp.rat	9			Międzynarodowa współpraca ratownicza
4736	NP-PS43	8	lec	Mię.wsp.rat	9			Międzynarodowa współpraca ratownicza
4736	NP-PS44	8	lec	Mię.wsp.rat	9			Międzynarodowa współpraca ratownicza
4737	NP-PS43	8	lec	Log.wsp.dłu	9			Logistyczne wsparcie długotrwałych działań ratowniczych
4737	NP-PS44	8	lec	Log.wsp.dłu	9			Logistyczne wsparcie długotrwałych działań ratowniczych
4737	NP-PS45	8	lec	Log.wsp.dłu	9			Logistyczne wsparcie długotrwałych działań ratowniczych
4737	NP-PS46	8	lec	Log.wsp.dłu	9			Logistyczne wsparcie długotrwałych działań ratowniczych
4739	NP-PS46	7	lec	Dzi.rat.pod	9			Działania ratownicze podczas klęsk żywiołowych
4739	NP-PS44	7	lec	Dzi.rat.pod	9			Działania ratownicze podczas klęsk żywiołowych
4739	NP-PS45	7	lec	Dzi.rat.pod	9			Działania ratownicze podczas klęsk żywiołowych
4739	NP-PS43	7	lec	Dzi.rat.pod	9			Działania ratownicze podczas klęsk żywiołowych
4740	NP-PS45	8	lec	Cer.poż.ele	4			Ceremoniał pożarniczy z elementami służby wewnętrznej
4740	NP-PS46	8	lec	Cer.poż.ele	4			Ceremoniał pożarniczy z elementami służby wewnętrznej
4740	NP-PS44	8	lec	Cer.poż.ele	4			Ceremoniał pożarniczy z elementami służby wewnętrznej
4740	NP-PS43	8	lec	Cer.poż.ele	4			Ceremoniał pożarniczy z elementami służby wewnętrznej
4808	NP-C15	5	lec	Met.ilo.jak	8			Metody ilościowej i jakościowej oceny ryzyka
4810	NP-C15	5	lec	Sku.zag.bio	8			Skutki zagrożeń biologicznych i ekologicznych
4812	NP-C15	5	lec	Mod.zag	8			Modelowanie zagrożeń
4814	NP-C15	5	lec	Inf.kry	8			Infrastruktura krytyczna
4819	NP-C15	5	lec	Śro.och.ind	8			Środki ochrony indywidualnej i zbiorowej
4821	NP-C15	5	lec	Pra.zmi	8			Praca zmianowa
4823	NP-C15	5	lec	Zag.poż.wyb	8			Zagrożenia pożarowe i wybuchowe
4826	NP-C15	5	lec	Mik.śro.pra	8			Mikroklimat środowiska pracy
4887	NP-C15	6	lec	Mul.tre.dec	8			Multimedialny trening decyzyjny
4888	NP-C15	6	lec	Erg.fiz.bez	8			Ergonomia i fizjologia w bezpieczeństwie pracy
4890	NP-C15	6	lec	Zar.zas.lud	8			Zarządzanie zasobami ludzkimi
4893	NP-C15	6	lec	Erg.pro.sta	16			Ergonomia i projektowanie stanowisk pracy
4895	NP-C15	6	lec	Zag.ele	8			Zagrożenia elektroenergetyczne
4898	NP-C15	6	lec	Bhp.obi.inf	8			BHP w obiektach infrastruktury krytycznej
4900	NP-C15	6	lec	Pro.opt.wid	8			Promieniowanie optyczne i widzialne
4902	NP-C15	6	lec	Oce.ryz.zaw	8			Ocena ryzyka zawodowego w systemie zarządzania bezpieczeństwem pracy
4906	NP-C15	7	lec	Zar.cią.dzi	8			Zarządzanie ciągłością działania
4908	NP-C15	7	lec	Wyb.zag.eko	8			Wybrane zagadnienia z ekonomii
4911	NP-C15	7	lec	Rat.sys.pie	8			Ratownictwo i systemy pierwszej pomocy w przedsiębiorstwie
4925	SP-C17.IBC	5	lec	Psy.soc	30			Psychologia i socjologia
4927	SP-C17.IBC	5	lec	Met.ilo.jak	15			Metody ilościowej i jakościowej oceny ryzyka
4929	SP-C17.IBC	5	lec	Sku.zag.bio	15			Skutki zagrożeń biologicznych i ekologicznych
4931	SP-C17.IBC	5	lec	Mod.zag	15			Modelowanie zagrożeń
4933	SP-C17.IBC	5	lec	Inf.kry	15			Infrastruktura krytyczna
4936	SP-C17.IBC	5	lec	Ele.teo.dec	15			Elementy teorii decyzji
4938	SP-C17.IBC	5	lec	Zar.kry	15			Zarządzanie kryzysowe
4940	SP-C17.IBC	5	lec	Sys.inf.prz	15			Systemy informacji przestrzennej
4942	SP-C17.IBC	5	lec	Int.dzi.bez	15			Integracja działań bezpieczeństwa cywilnego
4948	SP-C17.IBC	6	lec	Mul.tre.dec	15			Multimedialny trening decyzyjny
4950	SP-C17.IBC	6	lec	Erg.fiz.bez	15			Ergonomia i fizjologia w bezpieczeństwie pracy
4952	SP-C17.IBC	6	lec	Zar.zas.lud	15			Zarządzanie zasobami ludzkimi
4955	SP-C17.IBC	6	lec	Posa.adm	15			Postępowania administracyjne
4957	SP-C17.IBC	6	lec	Och.dób.kul	30			Ochrona dóbr kultury
4959	SP-C17.IBC	6	lec	Zar.bez.cyw	15			Zarządzanie bezpieczeństwem cywilnym
4962	SP-C17.IBC	6	lec	Edu.dla.bez.cyw	15			Edukacja dla bezpieczeństwa cywilnego
4964	SP-C17.IBC	6	lec	Wyb.pro.bez	15			Wybrane problemy bezpieczeństwa
4968	SP-C17.IBC	7	lec	Zar.cią.dzi	15			Zarządzanie ciągłością działania
4970	SP-C17.IBC	7	lec	Wyb.zag.eko	15			Wybrane zagadnienia z ekonomii
4977	SD-BW4	2	lec	Fil.bez	15			Filozofia bezpieczeństwa
4977	SD-BW3	2	lec	Fil.bez	15			Filozofia bezpieczeństwa
4979	SD-BW4	2	lec	Met.bad.nad	15			Metodologia badań nad bezpieczeństwem
4979	SD-BW3	2	lec	Met.bad.nad	15			Metodologia badań nad bezpieczeństwem
4981	SD-BW3	2	lec	Pra.asp.bez	15			Prawno - funkcjonalne aspekty bezpieczeństwa wewnętrznego
4981	SD-BW4	2	lec	Pra.asp.bez	15			Prawno - funkcjonalne aspekty bezpieczeństwa wewnętrznego
4983	SD-BW3	2	lec	Poz.ins.org	15			Pozarządowe instytucje i organizacje bezpieczeństwa
4983	SD-BW4	2	lec	Poz.ins.org	15			Pozarządowe instytucje i organizacje bezpieczeństwa
4985	SD-BW4	2	lec	Syt.kry.kry	15			Sytuacje kryzysowe, kryzysy i patologie społeczne
4985	SD-BW3	2	lec	Syt.kry.kry	15			Sytuacje kryzysowe, kryzysy i patologie społeczne
4987	SD-BW4	2	lec	Zar.jak.bez	15			Zarządzanie jakością w bezpieczeństwie
4987	SD-BW3	2	lec	Zar.jak.bez	15			Zarządzanie jakością w bezpieczeństwie
4991	SP-CBW6.ZB	5	lec	Wyk.wła.pub	30			Wykonywanie władzy publicznej
4991	SP-CBW4.ZB	5	lec	Wyk.wła.pub	30			Wykonywanie władzy publicznej
4992	SP-CBW6.ZB	5	lec	Med.kom.spo	30			Media i komunikowanie społeczne
4992	SP-CBW4.ZB	5	lec	Med.kom.spo	30			Media i komunikowanie społeczne
4994	SP-CBW6.ZB	5	lec	Int.sił.śro.zar	15			Integracja sił i środków w zarządzaniu bezpieczeństwem
4994	SP-CBW4.ZB	5	lec	Int.sił.śro.zar	15			Integracja sił i środków w zarządzaniu bezpieczeństwem
4997	SP-CBW4.ZB	5	lec	Org.poz.zar	15			Organizacje pozarządowe w zarządzaniu bezpieczeństwem
4997	SP-CBW6.ZB	5	lec	Org.poz.zar	15			Organizacje pozarządowe w zarządzaniu bezpieczeństwem
4999	SP-CBW4.ZB	5	lec	Zar.bez.wew	30			Zarządzanie bezpieczeństwem wewnętrznym w Polsce i wybranych krajach UE
4999	SP-CBW6.ZB	5	lec	Zar.bez.wew	30			Zarządzanie bezpieczeństwem wewnętrznym w Polsce i wybranych krajach UE
5001	SP-CBW4.ZB	5	lec	Jak.zar.bez	30			Jakość w zarządzaniu bezpieczeństwem
5001	SP-CBW6.ZB	5	lec	Jak.zar.bez	30			Jakość w zarządzaniu bezpieczeństwem
5003	SP-CBW6.ZB	5	lec	Pro.dec.ana	30			Procesy decyzyjne i analiza ryzyka w zarządzaniu bezpieczeństwem
5003	SP-CBW4.ZB	5	lec	Pro.dec.ana	30			Procesy decyzyjne i analiza ryzyka w zarządzaniu bezpieczeństwem
5020	SP-CBW6.ZB	6	lec	Inf.kry.zar	15			Infrastruktura krytyczna w zarządzaniu bezpieczeństwem
5020	SP-CBW4.ZB	6	lec	Inf.kry.zar	15			Infrastruktura krytyczna w zarządzaniu bezpieczeństwem
5023	SP-CBW4.ZB	6	lec	Log.zar.bez	15			Logistyka w zarządzaniu bezpieczeństwem
5023	SP-CBW6.ZB	6	lec	Log.zar.bez	15			Logistyka w zarządzaniu bezpieczeństwem
5026	SP-CBW6.ZB	6	lec	Kie.zar.bez	30			Kierowanie i zarządzanie bezpieczeństwem państwa
5026	SP-CBW4.ZB	6	lec	Kie.zar.bez	30			Kierowanie i zarządzanie bezpieczeństwem państwa
5037	SP-CBW6	1	lec	Tec.inf	15			Technologie informacyjne
5037	SP-CBW5	1	lec	Tec.inf	15			Technologie informacyjne
5233	SP-C19	1	lec	Fil.ety	30			Filozofia i etyka
5234	SP-C19	1	lec	Tec.inf	30			Technologie informacyjne
5235	SP-C19	1	lec	Matematyka	30			Matematyka
5237	SP-C19	1	lec	Chemia	30			Chemia
5238	SP-C19	1	lec	Fizyka	30			Fizyka
5241	SP-C19	1	lec	Gra.inż	15			Grafika inżynierska
5244	SP-C19	1	lec	Org.i.zar	15			Organizacja i zarządzanie
5246	SP-C19	1	lec	Ekonomia	15			Ekonomia
5254	SP-C18.IBC	3	lec	Pra.kra.mię.lud	30			Prawo krajowe i międzynarodowe w ochronie ludności
5256	SP-C18.IBC	3	lec	Org.fun.sys	30			Organizacja i funkcjonowanie systemów bezpieczeństwa
5258	SP-C18.IBC	3	lec	Inż.bez.tec	15			Inżynieria bezpieczeństwa technicznego
5260	SP-C18.IBC	3	lec	Sku.zag.śro	15			Skutki zagrożeń środowiska naturalnego
5262	SP-C18.IBC	3	lec	Sku.zag.inf.kom	15			Skutki zagrożeń infrastruktury komunalnej
5264	SP-C18.IBC	3	lec	Sku.zag.spo.eko	15			Skutki zagrożeń społeczno - ekonomicznych
5266	SP-C18.IBC	3	lec	Pla.cyw	30			Planowanie cywilne
5268	SP-C18.IBC	3	lec	Met.num	30			Metody numeryczne
5270	SP-C18.IBC	3	lec	Mię.ins.bez	15			Międzynarodowe instytucje bezpieczeństwa
5272	SP-C18.IBC	3	lec	Bad.ope	30			Badania operacyjne
5274	SP-C18.IBC	3	lec	Pod.Aut	15			Podstawy AutoCada
5303	NP-C16	3	lec	Pra.kra.mię.lud	18			Prawo krajowe i międzynarodowe w ochronie ludności
5305	NP-C16	3	lec	Org.fun.sys	16			Organizacja i funkcjonowanie systemów bezpieczeństwa
5307	NP-C16	3	lec	Inż.bez.tec	8			Inżynieria bezpieczeństwa technicznego
5309	NP-C16	3	lec	Sku.zag.śro	8			Skutki zagrożeń środowiska naturalnego
5311	NP-C16	3	lec	Sku.zag.inf.kom	8			Skutki zagrożeń infrastruktury komunalnej
5313	NP-C16	3	lec	Sku.zag.spo.eko	8			Skutki zagrożeń społeczno - ekonomicznych
5325	NP-C16	3	lec	Ide.ana.zag	8			Identyfikacja i analiza zagrożeń biologicznych
5327	NP-C16	3	lec	Mon.sta.bez	8			Monitorowanie stanu bezpieczeństwa i higieny pracy
5329	NP-C16	3	lec	Dzi.pro	8			Działania profilaktyczne
5331	NP-C16	3	lec	Szk.sub.che	16			Szkodliwe substancje chemiczne
5333	NP-C16	3	lec	Mas.urz.pro	8			Maszyny i urządzenia produkcyjne
5336	NP-C16	3	lec	Wypadkozna	8			Wypadkoznastwo
5370	SD-BW4	4	lec	Pod.pra.och	15			Podstawy prawne ochrony ludzi i mienia
5370	SD-BW3	4	lec	Pod.pra.och	15			Podstawy prawne ochrony ludzi i mienia
5372	SD-BW4	4	lec	Ewa.ludz.mie	15			Ewakuacja ludzi i mienia
5372	SD-BW3	4	lec	Ewa.ludz.mie	15			Ewakuacja ludzi i mienia
5374	SD-BW3	4	lec	Bez.imp.mas	15			Bezpieczeństwo imprez masowych
5374	SD-BW4	4	lec	Bez.imp.mas	15			Bezpieczeństwo imprez masowych
5376	SD-BW3	4	lec	Obr.cyw.lud	15			Obrona cywilna, ochrona ludności i pomoc humanitarna
5376	SD-BW4	4	lec	Obr.cyw.lud	15			Obrona cywilna, ochrona ludności i pomoc humanitarna
5378	SD-BW4	4	lec	Str.zap.prz	15			Strategie zapobiegania przestępczości
5378	SD-BW3	4	lec	Str.zap.prz	15			Strategie zapobiegania przestępczości
5396	SP-C19	2	lec	Adm.pub	15			Administracja publiczna
5397	SP-C19	2	lec	Org.sys.rat	15			Organizacja systemów ratownictwa
5399	SP-C19	2	lec	Śro.bez.och	30			Środki bezpieczeństwa i ochrony
5402	SP-C19	2	lec	Mon.zag.bez	15			Monitorowanie zagrożeń bezpieczeństwa
5405	SP-C19	2	lec	Mię.ins.bez	15			Międzynarodowe instytucje bezpieczeństwa
5417	SP-C18.IBC	4	lec	Ana.ryz	30			Analiza ryzyka
5419	SP-C18.IBC	4	lec	Psy.soc	30			Psychologia i socjologia
5420	SP-C18.IBC	4	lec	Bez.inf	15			Bezpieczeństwo informacji
5422	SP-C18.IBC	4	lec	Org.sys.rat	15			Organizacja systemów ratownictwa
5424	SP-C18.IBC	4	lec	Log.bez	30			Logistyka w bezpieczeństwie
5427	SP-C18.IBC	4	lec	Med.kom.mas	15			Media i komunikowanie masowe
5429	SP-C18.IBC	4	lec	Nau.mat.bud	30			Nauki o materiałach (Budownictwo)
5432	SP-C18.IBC	4	lec	Pla.prz	15			Planowanie przestrzenne
5434	SP-C18.IBC	4	lec	Rac.pra.sta	30			Rachunek prawdopodobieństwa i statystyka matematyczna
5436	SP-C18.IBC	4	lec	Sys.wsp.dec	30			Systemy wspomagania decyzji
5456	NP-C16	4	lec	Ana.ryz	16			Analiza ryzyka
5458	NP-C16	4	lec	Psy.soc	16			Psychologia i socjologia
5459	NP-C16	4	lec	Bez.inf	8			Bezpieczeństwo informacji
5461	NP-C16	4	lec	Org.sys.rat	8			Organizacja systemów ratownictwa
5463	NP-C16	4	lec	Log.bez	16			Logistyka w bezpieczeństwie
5466	NP-C16	4	lec	Med.kom.mas	8			Media i komunikowanie masowe
5468	NP-C16	4	lec	Nau.mat.bud	16			Nauki o materiałach (Budownictwo)
5478	NP-C16	4	lec	Org.met.szk	8			Organizacja i metody szkolenia BHP
5480	NP-C16	4	lec	Pył.śro.pra	16			Pyły w środowisku pracy
5505	SP-PC17	1	lec	Chemia	30			Chemia
5505	SP-PC16	1	lec	Chemia	30			Chemia
5505	SP-PC18	1	lec	Chemia	30			Chemia
5505	SP-PC15	1	lec	Chemia	30			Chemia
5530	SP-CBW5	2	lec	Org.i.zar	15			Organizacja i zarządzanie
5530	SP-CBW6	2	lec	Org.i.zar	15			Organizacja i zarządzanie
5532	SP-CBW6	2	lec	Nau.pań.pra	30			Nauki o państwie i prawie
5532	SP-CBW5	2	lec	Nau.pań.pra	30			Nauki o państwie i prawie
5534	SP-CBW5	2	lec	Org.fun.adm.sam	15			Organizacja i funkcjonowanie administracji samorządowej
5534	SP-CBW6	2	lec	Org.fun.adm.sam	15			Organizacja i funkcjonowanie administracji samorządowej
5536	SP-CBW6	2	lec	Wsp.pro.bez	30			Współczesne problemy bezpieczeństwa
5536	SP-CBW5	2	lec	Wsp.pro.bez	30			Współczesne problemy bezpieczeństwa
5538	SP-CBW6	2	lec	Pra.kar.mat	30			Prawo karne materialne w bezpieczeństwie
5538	SP-CBW5	2	lec	Pra.kar.mat	30			Prawo karne materialne w bezpieczeństwie
5540	SP-CBW6	2	lec	Bez.wew.wUE	30			Bezpieczeństwo wewnętrzne w UE
5540	SP-CBW5	2	lec	Bez.wew.wUE	30			Bezpieczeństwo wewnętrzne w UE
5541	SP-CBW5	2	lec	Sys.bez.RP	15			System Bezpieczeństwa RP
5541	SP-CBW6	2	lec	Sys.bez.RP	15			System Bezpieczeństwa RP
5543	SP-CBW6	2	lec	Och.dan.oso	15			Ochrona danych osobowych i informacji niejawnych
5543	SP-CBW5	2	lec	Och.dan.oso	15			Ochrona danych osobowych i informacji niejawnych
5545	SP-CBW5	2	lec	Pra.cyw.adm	15			Prawo cywilne i administracyjne
5545	SP-CBW6	2	lec	Pra.cyw.adm	15			Prawo cywilne i administracyjne
5550	SP-CBW5	4	lec	Wsp.sys.pol	30			Współczesne systemy polityczne
5550	SP-CBW6	4	lec	Wsp.sys.pol	30			Współczesne systemy polityczne
5552	SP-CBW5	4	lec	Str.bez.Rze	30			Strategia bezpieczeństwa Rzeczypospolitej Polskiej
5552	SP-CBW6	4	lec	Str.bez.Rze	30			Strategia bezpieczeństwa Rzeczypospolitej Polskiej
5553	SP-CBW6	4	lec	Prz.obr.pań	15			Przygotowania obronne panstwa
5553	SP-CBW5	4	lec	Prz.obr.pań	15			Przygotowania obronne panstwa
5557	SP-CBW5	4	lec	Bez.spo.pan	30			Bezpieczeństwo społeczno - ekonomiczne państwa
5557	SP-CBW6	4	lec	Bez.spo.pan	30			Bezpieczeństwo społeczno - ekonomiczne państwa
5559	SP-CBW6	4	lec	Och.osó.mie	15			Ochrona osób, mienia, obiektów i obszarów
5559	SP-CBW5	4	lec	Och.osó.mie	15			Ochrona osób, mienia, obiektów i obszarów
5561	SP-CBW5	4	lec	Pra.czł.ety	15			Prawa człowieka i etyka zawodowa funkcjonariuszy służb publicznych
5561	SP-CBW6	4	lec	Pra.czł.ety	15			Prawa człowieka i etyka zawodowa funkcjonariuszy służb publicznych
5563	SP-CBW5	4	lec	Inf.kry	30			Infrastruktura krytyczna
5563	SP-CBW6	4	lec	Inf.kry	30			Infrastruktura krytyczna
5597	NP-PS46	8	lec	Szk.obr	12			Szkolenie obronne
5597	NP-PS43	8	lec	Szk.obr	12			Szkolenie obronne
5597	NP-PS44	8	lec	Szk.obr	12			Szkolenie obronne
5636	SP-CBW5	4	lec	Zar.kry	15			Zarządzanie kryzysowe
5636	SP-CBW6	4	lec	Zar.kry	15			Zarządzanie kryzysowe
5638	ND-BW4	2	lec	Fil.bez	9			Filozofia bezpieczeństwa
5640	ND-BW4	2	lec	Poz.ins.org	9			Pozarządowe instytucje i organizacje bezpieczeństwa
5642	ND-BW4	2	lec	Met.bad.nad	9			Metodologia badań nad bezpieczeństwem
5644	ND-BW4	2	lec	Syt.kry.kry	9			Sytuacje kryzysowe, kryzysy i patologie społeczne
5646	ND-BW4	2	lec	Zar.jak.bez	9			Zarządzanie jakością w bezpieczeństwie
5791	SP-CBW4.OL	5	lec	Zag.cyw.tec	30			Zagrożenia cywilizacyjno - techniczne
5791	SP-CBW5.OL	5	lec	Zag.cyw.tec	30			Zagrożenia cywilizacyjno - techniczne
5793	SP-CBW5.OL	5	lec	Zag.nat	30			Zagrożenia naturalne
5793	SP-CBW4.OL	5	lec	Zag.nat	30			Zagrożenia naturalne
5795	SP-CBW4.OL	5	lec	Pod.pra.cel	30			Podstawy prawne i cele działania obrony cywilnej
5795	SP-CBW5.OL	5	lec	Pod.pra.cel	30			Podstawy prawne i cele działania obrony cywilnej
5807	SP-CBW5.OL	5	lec	Pom.hum.wym	15			Pomoc humanitarna w wymiarze międzynarodowym
5807	SP-CBW4.OL	5	lec	Pom.hum.wym	15			Pomoc humanitarna w wymiarze międzynarodowym
5810	SP-CBW4.OL	5	lec	Org.poz.och	30			Organizacje pozarządowe w ochronie ludności
5810	SP-CBW5.OL	5	lec	Org.poz.och	30			Organizacje pozarządowe w ochronie ludności
5811	SP-CBW5.OL	5	lec	Słu.pań.och	30			Służby państwowe w ochronie ludności
5811	SP-CBW4.OL	5	lec	Słu.pań.och	30			Służby państwowe w ochronie ludności
5813	SP-CBW4.OL	6	lec	Pow.Sys.Och	30			Powszechny System Ochrony Ludności
5813	SP-CBW5.OL	6	lec	Pow.Sys.Och	30			Powszechny System Ochrony Ludności
5823	SP-CBW4.OL	6	lec	Org.obr.cyw	15			Organizacja obrony cywilnej i obrony narodowej
5823	SP-CBW5.OL	6	lec	Org.obr.cyw	15			Organizacja obrony cywilnej i obrony narodowej
5826	SP-CBW5.OL	6	lec	Sys.wyk.ska	15			Systemy wykrywania skażeń i alarmowania
5826	SP-CBW4.OL	6	lec	Sys.wyk.ska	15			Systemy wykrywania skażeń i alarmowania
5827	SP-CBW5.OL	6	lec	Rat.ewa.lud	15			Ratownictwo i ewakuacja ludności i mienia
5827	SP-CBW4.OL	6	lec	Rat.ewa.lud	15			Ratownictwo i ewakuacja ludności i mienia
5842	SP-C18.IBPr	3	lec	Szk.sub.che	30			Szkodliwe substancje chemiczne
5843	SP-C18.IBPr	3	lec	Mas.urz.pro	15			Maszyny i urządzenia produkcyjne
5844	SP-C18.IBPr	3	lec	Wypadkozna	15			Wypadkoznastwo
5848	SP-C18.IBPr	3	lec	Pra.kra.mię.lud	30			Prawo krajowe i międzynarodowe w ochronie ludności
5854	SP-C18.IBPr	3	lec	Inż.bez.tec	15			Inżynieria bezpieczeństwa technicznego
5857	SP-C18.IBPr	4	lec	Ana.ryz	30			Analiza ryzyka
5858	SP-C18.IBPr	4	lec	Psy.soc	30			Psychologia i socjologia
5859	SP-C18.IBPr	3	lec	Org.fun.sys	30			Organizacja i funkcjonowanie systemów bezpieczeństwa
5862	SP-C18.IBPr	4	lec	Org.sys.rat	15			Organizacja systemów ratownictwa
5864	SP-C18.IBPr	4	lec	Bez.inf	15			Bezpieczeństwo informacji
5865	SP-C18.IBPr	3	lec	Sku.zag.śro	15			Skutki zagrożeń środowiska naturalnego
5866	SP-C18.IBPr	3	lec	Sku.zag.spo.eko	15			Skutki zagrożeń społeczno - ekonomicznych
5867	SP-C18.IBPr	4	lec	Log.bez	30			Logistyka w bezpieczeństwie
5869	SP-C18.IBPr	3	lec	Sku.zag.inf.kom	15			Skutki zagrożeń infrastruktury komunalnej
5880	SP-C18.IBPr	4	lec	Nau.mat.bud	30			Nauki o materiałach (Budownictwo)
5881	SP-C18.IBPr	4	lec	Med.kom.mas	15			Media i komunikowanie masowe
5894	SP-C18.IBPr	4	lec	Pył.śro.pra	30			Pyły w środowisku pracy
5896	SP-C18.IBPr	3	lec	Mon.sta.bez	15			Monitorowanie stanu bezpieczeństwa i higieny pracy
5897	SP-C18.IBPr	3	lec	Dzi.pro	15			Działania profilaktyczne
5898	SP-C18.IBPr	3	lec	Ide.ana.zag	15			Identyfikacja i analiza zagrożeń biologicznych
5901	SP-C18.IBPr	4	lec	Org.met.szk	15			Organizacja i metody szkolenia BHP
5915	NP-CBW6	1	lec	Tec.inf	18			Technologie informacyjne
5918	NP-CBW6	1	lec	Erg.fiz.bez	9			Ergonomia i fizjologia w bezpieczeństwie pracy
5920	NP-CBW6	1	lec	Och.wła.int	9			Ochrona własności intelektualnej
5922	NP-CBW6	1	lec	His.bez	9			Historia bezpieczeństwa
5924	NP-CBW6	1	lec	Org.i.zar	9			Organizacja i zarządzanie
5926	NP-CBW6	2	lec	Org.i.zar	9			Organizacja i zarządzanie
5928	NP-CBW6	1	lec	Ekonomia	9			Ekonomia
5930	NP-CBW6	1	lec	Pod.teo.bez	18			Podstawy teorii bezpieczeństwa
5932	NP-CBW6	2	lec	Nau.pań.pra	18			Nauki o państwie i prawie
5934	NP-CBW6	2	lec	Org.fun.adm.sam	9			Organizacja i funkcjonowanie administracji samorządowej
5936	NP-CBW6	1	lec	Org.fun.adm.rzą	9			Organizacja i funkcjonowanie administracji rządowej
5938	NP-CBW6	2	lec	Wsp.pro.bez	18			Współczesne problemy bezpieczeństwa
5940	NP-CBW6	1	lec	Wsp.zag.bez	18			Współczesne zagrożenia bezpieczeństwa
5942	NP-CBW6	2	lec	Pra.kar.mat	18			Prawo karne materialne w bezpieczeństwie
5944	NP-CBW6	2	lec	Sys.bez.RP	9			System Bezpieczeństwa RP
5946	NP-CBW6	2	lec	Bez.wew.wUE	18			Bezpieczeństwo wewnętrzne w UE
5947	NP-CBW6	2	lec	Och.dan.oso	9			Ochrona danych osobowych i informacji niejawnych
5949	NP-CBW6	2	lec	Pra.cyw.adm	9			Prawo cywilne i administracyjne
5984	Erasmus	1	lec	Era.bui.Fir	30			Erasmus: Building Fire Safety and Fire Safety Engineering
5991	Erasmus	1	lec	Era.fir.and	30			Erasmus: Fire and explosion hazard assessment
5994	Erasmus	1	lec	Era.Ris.Ana	30			Erasmus: Risk Analysis
5996	Erasmus	1	lec	Era.Mat	30			Erasmus: Mathematics
5998	Erasmus	1	lec	Era.Mat.Mak	15			Erasmus: Mathematical Making Decision
6000	Erasmus	1	lec	Era.Phy	30			Erasmus: Physics
6150	ND-BW4	4	lec	Pod.pra.och	9			Podstawy prawne ochrony ludzi i mienia
6152	ND-BW4	4	lec	Ewa.ludz.mie	9			Ewakuacja ludzi i mienia
6154	ND-BW4	4	lec	Bez.imp.mas	9			Bezpieczeństwo imprez masowych
6156	ND-BW4	4	lec	Obr.cyw.lud	9			Obrona cywilna, ochrona ludności i pomoc humanitarna
6158	ND-BW4	4	lec	Str.zap.prz	9			Strategie zapobiegania przestępczości
6171	NP-C16	5	lec	Met.ilo.jak	8			Metody ilościowej i jakościowej oceny ryzyka
6173	NP-C16	5	lec	Sku.zag.bio	8			Skutki zagrożeń biologicznych i ekologicznych
6175	NP-C16	5	lec	Mod.zag	8			Modelowanie zagrożeń
6177	NP-C16	5	lec	Inf.kry	8			Infrastruktura krytyczna
6180	NP-C16	5	lec	Śro.och.ind	8			Środki ochrony indywidualnej i zbiorowej
6182	NP-C16	5	lec	Pra.zmi	8			Praca zmianowa
6184	NP-C16	5	lec	Zag.poż.wyb	8			Zagrożenia pożarowe i wybuchowe
6187	NP-C16	5	lec	Mik.śro.pra	8			Mikroklimat środowiska pracy
6190	NP-C16	6	lec	Mul.tre.dec	8			Multimedialny trening decyzyjny
6192	NP-C16	6	lec	Erg.fiz.bez	8			Ergonomia i fizjologia w bezpieczeństwie pracy
6205	NP-C16	6	lec	Zar.zas.lud	8			Zarządzanie zasobami ludzkimi
6207	NP-C16	6	lec	Bhp.obi.inf	8			BHP w obiektach infrastruktury krytycznej
6209	NP-C16	6	lec	Erg.pro.sta	16			Ergonomia i projektowanie stanowisk pracy
6211	NP-C16	6	lec	Zag.ele	8			Zagrożenia elektroenergetyczne
6214	NP-C16	6	lec	Pro.opt.wid	8			Promieniowanie optyczne i widzialne
6216	NP-C16	6	lec	Oce.ryz.zaw	8			Ocena ryzyka zawodowego w systemie zarządzania bezpieczeństwem pracy
6222	NP-CBW6	3	lec	Ins.źró.pra	9			Instytucje i źródła prawa UE
6226	NP-CBW6	3	lec	Zar.kry	9			Zarządzanie kryzysowe
6228	NP-CBW6	3	lec	Bez.spo.lok	9			Bezpieczeństwo społeczności lokalnych i kształtowanie bezpiecznych przestrzeni
6230	NP-CBW6	3	lec	Kry.kry	18			Kryminalistyka i kryminologia
6231	NP-CBW6	3	lec	Sys.ins.bez	18			Systemy i instytucje bezpieczeństwa wewnętrznego
6233	NP-CBW6	3	lec	Pos.adm.cyw	9			Postępowanie administracyjne i cywilne
6236	NP-CBW6	4	lec	Psy.soc	9			Psychologia i socjologia
6238	NP-CBW6	4	lec	Wsp.sys.pol	18			Współczesne systemy polityczne
6240	NP-CBW6	4	lec	Str.bez.Rze	18			Strategia bezpieczeństwa Rzeczypospolitej Polskiej
6241	NP-CBW6	4	lec	Prz.obr.pań	9			Przygotowania obronne panstwa
6243	NP-CBW6	4	lec	Zar.kry	9			Zarządzanie kryzysowe
6245	NP-CBW6	4	lec	Bez.spo.lok	9			Bezpieczeństwo społeczności lokalnych i kształtowanie bezpiecznych przestrzeni
6247	NP-CBW6	4	lec	Bez.spo.pan	18			Bezpieczeństwo społeczno - ekonomiczne państwa
6249	NP-CBW6	4	lec	Och.osó.mie	9			Ochrona osób, mienia, obiektów i obszarów
6251	NP-CBW6	4	lec	Pra.czł.ety	9			Prawa człowieka i etyka zawodowa funkcjonariuszy służb publicznych
6253	NP-CBW6	4	lec	Inf.kry	18			Infrastruktura krytyczna
6258	SP-C19	3	lec	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
6261	SP-C19	3	lec	Org.fun.sys	15			Organizacja i funkcjonowanie systemów bezpieczeństwa
6263	SP-C19	3	lec	Sku.zag.śro	15			Skutki zagrożeń środowiska naturalnego
6265	SP-C19	3	lec	Sku.zag.inf.kom	15			Skutki zagrożeń infrastruktury komunalnej
6267	SP-C19	3	lec	Sku.zag.spo	15			Skutki zagrożeń społecznych
6269	SP-C19	3	lec	Nau.mat	15			Nauka o materiałach
6271	SP-C19	3	lec	Pra.kra.mię.lud	30			Prawo krajowe i międzynarodowe w ochronie ludności
6276	SP-C19	3	lec	Ide.ana.zag	30			Identyfikacja i analiza zagrożeń biologicznych
6278	SP-C19	3	lec	Zar.bez.pra	15			Zarządzanie bezpieczeństwem pracy
6280	SP-C19	4	lec	Psy.soc	15			Psychologia i socjologia
6282	SP-C19	4	lec	Ana.ryz	15			Analiza ryzyka
6284	SP-C19	4	lec	Log.bez	15			Logistyka w bezpieczeństwie
6288	SP-C18.IBC	5	lec	Met.ilo.jak	15			Metody ilościowej i jakościowej oceny ryzyka
6291	SP-C18.IBC	5	lec	Sku.zag.bio	15			Skutki zagrożeń biologicznych i ekologicznych
6293	SP-C19	4	lec	Bez.zak.zwi	15			Bezpieczeństwo zakładów zwiększonego i dużego ryzyka
6294	SP-C18.IBC	5	lec	Mod.zag	15			Modelowanie zagrożeń
6296	SP-C18.IBC	5	lec	Inf.kry	15			Infrastruktura krytyczna
6299	SP-C19	4	lec	Teo.poż	30			Teoria pożarów
6303	SP-C19	4	lec	Erg.pro.sta	15			Ergonomia i projektowanie stanowisk pracy
6305	SP-C18.IBC	5	lec	Ele.teo.dec	15			Elementy teorii decyzji
6307	SP-C18.IBC	5	lec	Zar.kry	15			Zarządzanie kryzysowe
6309	SP-C19	4	lec	Mon.sta.bez	15			Monitorowanie stanu bezpieczeństwa i higieny pracy
6311	SP-C18.IBC	5	lec	Sys.inf.prz	15			Systemy informacji przestrzennej
6313	SP-C19	4	lec	Szk.sub.che	30			Szkodliwe substancje chemiczne
6318	SP-C18.IBC	5	lec	Int.dzi.bez	15			Integracja działań bezpieczeństwa cywilnego
6321	SP-C18.IBPr	5	lec	Met.ilo.jak	15			Metody ilościowej i jakościowej oceny ryzyka
6323	SP-C18.IBPr	5	lec	Sku.zag.bio	15			Skutki zagrożeń biologicznych i ekologicznych
6325	SP-C18.IBPr	5	lec	Mod.zag	15			Modelowanie zagrożeń
6327	SP-C18.IBPr	5	lec	Inf.kry	15			Infrastruktura krytyczna
6330	SP-C18.IBPr	5	lec	Śro.och.ind	15			Środki ochrony indywidualnej i zbiorowej
6332	SP-C18.IBPr	5	lec	Pra.zmi	15			Praca zmianowa
6334	SP-C18.IBPr	5	lec	Zag.poż.wyb	15			Zagrożenia pożarowe i wybuchowe
6337	SP-C18.IBPr	5	lec	Mik.śro.pra	15			Mikroklimat środowiska pracy
6342	SP-C18.IBC	6	lec	Mul.tre.dec	15			Multimedialny trening decyzyjny
6343	SP-C18.IBC	6	lec	Erg.fiz.bez	15			Ergonomia i fizjologia w bezpieczeństwie pracy
6345	SP-C18.IBC	6	lec	Zar.zas.lud	15			Zarządzanie zasobami ludzkimi
6348	SP-C18.IBC	6	lec	Pos.adm	15			Postępowanie administracyjne
6350	SP-C18.IBC	6	lec	Och.dób.kul	30			Ochrona dóbr kultury
6352	SP-C18.IBC	6	lec	Zar.bez.cyw	15			Zarządzanie bezpieczeństwem cywilnym
6355	SP-C18.IBC	6	lec	Edu.dla.bez.cyw	15			Edukacja dla bezpieczeństwa cywilnego
6357	SP-C18.IBC	6	lec	Wyb.pro.bez	15			Wybrane problemy bezpieczeństwa
6363	SP-C18.IBPr	6	lec	Mul.tre.dec	15			Multimedialny trening decyzyjny
6365	SP-C18.IBPr	6	lec	Erg.fiz.bez	15			Ergonomia i fizjologia w bezpieczeństwie pracy
6367	SP-C18.IBPr	6	lec	Zar.zas.lud	15			Zarządzanie zasobami ludzkimi
6370	SP-C18.IBPr	6	lec	Bhp.obi.inf	15			BHP w obiektach infrastruktury krytycznej
6372	SP-C18.IBPr	6	lec	Erg.pro.sta	30			Ergonomia i projektowanie stanowisk pracy
6374	SP-C18.IBPr	6	lec	Zag.ele	15			Zagrożenia elektroenergetyczne
6377	SP-C18.IBPr	6	lec	Pro.opt.wid	15			Promieniowanie optyczne i widzialne
6379	SP-C18.IBPr	6	lec	Oce.ryz.zaw	15			Ocena ryzyka zawodowego w systemie zarządzania bezpieczeństwem pracy
6390	SP-PK20	1	lec	Fizyka	30			Fizyka
6390	SP-PK19	1	lec	Fizyka	30			Fizyka
6399	SP-PK19	1	lec	Tec.inf	30			Technologie informacyjne
6399	SP-PK20	1	lec	Tec.inf	30			Technologie informacyjne
6415	SP-PK19	1	lec	Matematyka	30			Matematyka
6415	SP-PK20	1	lec	Matematyka	30			Matematyka
6420	SP-PK19	1	lec	Chemia	30			Chemia
6420	SP-PK20	1	lec	Chemia	30			Chemia
6430	SP-PK20	2	lec	Pod.bud	30			Podstawy budownictwa
6430	SP-PK19	2	lec	Pod.bud	30			Podstawy budownictwa
6431	SP-PK19	2	lec	Hyd.prz.zao	30			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
6431	SP-PK20	2	lec	Hyd.prz.zao	30			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
6445	SP-PK19	1	lec	Fil.ety	30			Filozofia i etyka
6445	SP-PK20	1	lec	Fil.ety	30			Filozofia i etyka
6446	SP-PK19	2	lec	Ekonomia	30			Ekonomia
6446	SP-PK20	2	lec	Ekonomia	30			Ekonomia
6462	SP-PK20	1	lec	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
6462	SP-PK19	1	lec	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
6520	NP-PS47A	1	lec	Tec.inf	18			Technologie informacyjne
6520	NP-PS48A	1	lec	Tec.inf	18			Technologie informacyjne
6521	NP-PS48A	1	lec	Fil.ety	18			Filozofia i etyka
6521	NP-PS47A	1	lec	Fil.ety	18			Filozofia i etyka
6565	NP-PS47A	1	lec	Matematyka	18			Matematyka
6565	NP-PS48A	1	lec	Matematyka	18			Matematyka
6582	NP-PS48A	2	lec	Ekonomia	18			Ekonomia
6582	NP-PS47A	2	lec	Ekonomia	18			Ekonomia
6590	NP-PS48A	1	lec	Fizyka	18			Fizyka
6590	NP-PS47A	1	lec	Fizyka	18			Fizyka
6592	NP-PS47A	1	lec	Chemia	18			Chemia
6592	NP-PS48A	1	lec	Chemia	18			Chemia
6595	NP-PS48A	2	lec	Hyd.prz.zao	18			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
6595	NP-PS47A	2	lec	Hyd.prz.zao	18			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
6602	NP-PS48A	1	lec	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
6602	NP-PS47A	1	lec	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
6614	NP-PS47A	2	lec	Pod.bud	18			Podstawy budownictwa
6614	NP-PS48A	2	lec	Pod.bud	18			Podstawy budownictwa
6639	NP-PS47B	1	lec	Tec.inf	18			Technologie informacyjne
6639	NP-PS48B	1	lec	Tec.inf	18			Technologie informacyjne
6640	NP-PS47B	1	lec	Fil.ety	18			Filozofia i etyka
6640	NP-PS48B	1	lec	Fil.ety	18			Filozofia i etyka
6650	NP-PS48B	1	lec	Matematyka	18			Matematyka
6650	NP-PS47B	1	lec	Matematyka	18			Matematyka
6656	NP-PS47B	2	lec	Ekonomia	18			Ekonomia
6656	NP-PS48B	2	lec	Ekonomia	18			Ekonomia
6658	NP-PS47B	1	lec	Fizyka	18			Fizyka
6658	NP-PS48B	1	lec	Fizyka	18			Fizyka
6659	NP-PS48B	1	lec	Chemia	18			Chemia
6659	NP-PS47B	1	lec	Chemia	18			Chemia
6661	NP-PS48B	2	lec	Hyd.prz.zao	18			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
6661	NP-PS47B	2	lec	Hyd.prz.zao	18			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
6662	NP-PS47B	1	lec	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
6662	NP-PS48B	1	lec	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
6664	NP-PS47B	2	lec	Pod.bud	18			Podstawy budownictwa
6664	NP-PS48B	2	lec	Pod.bud	18			Podstawy budownictwa
6668	NP-PC22	1	lec	Tec.inf	18			Technologie informacyjne
6669	NP-PC22	1	lec	Fil.ety	18			Filozofia i etyka
6669	NP-PC23	1	lec	Fil.ety	18			Filozofia i etyka
6679	NP-PC22	1	lec	Matematyka	18			Matematyka
6679	NP-PC23	1	lec	Matematyka	18			Matematyka
6685	NP-PC22	2	lec	Ekonomia	18			Ekonomia
6685	NP-PC23	2	lec	Ekonomia	18			Ekonomia
6687	NP-PC23	1	lec	Fizyka	18			Fizyka
6687	NP-PC22	1	lec	Fizyka	18			Fizyka
6688	NP-PC23	1	lec	Chemia	18			Chemia
6688	NP-PC22	1	lec	Chemia	18			Chemia
6690	NP-PC22	2	lec	Hyd.prz.zao	18			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
6690	NP-PC23	2	lec	Hyd.prz.zao	18			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
6691	NP-PC23	1	lec	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
6691	NP-PC22	1	lec	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
6693	NP-PC22	2	lec	Pod.bud	18			Podstawy budownictwa
6693	NP-PC23	2	lec	Pod.bud	18			Podstawy budownictwa
6701	ND-BW5	1	lec	Psy.spo	18			Psychologia społeczna
6701	ND-BW6	1	lec	Psy.spo	18			Psychologia społeczna
6725	ND-BW6	1	lec	Ele.log	9			Elementy logiki
6725	ND-BW5	1	lec	Ele.log	9			Elementy logiki
6730	ND-BW5	1	lec	Edu.dla.bez	9			Edukacja dla bezpieczeństwa
6730	ND-BW6	1	lec	Edu.dla.bez	9			Edukacja dla bezpieczeństwa
6733	ND-BW5	2	lec	Pra.asp.bez	9			Prawno - funkcjonalne aspekty bezpieczeństwa wewnętrznego
6733	ND-BW6	2	lec	Pra.asp.bez	9			Prawno - funkcjonalne aspekty bezpieczeństwa wewnętrznego
6734	ND-BW6	2	lec	Poz.ins.org	9			Pozarządowe instytucje i organizacje bezpieczeństwa
6734	ND-BW5	2	lec	Poz.ins.org	9			Pozarządowe instytucje i organizacje bezpieczeństwa
6742	ND-BW6	1	lec	Bez.pań.oby	9			Bezpieczeństwo państwa i obywateli
6744	ND-BW5	1	lec	Str.bez.wew	18			Strategie bezpieczeństwa wewnętrznego
6744	ND-BW6	1	lec	Str.bez.wew	18			Strategie bezpieczeństwa wewnętrznego
6745	ND-BW5	3	lec	Wsp.mię.bez	9			Współpraca międzynarodowa w bezpieczeństwie wewnętrznym
6745	ND-BW6	3	lec	Wsp.mię.bez	9			Współpraca międzynarodowa w bezpieczeństwie wewnętrznym
6748	ND-BW5	3	lec	roz.pro.sta	12			Rozpoznawanie i prognozowanie stanów zagrożenia
6748	ND-BW6	3	lec	roz.pro.sta	12			Rozpoznawanie i prognozowanie stanów zagrożenia
6750	ND-BW6	3	lec	Inf.kry	18			Infrastruktura krytyczna
6750	ND-BW5	3	lec	Inf.kry	18			Infrastruktura krytyczna
6753	ND-BW5	2	lec	Geo.uwa.bez	30			Geopolityczne uwarunkowania bezpieczeństwa wewnętrznego
6753	ND-BW6	2	lec	Geo.uwa.bez	30			Geopolityczne uwarunkowania bezpieczeństwa wewnętrznego
6755	ND-BW6	2	lec	Syt.kry.kry	9			Sytuacje kryzysowe, kryzysy i patologie społeczne
6755	ND-BW5	2	lec	Syt.kry.kry	9			Sytuacje kryzysowe, kryzysy i patologie społeczne
6757	ND-BW5	1	lec	Kom.spo	9			Komunikowanie społeczne
6757	ND-BW6	1	lec	Kom.spo	9			Komunikowanie społeczne
6758	ND-BW5	1	lec	Org.fun.adm.pub	9			Organizacja i funkcjonowanie administracji publicznej
6758	ND-BW6	1	lec	Org.fun.adm.pub	9			Organizacja i funkcjonowanie administracji publicznej
6760	ND-BW5	2	lec	Zar.jak.bez	9			Zarządzanie jakością w bezpieczeństwie
6760	ND-BW6	2	lec	Zar.jak.bez	9			Zarządzanie jakością w bezpieczeństwie
6770	ND-BW5	3	lec	Sił.zbr.bez	9			Siły Zbrojne w bezpieczeństwie wewnętrznym
6770	ND-BW6	3	lec	Sił.zbr.bez	9			Siły Zbrojne w bezpieczeństwie wewnętrznym
6772	ND-BW5	3	lec	Zas.log.bez	9			Zasilanie logistyczne w bezpieczeństwie
6772	ND-BW6	3	lec	Zas.log.bez	9			Zasilanie logistyczne w bezpieczeństwie
6773	ND-BW5	2	lec	Met.bad.nad	9			Metodologia badań nad bezpieczeństwem
6773	ND-BW6	2	lec	Met.bad.nad	9			Metodologia badań nad bezpieczeństwem
6776	SD-BW6	2	lec	Poz.ins.org	30			Pozarządowe instytucje i organizacje bezpieczeństwa
6776	SD-BW5	2	lec	Poz.ins.org	30			Pozarządowe instytucje i organizacje bezpieczeństwa
6780	SD-BW5	1	lec	Org.fun.adm.pub	35			Organizacja i funkcjonowanie administracji publicznej
6780	SD-BW6	1	lec	Org.fun.adm.pub	35			Organizacja i funkcjonowanie administracji publicznej
6787	SD-BW5	2	lec	Pra.asp.bez	30			Prawno - funkcjonalne aspekty bezpieczeństwa wewnętrznego
6787	SD-BW6	2	lec	Pra.asp.bez	30			Prawno - funkcjonalne aspekty bezpieczeństwa wewnętrznego
6789	SD-BW5	2	lec	Zar.jak.bez	30			Zarządzanie jakością w bezpieczeństwie
6789	SD-BW6	2	lec	Zar.jak.bez	30			Zarządzanie jakością w bezpieczeństwie
6795	SD-BW6	3	lec	roz.pro.sta	30			Rozpoznawanie i prognozowanie stanów zagrożenia
6795	SD-BW5	3	lec	roz.pro.sta	30			Rozpoznawanie i prognozowanie stanów zagrożenia
6797	SD-BW5	3	lec	Inf.kry	30			Infrastruktura krytyczna
6797	SD-BW6	3	lec	Inf.kry	30			Infrastruktura krytyczna
6801	SD-BW6	1	lec	Bez.pań.oby	30			Bezpieczeństwo państwa i obywateli
6801	SD-BW5	1	lec	Bez.pań.oby	30			Bezpieczeństwo państwa i obywateli
6803	SD-BW6	1	lec	Ele.log	25			Elementy logiki
6803	SD-BW5	1	lec	Ele.log	25			Elementy logiki
6804	SD-BW5	3	lec	Zas.log.bez	30			Zasilanie logistyczne w bezpieczeństwie
6804	SD-BW6	3	lec	Zas.log.bez	30			Zasilanie logistyczne w bezpieczeństwie
6813	SD-BW6	1	lec	Kom.spo	25			Komunikowanie społeczne
6813	SD-BW5	1	lec	Kom.spo	25			Komunikowanie społeczne
6817	SD-BW5	3	lec	Sił.zbr.bez	30			Siły Zbrojne w bezpieczeństwie wewnętrznym
6817	SD-BW6	3	lec	Sił.zbr.bez	30			Siły Zbrojne w bezpieczeństwie wewnętrznym
6819	SD-BW6	1	lec	Str.bez.wew	25			Strategie bezpieczeństwa wewnętrznego
6819	SD-BW5	1	lec	Str.bez.wew	25			Strategie bezpieczeństwa wewnętrznego
6828	SD-BW5	3	lec	Wsp.mię.bez	30			Współpraca międzynarodowa w bezpieczeństwie wewnętrznym
6828	SD-BW6	3	lec	Wsp.mię.bez	30			Współpraca międzynarodowa w bezpieczeństwie wewnętrznym
6832	SD-BW6	2	lec	Syt.kry.kry	30			Sytuacje kryzysowe, kryzysy i patologie społeczne
6832	SD-BW5	2	lec	Syt.kry.kry	30			Sytuacje kryzysowe, kryzysy i patologie społeczne
6833	SD-BW6	1	lec	Psy.spo	30			Psychologia społeczna
6833	SD-BW5	1	lec	Psy.spo	30			Psychologia społeczna
6835	SD-BW6	1	lec	Edu.dla.bez	30			Edukacja dla bezpieczeństwa
6835	SD-BW5	1	lec	Edu.dla.bez	30			Edukacja dla bezpieczeństwa
6845	SD-BW6	2	lec	Met.bad.nad	30			Metodologia badań nad bezpieczeństwem
6845	SD-BW5	2	lec	Met.bad.nad	30			Metodologia badań nad bezpieczeństwem
6848	SP-CBW8	4	lec	Och.osó.mie	15			Ochrona osób, mienia, obiektów i obszarów
6848	SP-CBW7	4	lec	Och.osó.mie	15			Ochrona osób, mienia, obiektów i obszarów
6851	SP-CBW7	4	lec	Inf.kry	15			Infrastruktura krytyczna
6851	SP-CBW8	4	lec	Inf.kry	15			Infrastruktura krytyczna
6852	SP-CBW8	1	lec	Ekonomia	15			Ekonomia
6852	SP-CBW7	1	lec	Ekonomia	15			Ekonomia
6853	SP-CBW7	4	lec	Bez.spo.lok	15			Bezpieczeństwo społeczności lokalnych i kształtowanie bezpiecznych przestrzeni
6853	SP-CBW8	4	lec	Bez.spo.lok	15			Bezpieczeństwo społeczności lokalnych i kształtowanie bezpiecznych przestrzeni
6854	SP-CBW8	3	lec	Int.pra.UE	20			Integracja i prawo UE
6854	SP-CBW7	3	lec	Int.pra.UE	20			Integracja i prawo UE
6855	SP-CBW7	1	lec	Och.wła.int	15			Ochrona własności intelektualnej
6855	SP-CBW8	1	lec	Och.wła.int	15			Ochrona własności intelektualnej
6863	SP-CBW7	1	lec	Wsp.zag.bez	60			Współczesne zagrożenia bezpieczeństwa
6863	SP-CBW8	1	lec	Wsp.zag.bez	60			Współczesne zagrożenia bezpieczeństwa
6865	SP-CBW8	3	lec	Bez.spo.lok	15			Bezpieczeństwo społeczności lokalnych i kształtowanie bezpiecznych przestrzeni
6865	SP-CBW7	3	lec	Bez.spo.lok	15			Bezpieczeństwo społeczności lokalnych i kształtowanie bezpiecznych przestrzeni
6867	SP-CBW8	1	lec	Pod.teo.bez	30			Podstawy teorii bezpieczeństwa
6867	SP-CBW7	1	lec	Pod.teo.bez	30			Podstawy teorii bezpieczeństwa
6868	SP-CBW7	2	lec	Bez.wew.wUE	25			Bezpieczeństwo wewnętrzne w UE
6868	SP-CBW8	2	lec	Bez.wew.wUE	25			Bezpieczeństwo wewnętrzne w UE
6870	SP-CBW8	3	lec	Zar.kry	15			Zarządzanie kryzysowe
6870	SP-CBW7	3	lec	Zar.kry	15			Zarządzanie kryzysowe
6872	SP-CBW7	4	lec	Psy.soc	15			Psychologia i socjologia
6872	SP-CBW8	4	lec	Psy.soc	15			Psychologia i socjologia
6873	SP-CBW8	2	lec	Org.i.zar	15			Organizacja i zarządzanie
6873	SP-CBW7	2	lec	Org.i.zar	15			Organizacja i zarządzanie
6877	SP-CBW7	3	lec	Sys.ins.bez	30			Systemy i instytucje bezpieczeństwa wewnętrznego
6877	SP-CBW8	3	lec	Sys.ins.bez	30			Systemy i instytucje bezpieczeństwa wewnętrznego
6879	SP-CBW7	1	lec	Erg.fiz.bez	15			Ergonomia i fizjologia w bezpieczeństwie pracy
6879	SP-CBW8	1	lec	Erg.fiz.bez	15			Ergonomia i fizjologia w bezpieczeństwie pracy
6881	SP-CBW8	3	lec	Kry.kry	20			Kryminalistyka i kryminologia
6881	SP-CBW7	3	lec	Kry.kry	20			Kryminalistyka i kryminologia
6882	SP-CBW7	2	lec	Pra.kar.mat	30			Prawo karne materialne w bezpieczeństwie
6882	SP-CBW8	2	lec	Pra.kar.mat	30			Prawo karne materialne w bezpieczeństwie
6884	SP-CBW7	4	lec	Zar.kry	15			Zarządzanie kryzysowe
6884	SP-CBW8	4	lec	Zar.kry	15			Zarządzanie kryzysowe
6887	SP-CBW7	1	lec	Org.fun.adm.pub	15			Organizacja i funkcjonowanie administracji publicznej
6887	SP-CBW8	1	lec	Org.fun.adm.pub	15			Organizacja i funkcjonowanie administracji publicznej
6888	SP-CBW8	2	lec	Org.fun.adm.pub	15			Organizacja i funkcjonowanie administracji publicznej
6888	SP-CBW7	2	lec	Org.fun.adm.pub	15			Organizacja i funkcjonowanie administracji publicznej
6889	SP-CBW7	4	lec	Str.bez.Rze	30			Strategia bezpieczeństwa Rzeczypospolitej Polskiej
6889	SP-CBW8	4	lec	Str.bez.Rze	30			Strategia bezpieczeństwa Rzeczypospolitej Polskiej
6890	SP-CBW8	4	lec	Bez.spo.pan	20			Bezpieczeństwo społeczno - ekonomiczne państwa
6890	SP-CBW7	4	lec	Bez.spo.pan	20			Bezpieczeństwo społeczno - ekonomiczne państwa
6892	SP-CBW7	2	lec	Pra.cyw.adm	30			Prawo cywilne i administracyjne
6892	SP-CBW8	2	lec	Pra.cyw.adm	30			Prawo cywilne i administracyjne
6898	SP-CBW7	1	lec	Org.i.zar	30			Organizacja i zarządzanie
6898	SP-CBW8	1	lec	Org.i.zar	30			Organizacja i zarządzanie
6901	SP-CBW7	3	lec	Pos.adm.cyw	20			Postępowanie administracyjne i cywilne
6901	SP-CBW8	3	lec	Pos.adm.cyw	20			Postępowanie administracyjne i cywilne
6903	SP-CBW7	1	lec	Edu.dla.bez	15			Edukacja dla bezpieczeństwa
6903	SP-CBW8	1	lec	Edu.dla.bez	15			Edukacja dla bezpieczeństwa
6910	SP-CBW8	2	lec	Nau.pań.pra	30			Nauki o państwie i prawie
6910	SP-CBW7	2	lec	Nau.pań.pra	30			Nauki o państwie i prawie
6915	SP-CBW8	2	lec	Wsp.pro.bez	30			Współczesne problemy bezpieczeństwa
6915	SP-CBW7	2	lec	Wsp.pro.bez	30			Współczesne problemy bezpieczeństwa
6916	SP-CBW7	1	lec	Tec.inf	15			Technologie informacyjne
6916	SP-CBW8	1	lec	Tec.inf	15			Technologie informacyjne
6918	SP-CBW8	4	lec	Prz.obr.pań	15			Przygotowania obronne panstwa
6918	SP-CBW7	4	lec	Prz.obr.pań	15			Przygotowania obronne panstwa
6923	SP-CBW7	2	lec	Sys.bez.RP	20			System Bezpieczeństwa RP
6923	SP-CBW8	2	lec	Sys.bez.RP	20			System Bezpieczeństwa RP
6924	SP-CBW8	4	lec	Wsp.sys.pol	15			Współczesne systemy polityczne
6924	SP-CBW7	4	lec	Wsp.sys.pol	15			Współczesne systemy polityczne
6927	SP-CBW8	2	lec	Och.dan.oso	15			Ochrona danych osobowych i informacji niejawnych
6927	SP-CBW7	2	lec	Och.dan.oso	15			Ochrona danych osobowych i informacji niejawnych
6944	SP-CBW8	3	lec	Pla.cyw	30			Planowanie cywilne
6944	SP-CBW7	3	lec	Pla.cyw	30			Planowanie cywilne
6948	NP-CBW8	2	lec	Pra.kar.mat	18			Prawo karne materialne w bezpieczeństwie
6948	NP-CBW7	2	lec	Pra.kar.mat	18			Prawo karne materialne w bezpieczeństwie
6951	NP-CBW8	1	lec	Wsp.zag.bez	18			Współczesne zagrożenia bezpieczeństwa
6951	NP-CBW7	1	lec	Wsp.zag.bez	18			Współczesne zagrożenia bezpieczeństwa
6952	NP-CBW8	1	lec	Erg.fiz.bez	9			Ergonomia i fizjologia w bezpieczeństwie pracy
6952	NP-CBW7	1	lec	Erg.fiz.bez	9			Ergonomia i fizjologia w bezpieczeństwie pracy
6953	NP-CBW8	2	lec	Wsp.pro.bez	18			Współczesne problemy bezpieczeństwa
6953	NP-CBW7	2	lec	Wsp.pro.bez	18			Współczesne problemy bezpieczeństwa
6959	NP-CBW8	1	lec	Edu.dla.bez	9			Edukacja dla bezpieczeństwa
6959	NP-CBW7	1	lec	Edu.dla.bez	9			Edukacja dla bezpieczeństwa
6961	NP-CBW7	2	lec	Pra.cyw.adm	9			Prawo cywilne i administracyjne
6961	NP-CBW8	2	lec	Pra.cyw.adm	9			Prawo cywilne i administracyjne
6962	NP-CBW8	1	lec	Och.wła.int	9			Ochrona własności intelektualnej
6962	NP-CBW7	1	lec	Och.wła.int	9			Ochrona własności intelektualnej
6964	NP-CBW7	1	lec	Ekonomia	9			Ekonomia
6964	NP-CBW8	1	lec	Ekonomia	9			Ekonomia
6965	NP-CBW8	1	lec	Pod.teo.bez	18			Podstawy teorii bezpieczeństwa
6965	NP-CBW7	1	lec	Pod.teo.bez	18			Podstawy teorii bezpieczeństwa
6966	NP-CBW8	2	lec	Nau.pań.pra	18			Nauki o państwie i prawie
6966	NP-CBW7	2	lec	Nau.pań.pra	18			Nauki o państwie i prawie
6969	NP-CBW7	1	lec	Org.fun.adm.pub	9			Organizacja i funkcjonowanie administracji publicznej
6969	NP-CBW8	1	lec	Org.fun.adm.pub	9			Organizacja i funkcjonowanie administracji publicznej
6971	NP-CBW8	2	lec	Org.fun.adm.pub	9			Organizacja i funkcjonowanie administracji publicznej
6971	NP-CBW7	2	lec	Org.fun.adm.pub	9			Organizacja i funkcjonowanie administracji publicznej
6972	NP-CBW7	2	lec	Sys.bez.RP	9			System Bezpieczeństwa RP
6972	NP-CBW8	2	lec	Sys.bez.RP	9			System Bezpieczeństwa RP
6974	NP-CBW7	2	lec	Org.i.zar	9			Organizacja i zarządzanie
6974	NP-CBW8	2	lec	Org.i.zar	9			Organizacja i zarządzanie
6975	NP-CBW7	1	lec	Tec.inf	18			Technologie informacyjne
6975	NP-CBW8	1	lec	Tec.inf	18			Technologie informacyjne
6979	NP-CBW8	2	lec	Bez.wew.wUE	18			Bezpieczeństwo wewnętrzne w UE
6979	NP-CBW7	2	lec	Bez.wew.wUE	18			Bezpieczeństwo wewnętrzne w UE
6981	NP-CBW8	4	lec	Wsp.sys.pol	18			Współczesne systemy polityczne
6981	NP-CBW7	4	lec	Wsp.sys.pol	18			Współczesne systemy polityczne
6982	NP-CBW8	3	lec	Pos.adm.cyw	9			Postępowanie administracyjne i cywilne
6982	NP-CBW7	3	lec	Pos.adm.cyw	9			Postępowanie administracyjne i cywilne
6985	NP-CBW8	4	lec	Bez.spo.lok	9			Bezpieczeństwo społeczności lokalnych i kształtowanie bezpiecznych przestrzeni
6985	NP-CBW7	4	lec	Bez.spo.lok	9			Bezpieczeństwo społeczności lokalnych i kształtowanie bezpiecznych przestrzeni
6988	NP-CBW7	4	lec	Psy.soc	9			Psychologia i socjologia
6988	NP-CBW8	4	lec	Psy.soc	9			Psychologia i socjologia
6989	NP-CBW8	3	lec	Ins.źró.pra	9			Instytucje i źródła prawa UE
6989	NP-CBW7	3	lec	Ins.źró.pra	9			Instytucje i źródła prawa UE
6993	NP-CBW7	4	lec	Bez.spo.pan	18			Bezpieczeństwo społeczno - ekonomiczne państwa
6993	NP-CBW8	4	lec	Bez.spo.pan	18			Bezpieczeństwo społeczno - ekonomiczne państwa
6995	NP-CBW8	3	lec	Sys.ins.bez	18			Systemy i instytucje bezpieczeństwa wewnętrznego
6995	NP-CBW7	3	lec	Sys.ins.bez	18			Systemy i instytucje bezpieczeństwa wewnętrznego
7089	SD-P14	1	lec	Sys.inf.prz	15			Systemy informacji przestrzennej
7002	NP-CBW8	4	lec	Pra.czł.ety	9			Prawa człowieka i etyka zawodowa funkcjonariuszy służb publicznych
7002	NP-CBW7	4	lec	Pra.czł.ety	9			Prawa człowieka i etyka zawodowa funkcjonariuszy służb publicznych
7003	NP-CBW7	3	lec	Pla.cyw	18			Planowanie cywilne
7003	NP-CBW8	3	lec	Pla.cyw	18			Planowanie cywilne
7004	NP-CBW8	4	lec	Zar.kry	9			Zarządzanie kryzysowe
7004	NP-CBW7	4	lec	Zar.kry	9			Zarządzanie kryzysowe
7006	NP-CBW8	4	lec	Prz.obr.pań	9			Przygotowania obronne panstwa
7006	NP-CBW7	4	lec	Prz.obr.pań	9			Przygotowania obronne panstwa
7007	NP-CBW7	4	lec	Str.bez.Rze	18			Strategia bezpieczeństwa Rzeczypospolitej Polskiej
7007	NP-CBW8	4	lec	Str.bez.Rze	18			Strategia bezpieczeństwa Rzeczypospolitej Polskiej
7008	NP-CBW8	4	lec	Och.osó.mie	9			Ochrona osób, mienia, obiektów i obszarów
7008	NP-CBW7	4	lec	Och.osó.mie	9			Ochrona osób, mienia, obiektów i obszarów
7009	NP-CBW8	3	lec	Bez.spo.lok	9			Bezpieczeństwo społeczności lokalnych i kształtowanie bezpiecznych przestrzeni
7009	NP-CBW7	3	lec	Bez.spo.lok	9			Bezpieczeństwo społeczności lokalnych i kształtowanie bezpiecznych przestrzeni
7011	NP-CBW7	4	lec	Inf.kry	18			Infrastruktura krytyczna
7011	NP-CBW8	4	lec	Inf.kry	18			Infrastruktura krytyczna
7014	NP-CBW8	3	lec	Zar.kry	9			Zarządzanie kryzysowe
7014	NP-CBW7	3	lec	Zar.kry	9			Zarządzanie kryzysowe
7016	NP-CBW7	3	lec	Kry.kry	18			Kryminalistyka i kryminologia
7016	NP-CBW8	3	lec	Kry.kry	18			Kryminalistyka i kryminologia
7017	NP-CBW8	2	lec	Och.dan.oso	9			Ochrona danych osobowych i informacji niejawnych
7017	NP-CBW7	2	lec	Och.dan.oso	9			Ochrona danych osobowych i informacji niejawnych
7018	NP-CBW8	1	lec	Org.i.zar	9			Organizacja i zarządzanie
7018	NP-CBW7	1	lec	Org.i.zar	9			Organizacja i zarządzanie
7020	SP-PK20	2	lec	Och.wła.int	15			Ochrona własności intelektualnej
7020	SP-PK19	2	lec	Och.wła.int	15			Ochrona własności intelektualnej
7022	SD-BW6	1	lec	Konf.pol.św	25			Konflikty polityczne świata
7022	SD-BW5	1	lec	Konf.pol.św	25			Konflikty polityczne świata
7023	SD-BW5	2	lec	Geo.uwa.bez	30			Geopolityczne uwarunkowania bezpieczeństwa wewnętrznego
7023	SD-BW6	2	lec	Geo.uwa.bez	30			Geopolityczne uwarunkowania bezpieczeństwa wewnętrznego
7025	ND-BW5	1	lec	Konf.pol.św	18			Konflikty polityczne świata
7025	ND-BW6	1	lec	Konf.pol.św	18			Konflikty polityczne świata
7026	NP-PS47A	2	lec	Och.wła.int	9			Ochrona własności intelektualnej
7026	NP-PS48A	2	lec	Och.wła.int	9			Ochrona własności intelektualnej
7027	NP-PS48B	2	lec	Och.wła.int	9			Ochrona własności intelektualnej
7027	NP-PS47B	2	lec	Och.wła.int	9			Ochrona własności intelektualnej
7028	NP-PC23	2	lec	Och.wła.int	9			Ochrona własności intelektualnej
7028	NP-PC22	2	lec	Och.wła.int	9			Ochrona własności intelektualnej
7030	ND-P37	1	lec	Zar.inf	9			Zarządzanie informacjami
7030	ND-P36	1	lec	Zar.inf	9			Zarządzanie informacjami
7036	ND-P36	1	lec	Wsp.pro.inż	18			Współczesne problemy inżynierii środowiska
7036	ND-P37	1	lec	Wsp.pro.inż	18			Współczesne problemy inżynierii środowiska
7039	ND-P36	2	lec	Pro.doc.pop	9			Procedura dochodzeń popożarowych
7039	ND-P37	2	lec	Pro.doc.pop	9			Procedura dochodzeń popożarowych
7045	ND-P37	1	lec	Met.bad.nau	9			Metodologia badań naukowych w inżynierii bezpieczeństwa
7045	ND-P36	1	lec	Met.bad.nau	9			Metodologia badań naukowych w inżynierii bezpieczeństwa
7046	ND-P36	2	lec	Zar.inf.kom	9			Zarządzanie infrastrukturą komunalną w sytuacjach kryzysowych
7046	ND-P37	2	lec	Zar.inf.kom	9			Zarządzanie infrastrukturą komunalną w sytuacjach kryzysowych
7050	ND-P37	2	lec	Kie.dzi.rat	9			Kierowanie działaniami ratowniczymi
7050	ND-P36	2	lec	Kie.dzi.rat	9			Kierowanie działaniami ratowniczymi
7061	ND-P36	3	lec	Str.ope.rat	9			Strategiczne operacje ratownicze
7061	ND-P37	3	lec	Str.ope.rat	9			Strategiczne operacje ratownicze
7063	ND-P36	1	lec	Sys.inf.prz	9			Systemy informacji przestrzennej
7063	ND-P37	1	lec	Sys.inf.prz	9			Systemy informacji przestrzennej
7064	ND-P37	2	lec	Ana.ryz.inz	9			Analiza ryzyka w inżynierii bezpieczeństwa
7064	ND-P36	2	lec	Ana.ryz.inz	9			Analiza ryzyka w inżynierii bezpieczeństwa
7066	ND-P36	1	lec	Met.tec.zar	9			Metody i techniki zarządzania zasobami ludzkimi
7066	ND-P37	1	lec	Met.tec.zar	9			Metody i techniki zarządzania zasobami ludzkimi
7067	ND-P36	3	lec	Noś.kon.war	9			Nośność konstrukcji w warunkach pożaru
7067	ND-P37	3	lec	Noś.kon.war	9			Nośność konstrukcji w warunkach pożaru
7068	ND-P36	3	lec	Rze.prz	9			Rzeczoznawstwo przeciwpożarowe
7068	ND-P37	3	lec	Rze.prz	9			Rzeczoznawstwo przeciwpożarowe
7071	ND-P37	1	lec	Prz.ope.och	18			Przygotowanie operacyjne w ochronie ludności
7071	ND-P36	1	lec	Prz.ope.och	18			Przygotowanie operacyjne w ochronie ludności
7072	ND-P36	1	lec	Wsp.zag.ter	9			Współczesne zagrożenia terrorystyczne
7072	ND-P37	1	lec	Wsp.zag.ter	9			Współczesne zagrożenia terrorystyczne
7075	ND-P37	2	lec	Kra.sys.wyk	9			Krajowy system wykrywania skażeń i alarmowania
7075	ND-P36	2	lec	Kra.sys.wyk	9			Krajowy system wykrywania skażeń i alarmowania
7077	ND-P37	1	lec	Mod.poż	9			Modelowanie pożarów
7077	ND-P36	1	lec	Mod.poż	9			Modelowanie pożarów
7079	ND-P36	1	lec	Nie.bez.bud	9			Niezawodność i bezpieczeństwo budowli
7079	ND-P37	1	lec	Nie.bez.bud	9			Niezawodność i bezpieczeństwo budowli
7080	ND-P37	1	lec	Mat.wsp.dec	9			Matematyczne wspomaganie decyzji
7080	ND-P36	1	lec	Mat.wsp.dec	9			Matematyczne wspomaganie decyzji
7089	SD-P15	1	lec	Sys.inf.prz	15			Systemy informacji przestrzennej
7095	SD-P15	1	lec	Zar.inf	15			Zarządzanie informacjami
7095	SD-P14	1	lec	Zar.inf	15			Zarządzanie informacjami
7098	SD-P14	1	lec	Met.bad.nau	15			Metodologia badań naukowych w inżynierii bezpieczeństwa
7098	SD-P15	1	lec	Met.bad.nau	15			Metodologia badań naukowych w inżynierii bezpieczeństwa
7099	SD-P14	2	lec	Kie.dzi.rat	15			Kierowanie działaniami ratowniczymi
7099	SD-P15	2	lec	Kie.dzi.rat	15			Kierowanie działaniami ratowniczymi
7104	SD-P15	1	lec	Wsp.pro.inż	30			Współczesne problemy inżynierii środowiska
7104	SD-P14	1	lec	Wsp.pro.inż	30			Współczesne problemy inżynierii środowiska
7107	SD-P15	2	lec	Pro.doc.pop	15			Procedura dochodzeń popożarowych
7107	SD-P14	2	lec	Pro.doc.pop	15			Procedura dochodzeń popożarowych
7108	SD-P14	3	lec	Str.ope.rat	15			Strategiczne operacje ratownicze
7108	SD-P15	3	lec	Str.ope.rat	15			Strategiczne operacje ratownicze
7109	SD-P15	3	lec	Noś.kon.war	15			Nośność konstrukcji w warunkach pożaru
7109	SD-P14	3	lec	Noś.kon.war	15			Nośność konstrukcji w warunkach pożaru
7110	SD-P15	3	lec	Rze.prz	15			Rzeczoznawstwo przeciwpożarowe
7110	SD-P14	3	lec	Rze.prz	15			Rzeczoznawstwo przeciwpożarowe
7113	SD-P15	2	lec	Ana.ryz.inz	15			Analiza ryzyka w inżynierii bezpieczeństwa
7113	SD-P14	2	lec	Ana.ryz.inz	15			Analiza ryzyka w inżynierii bezpieczeństwa
7115	SD-P15	1	lec	Met.tec.zar	15			Metody i techniki zarządzania zasobami ludzkimi
7115	SD-P14	1	lec	Met.tec.zar	15			Metody i techniki zarządzania zasobami ludzkimi
7118	SD-P15	1	lec	Mod.poż	15			Modelowanie pożarów
7118	SD-P14	1	lec	Mod.poż	15			Modelowanie pożarów
7120	SD-P15	1	lec	Prz.ope.och	30			Przygotowanie operacyjne w ochronie ludności
7120	SD-P14	1	lec	Prz.ope.och	30			Przygotowanie operacyjne w ochronie ludności
7127	SD-P15	1	lec	Nie.bez.bud	15			Niezawodność i bezpieczeństwo budowli
7127	SD-P14	1	lec	Nie.bez.bud	15			Niezawodność i bezpieczeństwo budowli
7131	SD-P14	2	lec	Zar.inf.kom	15			Zarządzanie infrastrukturą komunalną w sytuacjach kryzysowych
7131	SD-P15	2	lec	Zar.inf.kom	15			Zarządzanie infrastrukturą komunalną w sytuacjach kryzysowych
7133	SD-P14	1	lec	Wsp.zag.ter	15			Współczesne zagrożenia terrorystyczne
7133	SD-P15	1	lec	Wsp.zag.ter	15			Współczesne zagrożenia terrorystyczne
7135	SD-P15	2	lec	Kra.sys.wyk	15			Krajowy system wykrywania skażeń i alarmowania
7135	SD-P14	2	lec	Kra.sys.wyk	15			Krajowy system wykrywania skażeń i alarmowania
7137	SD-P14	1	lec	Mat.wsp.dec	15			Matematyczne wspomaganie decyzji
7137	SD-P15	1	lec	Mat.wsp.dec	15			Matematyczne wspomaganie decyzji
7139	SD-P15	2	lec	Wyb.zag.fil	15			Wybrane zagadnienia z filozofii i etyki
7139	SD-P14	2	lec	Wyb.zag.fil	15			Wybrane zagadnienia z filozofii i etyki
7140	SD-P14	3	lec	Zas.pro.dzi	15			Zasady prowadzenia działalności gospodarczej
7140	SD-P15	3	lec	Zas.pro.dzi	15			Zasady prowadzenia działalności gospodarczej
7141	SD-P15	3	lec	Wsp.med.dzi	15			Współpraca z mediami w działaniach PSP
7141	SD-P14	3	lec	Wsp.med.dzi	15			Współpraca z mediami w działaniach PSP
7143	ND-P36	2	lec	Wyb.zag.fil	9			Wybrane zagadnienia z filozofii i etyki
7143	ND-P37	2	lec	Wyb.zag.fil	9			Wybrane zagadnienia z filozofii i etyki
7144	ND-P37	3	lec	Zas.pro.dzi	9			Zasady prowadzenia działalności gospodarczej
7144	ND-P36	3	lec	Zas.pro.dzi	9			Zasady prowadzenia działalności gospodarczej
7145	ND-P37	3	lec	Wsp.med.dzi	9			Współpraca z mediami w działaniach PSP
7145	ND-P36	3	lec	Wsp.med.dzi	9			Współpraca z mediami w działaniach PSP
7148	Erasmus	3	lec	Era.fire.sci.com	10			Erasmus: Fire Science and Combustion
7150	Erasmus	3	lec	Era.int.saf	15			Erasmus: International Safety and Security Institutions
7152	Erasmus	3	lec	Era.cri.man	30			Erasmus: Crisis Management
7154	Erasmus	3	lec	Era.for.fir.saf	15			Erasmus: Forest Fire Safety
7156	Erasmus	3	lec	Era.civ.eme	30			Erasmus: Civil Emergency Planning
7160	Erasmus	3	lec	Era.civ.protect	30			Erasmus: Civil protection
7161	Erasmus	3	lec	Era.ide.ana.biol	15			Erasmus: Identification and Analysis of Biological Treats
7163	Erasmus	3	lec	Era.intr.fir.mod	6			Erasmus: An Introduction to Fire Modeling
7165	Erasmus	3	lec	Era.int.saf.EU	30			Erasmus: International Safety in the European Union
7166	Erasmus	3	lec	Era.fir.and	30			Erasmus: Fire and explosion hazard assessment
7170	SP-PC20	1	lec	Fizyka	30			Fizyka
7170	SP-PC19	1	lec	Fizyka	30			Fizyka
7171	SP-PC19	1	lec	Matematyka	30			Matematyka
7171	SP-PC20	1	lec	Matematyka	30			Matematyka
7172	SP-PC20	1	lec	Tec.inf	30			Technologie informacyjne
7172	SP-PC19	1	lec	Tec.inf	30			Technologie informacyjne
7175	SP-PC20	2	lec	Ekonomia	30			Ekonomia
7175	SP-PC19	2	lec	Ekonomia	30			Ekonomia
7179	SP-PC19	2	lec	Hyd.prz.zao	30			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
7179	SP-PC20	2	lec	Hyd.prz.zao	30			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
7190	SP-PC20	2	lec	Pod.bud	30			Podstawy budownictwa
7190	SP-PC19	2	lec	Pod.bud	30			Podstawy budownictwa
7191	SP-PC20	1	lec	Chemia	30			Chemia
7191	SP-PC19	1	lec	Chemia	30			Chemia
7192	SP-PC20	1	lec	Fil.ety	30			Filozofia i etyka
7192	SP-PC19	1	lec	Fil.ety	30			Filozofia i etyka
7193	SP-PC20	1	lec	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
7193	SP-PC19	1	lec	Mec.wyt.mat	30			Mechanika i wytrzymałość materiałów
7201	SP-PC19	2	lec	Och.wła.int	15			Ochrona własności intelektualnej
7201	SP-PC20	2	lec	Och.wła.int	15			Ochrona własności intelektualnej
7217	Erasmus	4	lec	Era.Hum.aid	15			Erasmus: Humanitarian aid in international dimension
7221	SP-C19	5	lec	Mod.zag	15			Modelowanie zagrożeń
7223	SP-C19	5	lec	Inf.kry	15			Infrastruktura krytyczna
7225	SP-C19	5	lec	Pra.pra	15			Prawo pracy
7226	SP-C19	5	lec	Pro.sys.bez	15			Projektowanie systemów bezpieczeństwa
7231	SP-C19	5	lec	Zag.ele	15			Zagrożenia elektroenergetyczne
7234	SP-C19	5	lec	Pro.dyp.(w	15			Proseminarium dyplomowe (w tym ochrona własności intelektualnej)
7236	SP-C19	6	lec	Zar.zas.lud	15			Zarządzanie zasobami ludzkimi
7238	SP-C19	6	lec	Mul.tre.dec	15			Multimedialny trening decyzyjny
7240	SP-C19	6	lec	Erg.fiz.bez	15			Ergonomia i fizjologia w bezpieczeństwie pracy
7242	SP-C19	6	lec	Med.kom.mas	15			Media i komunikowanie masowe
7248	SP-C18.IBC	7	lec	Zar.cią.dzi	15			Zarządzanie ciągłością działania
7250	SP-C18.IBC	7	lec	Wyb.zag.eko	15			Wybrane zagadnienia z ekonomii
7253	SP-C18.IBPr	7	lec	Zar.cią.dzi	15			Zarządzanie ciągłością działania
7255	SP-C18.IBPr	7	lec	Wyb.zag.eko	15			Wybrane zagadnienia z ekonomii
7258	SP-C18.IBPr	7	lec	Rat.sys.pie	15			Ratownictwo i systemy pierwszej pomocy w przedsiębiorstwie
7268	SP-PK19	3	lec	Termodynamika	30			Termodynamika
7268	SP-PK20	3	lec	Termodynamika	30			Termodynamika
7269	SP-PK20	3	lec	Pra.kra.mię.lud	30			Prawo krajowe i międzynarodowe w ochronie ludności
7269	SP-PK19	3	lec	Pra.kra.mię.lud	30			Prawo krajowe i międzynarodowe w ochronie ludności
7272	SP-PK19	3	lec	Mon.zag.bez	30			Monitorowanie zagrożeń bezpieczeństwa
7272	SP-PK20	3	lec	Mon.zag.bez	30			Monitorowanie zagrożeń bezpieczeństwa
7273	SP-PK19	3	lec	Org.fun.rat	30			Organizacja i funkcjonowanie ratownictwa i innych systemów bezpieczeństwa
7273	SP-PK20	3	lec	Org.fun.rat	30			Organizacja i funkcjonowanie ratownictwa i innych systemów bezpieczeństwa
7276	SP-PK19	3	lec	Ele.ele.poz	30			Elektrotechnika i elektronika w pożarnictwie
7276	SP-PK20	3	lec	Ele.ele.poz	30			Elektrotechnika i elektronika w pożarnictwie
7281	SP-PK20	4	lec	Psy.soc	15			Psychologia i socjologia
7281	SP-PK19	4	lec	Psy.soc	15			Psychologia i socjologia
7284	SP-PK20	4	lec	Teo.poż	30			Teoria pożarów
7284	SP-PK19	4	lec	Teo.poż	30			Teoria pożarów
7285	SP-PK19	4	lec	Fiz.spa	15			Fizykochemia spalania
7285	SP-PK20	4	lec	Fiz.spa	15			Fizykochemia spalania
7287	SP-PK19	4	lec	Pod.kon.mas	15			Podstawy konstrukcji maszyn
7287	SP-PK20	4	lec	Pod.kon.mas	15			Podstawy konstrukcji maszyn
7289	SP-PK20	4	lec	Tec.sys.zab	30			Techniczne systemy zabezpieczeń
7289	SP-PK19	4	lec	Tec.sys.zab	30			Techniczne systemy zabezpieczeń
7291	SP-PK20	4	lec	Śro.gaś.neu	30			Środki gaśnicze i neutralizujące
7291	SP-PK19	4	lec	Śro.gaś.neu	30			Środki gaśnicze i neutralizujące
7293	SP-PK19	4	lec	Inf.kom	30			Infrastruktura komunalna
7293	SP-PK20	4	lec	Inf.kom	30			Infrastruktura komunalna
7301	SP-PC19	3	lec	Termodynamika	30			Termodynamika
7301	SP-PC20	3	lec	Termodynamika	30			Termodynamika
7302	SP-PC19	3	lec	Pra.kra.mię.lud	30			Prawo krajowe i międzynarodowe w ochronie ludności
7302	SP-PC20	3	lec	Pra.kra.mię.lud	30			Prawo krajowe i międzynarodowe w ochronie ludności
7305	SP-PC20	3	lec	Mon.zag.bez	30			Monitorowanie zagrożeń bezpieczeństwa
7305	SP-PC19	3	lec	Mon.zag.bez	30			Monitorowanie zagrożeń bezpieczeństwa
7306	SP-PC19	3	lec	Org.fun.rat	30			Organizacja i funkcjonowanie ratownictwa i innych systemów bezpieczeństwa
7306	SP-PC20	3	lec	Org.fun.rat	30			Organizacja i funkcjonowanie ratownictwa i innych systemów bezpieczeństwa
7309	SP-PC19	3	lec	Ele.ele.poz	30			Elektrotechnika i elektronika w pożarnictwie
7309	SP-PC20	3	lec	Ele.ele.poz	30			Elektrotechnika i elektronika w pożarnictwie
7318	SP-CBW7	3	lec	Pra.czł.ety	15			Prawa człowieka i etyka zawodowa funkcjonariuszy służb publicznych
7318	SP-CBW8	3	lec	Pra.czł.ety	15			Prawa człowieka i etyka zawodowa funkcjonariuszy służb publicznych
7337	NP-PS48A	3	lec	Termodynamika	18			Termodynamika
7337	NP-PS47A	3	lec	Termodynamika	18			Termodynamika
7338	NP-PS48A	3	lec	Pra.kra.mię.lud	18			Prawo krajowe i międzynarodowe w ochronie ludności
7338	NP-PS47A	3	lec	Pra.kra.mię.lud	18			Prawo krajowe i międzynarodowe w ochronie ludności
7340	NP-PS47A	3	lec	Mon.zag.bez	18			Monitorowanie zagrożeń bezpieczeństwa
7340	NP-PS48A	3	lec	Mon.zag.bez	18			Monitorowanie zagrożeń bezpieczeństwa
7341	NP-PS47A	3	lec	Org.fun.rat	18			Organizacja i funkcjonowanie ratownictwa i innych systemów bezpieczeństwa
7341	NP-PS48A	3	lec	Org.fun.rat	18			Organizacja i funkcjonowanie ratownictwa i innych systemów bezpieczeństwa
7343	NP-PS47A	3	lec	Ele.ele.poz	18			Elektrotechnika i elektronika w pożarnictwie
7343	NP-PS48A	3	lec	Ele.ele.poz	18			Elektrotechnika i elektronika w pożarnictwie
7353	NP-PS47B	3	lec	Termodynamika	18			Termodynamika
7353	NP-PS48B	3	lec	Termodynamika	18			Termodynamika
7354	NP-PS48B	3	lec	Pra.kra.mię.lud	18			Prawo krajowe i międzynarodowe w ochronie ludności
7354	NP-PS47B	3	lec	Pra.kra.mię.lud	18			Prawo krajowe i międzynarodowe w ochronie ludności
7356	NP-PS47B	3	lec	Mon.zag.bez	18			Monitorowanie zagrożeń bezpieczeństwa
7356	NP-PS48B	3	lec	Mon.zag.bez	18			Monitorowanie zagrożeń bezpieczeństwa
7357	NP-PS48B	3	lec	Org.fun.rat	18			Organizacja i funkcjonowanie ratownictwa i innych systemów bezpieczeństwa
7357	NP-PS47B	3	lec	Org.fun.rat	18			Organizacja i funkcjonowanie ratownictwa i innych systemów bezpieczeństwa
7359	NP-PS48B	3	lec	Ele.ele.poz	18			Elektrotechnika i elektronika w pożarnictwie
7359	NP-PS47B	3	lec	Ele.ele.poz	18			Elektrotechnika i elektronika w pożarnictwie
7363	NP-PS47A	4	lec	Psy.soc	9			Psychologia i socjologia
7363	NP-PS48A	4	lec	Psy.soc	9			Psychologia i socjologia
7365	NP-PS48A	4	lec	Teo.poż	18			Teoria pożarów
7365	NP-PS47A	4	lec	Teo.poż	18			Teoria pożarów
7366	NP-PS47A	4	lec	Fiz.spa	9			Fizykochemia spalania
7366	NP-PS48A	4	lec	Fiz.spa	9			Fizykochemia spalania
7368	NP-PS48A	4	lec	Pod.kon.mas	9			Podstawy konstrukcji maszyn
7368	NP-PS47A	4	lec	Pod.kon.mas	9			Podstawy konstrukcji maszyn
7370	NP-PS47A	4	lec	Tec.sys.zab	18			Techniczne systemy zabezpieczeń
7370	NP-PS48A	4	lec	Tec.sys.zab	18			Techniczne systemy zabezpieczeń
7372	NP-PS48A	4	lec	Śro.gaś.neu	18			Środki gaśnicze i neutralizujące
7372	NP-PS47A	4	lec	Śro.gaś.neu	18			Środki gaśnicze i neutralizujące
7374	NP-PS47A	4	lec	Inf.kom	18			Infrastruktura komunalna
7374	NP-PS48A	4	lec	Inf.kom	18			Infrastruktura komunalna
7380	NP-PS48B	4	lec	Psy.soc	9			Psychologia i socjologia
7380	NP-PS47B	4	lec	Psy.soc	9			Psychologia i socjologia
7382	NP-PS48B	4	lec	Teo.poż	18			Teoria pożarów
7382	NP-PS47B	4	lec	Teo.poż	18			Teoria pożarów
7383	NP-PS47B	4	lec	Fiz.spa	9			Fizykochemia spalania
7383	NP-PS48B	4	lec	Fiz.spa	9			Fizykochemia spalania
7385	NP-PS48B	4	lec	Pod.kon.mas	9			Podstawy konstrukcji maszyn
7385	NP-PS47B	4	lec	Pod.kon.mas	9			Podstawy konstrukcji maszyn
7387	NP-PS47B	4	lec	Tec.sys.zab	18			Techniczne systemy zabezpieczeń
7387	NP-PS48B	4	lec	Tec.sys.zab	18			Techniczne systemy zabezpieczeń
7389	NP-PS48B	4	lec	Śro.gaś.neu	18			Środki gaśnicze i neutralizujące
7389	NP-PS47B	4	lec	Śro.gaś.neu	18			Środki gaśnicze i neutralizujące
7391	NP-PS47B	4	lec	Inf.kom	18			Infrastruktura komunalna
7391	NP-PS48B	4	lec	Inf.kom	18			Infrastruktura komunalna
7400	NP-PC23	3	lec	Termodynamika	18			Termodynamika
7400	NP-PC22	3	lec	Termodynamika	18			Termodynamika
7401	NP-PC23	3	lec	Pra.kra.mię.lud	18			Prawo krajowe i międzynarodowe w ochronie ludności
7401	NP-PC22	3	lec	Pra.kra.mię.lud	18			Prawo krajowe i międzynarodowe w ochronie ludności
7404	NP-PC23	3	lec	Mon.zag.bez	18			Monitorowanie zagrożeń bezpieczeństwa
7404	NP-PC22	3	lec	Mon.zag.bez	18			Monitorowanie zagrożeń bezpieczeństwa
7405	NP-PC22	3	lec	Org.fun.rat	18			Organizacja i funkcjonowanie ratownictwa i innych systemów bezpieczeństwa
7405	NP-PC23	3	lec	Org.fun.rat	18			Organizacja i funkcjonowanie ratownictwa i innych systemów bezpieczeństwa
7408	NP-PC22	3	lec	Ele.ele.poz	18			Elektrotechnika i elektronika w pożarnictwie
7408	NP-PC23	3	lec	Ele.ele.poz	18			Elektrotechnika i elektronika w pożarnictwie
7717	SP-PK19	5	lec	Sam.poj.rat	30			Samochody i pojazdy ratownicze
7717	SP-PK20	5	lec	Sam.poj.rat	30			Samochody i pojazdy ratownicze
7718	SP-PK19	5	lec	Sprz.rat.i.gas	30			Sprzęt ratowniczy i gaśniczy
7718	SP-PK20	5	lec	Sprz.rat.i.gas	30			Sprzęt ratowniczy i gaśniczy
7720	SP-PK19	5	lec	Rat.che.i.eko	30			Ratownictwo chemiczne i ekologiczne
7720	SP-PK20	5	lec	Rat.che.i.eko	30			Ratownictwo chemiczne i ekologiczne
7722	SP-PK20	5	lec	Med.kat	15			Medycyna katastrof
7722	SP-PK19	5	lec	Med.kat	15			Medycyna katastrof
7724	SP-PK20	5	lec	Rat.tec	15			Ratownictwo techniczne
7724	SP-PK19	5	lec	Rat.tec	15			Ratownictwo techniczne
7725	SP-PK19	5	lec	Ewa.int	15			Ewakuacja interwencyjna
7725	SP-PK20	5	lec	Ewa.int	15			Ewakuacja interwencyjna
7726	SP-PK19	5	lec	Org.łąc.ala	15			Organizacja łączności i alarmowanie
7726	SP-PK20	5	lec	Org.łąc.ala	15			Organizacja łączności i alarmowanie
7727	SP-PK20	5	lec	Bez.dzi.rat	30			Bezpieczeństwo działań ratowniczych
7727	SP-PK19	5	lec	Bez.dzi.rat	30			Bezpieczeństwo działań ratowniczych
7738	SP-PK20	6	lec	Dzi.gas	30			Działania gaśnicze
7738	SP-PK19	6	lec	Dzi.gas	30			Działania gaśnicze
7747	SP-PK19	6	lec	Tak.dow	30			Taktyka i dowodzenie
7747	SP-PK20	6	lec	Tak.dow	30			Taktyka i dowodzenie
7753	NP-PS48A	5	lec	Sam.poj.rat	18			Samochody i pojazdy ratownicze
7753	NP-PS47A	5	lec	Sam.poj.rat	18			Samochody i pojazdy ratownicze
7754	NP-PS48A	5	lec	Sprz.rat.i.gas	18			Sprzęt ratowniczy i gaśniczy
7754	NP-PS47A	5	lec	Sprz.rat.i.gas	18			Sprzęt ratowniczy i gaśniczy
7756	NP-PS48A	5	lec	Rat.che.i.eko	18			Ratownictwo chemiczne i ekologiczne
7756	NP-PS47A	5	lec	Rat.che.i.eko	18			Ratownictwo chemiczne i ekologiczne
7758	NP-PS47A	5	lec	Med.kat	9			Medycyna katastrof
7758	NP-PS48A	5	lec	Med.kat	9			Medycyna katastrof
7760	NP-PS48A	5	lec	Rat.tec	9			Ratownictwo techniczne
7760	NP-PS47A	5	lec	Rat.tec	9			Ratownictwo techniczne
7761	NP-PS48A	5	lec	Ewa.int	9			Ewakuacja interwencyjna
7761	NP-PS47A	5	lec	Ewa.int	9			Ewakuacja interwencyjna
7762	NP-PS47A	5	lec	Org.łąc.ala	9			Organizacja łączności i alarmowanie
7762	NP-PS48A	5	lec	Org.łąc.ala	9			Organizacja łączności i alarmowanie
7763	NP-PS47A	5	lec	Bez.dzi.rat	18			Bezpieczeństwo działań ratowniczych
7763	NP-PS48A	5	lec	Bez.dzi.rat	18			Bezpieczeństwo działań ratowniczych
7766	SP-PK19	7	lec	Bez.poż.budo	30			Bezpieczeństwo pożarowe budowli
7766	SP-PK20	7	lec	Bez.poż.budo	30			Bezpieczeństwo pożarowe budowli
7768	SP-PK19	7	lec	Ana.ryz.pro	30			Analiza ryzyka w procesach przemysłowych
7768	SP-PK20	7	lec	Ana.ryz.pro	30			Analiza ryzyka w procesach przemysłowych
7770	SP-PK19	7	lec	Met.bad.prz	15			Metodyka badań przyczyn pożarów
7770	SP-PK20	7	lec	Met.bad.prz	15			Metodyka badań przyczyn pożarów
7773	SP-PK19	7	lec	Bez.poż.las	15			Bezpieczeństwo pożarowe lasów
7773	SP-PK20	7	lec	Bez.poż.las	15			Bezpieczeństwo pożarowe lasów
7781	SP-PK20	8	lec	Szk.obr	21			Szkolenie obronne
7781	SP-PK19	8	lec	Szk.obr	21			Szkolenie obronne
7784	SP-PK20	8	lec	Inż.bez.tec	21			Inżynieria bezpieczeństwa technicznego
7784	SP-PK19	8	lec	Inż.bez.tec	21			Inżynieria bezpieczeństwa technicznego
7785	SP-PK19	8	lec	Mię.wsp.rat	14			Międzynarodowa współpraca ratownicza
7785	SP-PK20	8	lec	Mię.wsp.rat	14			Międzynarodowa współpraca ratownicza
7786	SP-PK20	8	lec	Log.wsp.dłu	14			Logistyczne wsparcie długotrwałych działań ratowniczych
7786	SP-PK19	8	lec	Log.wsp.dłu	14			Logistyczne wsparcie długotrwałych działań ratowniczych
7788	SP-PK19	8	lec	Dzi.rat.pod	14			Działania ratownicze podczas klęsk żywiołowych
7788	SP-PK20	8	lec	Dzi.rat.pod	14			Działania ratownicze podczas klęsk żywiołowych
7793	NP-PS48A	6	lec	Dzi.gas	18			Działania gaśnicze
7793	NP-PS47A	6	lec	Dzi.gas	18			Działania gaśnicze
7802	NP-PS47A	6	lec	Tak.dow	18			Taktyka i dowodzenie
7802	NP-PS48A	6	lec	Tak.dow	18			Taktyka i dowodzenie
7804	NP-PS48A	7	lec	Bez.poż.budo	18			Bezpieczeństwo pożarowe budowli
7804	NP-PS47A	7	lec	Bez.poż.budo	18			Bezpieczeństwo pożarowe budowli
7806	NP-PS48A	7	lec	Ana.ryz.pro	18			Analiza ryzyka w procesach przemysłowych
7806	NP-PS47A	7	lec	Ana.ryz.pro	18			Analiza ryzyka w procesach przemysłowych
7808	NP-PS48A	7	lec	Met.bad.prz	9			Metodyka badań przyczyn pożarów
7808	NP-PS47A	7	lec	Met.bad.prz	9			Metodyka badań przyczyn pożarów
7811	NP-PS48A	7	lec	Bez.poż.las	9			Bezpieczeństwo pożarowe lasów
7811	NP-PS47A	7	lec	Bez.poż.las	9			Bezpieczeństwo pożarowe lasów
7816	NP-PS48A	8	lec	Szk.obr	12			Szkolenie obronne
7816	NP-PS47A	8	lec	Szk.obr	12			Szkolenie obronne
7818	NP-PS48A	8	lec	Inż.bez.tec	12			Inżynieria bezpieczeństwa technicznego
7818	NP-PS47A	8	lec	Inż.bez.tec	12			Inżynieria bezpieczeństwa technicznego
7819	NP-PS48A	8	lec	Mię.wsp.rat	9			Międzynarodowa współpraca ratownicza
7819	NP-PS47A	8	lec	Mię.wsp.rat	9			Międzynarodowa współpraca ratownicza
7820	NP-PS47A	8	lec	Log.wsp.dłu	9			Logistyczne wsparcie długotrwałych działań ratowniczych
7820	NP-PS48A	8	lec	Log.wsp.dłu	9			Logistyczne wsparcie długotrwałych działań ratowniczych
7822	NP-PS47A	8	lec	Dzi.rat.pod	9			Działania ratownicze podczas klęsk żywiołowych
7822	NP-PS48A	8	lec	Dzi.rat.pod	9			Działania ratownicze podczas klęsk żywiołowych
7829	NP-PS48B	5	lec	Sam.poj.rat	18			Samochody i pojazdy ratownicze
7829	NP-PS47B	5	lec	Sam.poj.rat	18			Samochody i pojazdy ratownicze
7830	NP-PS47B	5	lec	Sprz.rat.i.gas	18			Sprzęt ratowniczy i gaśniczy
7830	NP-PS48B	5	lec	Sprz.rat.i.gas	18			Sprzęt ratowniczy i gaśniczy
7832	NP-PS48B	5	lec	Rat.che.i.eko	18			Ratownictwo chemiczne i ekologiczne
7832	NP-PS47B	5	lec	Rat.che.i.eko	18			Ratownictwo chemiczne i ekologiczne
7834	NP-PS47B	5	lec	Med.kat	9			Medycyna katastrof
7834	NP-PS48B	5	lec	Med.kat	9			Medycyna katastrof
7836	NP-PS48B	5	lec	Rat.tec	9			Ratownictwo techniczne
7836	NP-PS47B	5	lec	Rat.tec	9			Ratownictwo techniczne
7837	NP-PS47B	5	lec	Ewa.int	9			Ewakuacja interwencyjna
7837	NP-PS48B	5	lec	Ewa.int	9			Ewakuacja interwencyjna
7838	NP-PS48B	5	lec	Org.łąc.ala	9			Organizacja łączności i alarmowanie
7838	NP-PS47B	5	lec	Org.łąc.ala	9			Organizacja łączności i alarmowanie
7839	NP-PS47B	5	lec	Bez.dzi.rat	18			Bezpieczeństwo działań ratowniczych
7839	NP-PS48B	5	lec	Bez.dzi.rat	18			Bezpieczeństwo działań ratowniczych
7849	NP-PS48B	6	lec	Dzi.gas	18			Działania gaśnicze
7849	NP-PS47B	6	lec	Dzi.gas	18			Działania gaśnicze
7858	NP-PS48B	6	lec	Tak.dow	18			Taktyka i dowodzenie
7858	NP-PS47B	6	lec	Tak.dow	18			Taktyka i dowodzenie
7870	NP-PS48B	7	lec	Bez.poż.budo	18			Bezpieczeństwo pożarowe budowli
7870	NP-PS47B	7	lec	Bez.poż.budo	18			Bezpieczeństwo pożarowe budowli
7872	NP-PS48B	7	lec	Ana.ryz.pro	18			Analiza ryzyka w procesach przemysłowych
7872	NP-PS47B	7	lec	Ana.ryz.pro	18			Analiza ryzyka w procesach przemysłowych
7874	NP-PS47B	7	lec	Met.bad.prz	9			Metodyka badań przyczyn pożarów
7874	NP-PS48B	7	lec	Met.bad.prz	9			Metodyka badań przyczyn pożarów
7877	NP-PS47B	7	lec	Bez.poż.las	9			Bezpieczeństwo pożarowe lasów
7877	NP-PS48B	7	lec	Bez.poż.las	9			Bezpieczeństwo pożarowe lasów
7883	NP-PS47B	8	lec	Szk.obr	12			Szkolenie obronne
7883	NP-PS48B	8	lec	Szk.obr	12			Szkolenie obronne
7885	NP-PS48B	8	lec	Inż.bez.tec	12			Inżynieria bezpieczeństwa technicznego
7885	NP-PS47B	8	lec	Inż.bez.tec	12			Inżynieria bezpieczeństwa technicznego
7886	NP-PS48B	8	lec	Mię.wsp.rat	9			Międzynarodowa współpraca ratownicza
7886	NP-PS47B	8	lec	Mię.wsp.rat	9			Międzynarodowa współpraca ratownicza
7887	NP-PS47B	8	lec	Log.wsp.dłu	9			Logistyczne wsparcie długotrwałych działań ratowniczych
7887	NP-PS48B	8	lec	Log.wsp.dłu	9			Logistyczne wsparcie długotrwałych działań ratowniczych
7889	NP-PS47B	8	lec	Dzi.rat.pod	9			Działania ratownicze podczas klęsk żywiołowych
7889	NP-PS48B	8	lec	Dzi.rat.pod	9			Działania ratownicze podczas klęsk żywiołowych
8422	SP-C19	7	lec	Zar.cią.dzi	15			Zarządzanie ciągłością działania
8424	SP-C19	7	lec	Śro.och.zbi	15			Środki ochrony zbiorowej i indywidualnej
8426	SP-C19	7	lec	Zag.poż.wyb	15			Zagrożenia pożarowe i wybuchowe
8428	SP-C19	7	lec	Wyp.eko.BHP	15			Wypadkoznastwo i ekonomika BHP
8430	SP-C19	7	lec	Rat.sys.pie	15			Ratownictwo i systemy pierwszej pomocy w przedsiębiorstwie
9242	NP-CBW6	5	lec	Zag.cyw.tec	18			Zagrożenia cywilizacyjno - techniczne
9244	NP-CBW6	5	lec	Zag.nat	18			Zagrożenia naturalne
9246	NP-CBW6	5	lec	Pod.pra.cel	18			Podstawy prawne i cele działania obrony cywilnej
9248	NP-CBW6	5	lec	Pom.hum.wym	9			Pomoc humanitarna w wymiarze międzynarodowym
9250	NP-CBW6	5	lec	Org.poz.och	18			Organizacje pozarządowe w ochronie ludności
9252	NP-CBW6	5	lec	Słu.pań.och	18			Służby państwowe w ochronie ludności
9255	NP-CBW6	6	lec	Pow.Sys.Och	18			Powszechny System Ochrony Ludności
9257	NP-CBW6	6	lec	Rat.ewa.lud	9			Ratownictwo i ewakuacja ludności i mienia
9259	NP-CBW6	6	lec	Org.obr.cyw	9			Organizacja obrony cywilnej i obrony narodowej
9261	NP-CBW6	6	lec	Sys.wyk.ska	9			Systemy wykrywania skażeń i alarmowania
9514	SP-C19	5	lec	Mik.śro.pra	15			Mikroklimat środowiska pracy
3557	SD-BW4	3	exc	Wsp.mię.bez	20			Współpraca międzynarodowa w bezpieczeństwie wewnętrznym
3559	SD-BW3	1	exc	Org.fun.adm.pub	30			Organizacja i funkcjonowanie administracji publicznej
3559	SD-BW4	1	exc	Org.fun.adm.pub	30			Organizacja i funkcjonowanie administracji publicznej
3659	SP-CBW6	3	exc	Ins.źró.pra	30			Instytucje i źródła prawa UE
3681	SD-BW3	3	exc	Pra.zawodowe	80			Praktyki zawodowe
3681	SD-BW4	3	exc	Pra.zawodowe	80			Praktyki zawodowe
3778	SP-CBW5	3	exc	Pos.adm.cyw	30			Postępowanie administracyjne i cywilne
3778	SP-CBW6	3	exc	Pos.adm.cyw	30			Postępowanie administracyjne i cywilne
3842	SP-CBW5	3	exc	Bez.spo.lok	15			Bezpieczeństwo społeczności lokalnych i kształtowanie bezpiecznych przestrzeni
3842	SP-CBW6	3	exc	Bez.spo.lok	15			Bezpieczeństwo społeczności lokalnych i kształtowanie bezpiecznych przestrzeni
3884	SD-BW4	1	exc	Str.bez.wew	15			Strategie bezpieczeństwa wewnętrznego
3884	SD-BW3	1	exc	Str.bez.wew	15			Strategie bezpieczeństwa wewnętrznego
3906	SP-CBW6	3	exc	Pla.cyw	15			Planowanie cywilne
3906	SP-CBW5	3	exc	Pla.cyw	15			Planowanie cywilne
3907	SP-CBW5	1	exc	Org.i.zar	15			Organizacja i zarządzanie
3907	SP-CBW6	1	exc	Org.i.zar	15			Organizacja i zarządzanie
3916	SP-PK16	2	exc	Jęz.ang	30			Język angielski
3916	SP-PK15	2	exc	Jęz.ang	30			Język angielski
3916	SP-PK17	2	exc	Jęz.ang	30			Język angielski
3916	SP-PK18	2	exc	Jęz.ang	30			Język angielski
3983	SP-CBW5	3	exc	Sys.ins.bez	30			Systemy i instytucje bezpieczeństwa wewnętrznego
3983	SP-CBW6	3	exc	Sys.ins.bez	30			Systemy i instytucje bezpieczeństwa wewnętrznego
3984	SP-CBW6	3	exc	Zar.kry	15			Zarządzanie kryzysowe
3984	SP-CBW5	3	exc	Zar.kry	15			Zarządzanie kryzysowe
3987	SP-CBW5	1	exc	Erg.fiz.bez	15			Ergonomia i fizjologia w bezpieczeństwie pracy
3987	SP-CBW6	1	exc	Erg.fiz.bez	15			Ergonomia i fizjologia w bezpieczeństwie pracy
3993	SP-CBW5	1	exc	Och.wła.int	15			Ochrona własności intelektualnej
3993	SP-CBW6	1	exc	Och.wła.int	15			Ochrona własności intelektualnej
3997	SP-CBW6	4	exc	Psy.soc	15			Psychologia i socjologia
3997	SP-CBW5	4	exc	Psy.soc	15			Psychologia i socjologia
3999	SP-CBW5	1	exc	Org.fun.adm.rzą	15			Organizacja i funkcjonowanie administracji rządowej
4147	SP-PK17	3	exc	Prz.kon	30			Przygotowanie kondycyjne
4147	SP-PK18	3	exc	Prz.kon	30			Przygotowanie kondycyjne
4148	SP-PK18	4	exc	Prz.kon	30			Przygotowanie kondycyjne
4148	SP-PK15	4	exc	Prz.kon	30			Przygotowanie kondycyjne
4148	SP-PK17	4	exc	Prz.kon	30			Przygotowanie kondycyjne
4148	SP-PK16	4	exc	Prz.kon	30			Przygotowanie kondycyjne
4149	SP-PK16	5	exc	Prz.kon	30			Przygotowanie kondycyjne
4149	SP-PK15	5	exc	Prz.kon	30			Przygotowanie kondycyjne
4149	SP-PK18	5	exc	Prz.kon	30			Przygotowanie kondycyjne
4149	SP-PK17	5	exc	Prz.kon	30			Przygotowanie kondycyjne
4150	SP-PK18	6	exc	Prz.kon	30			Przygotowanie kondycyjne
4150	SP-PK16	6	exc	Prz.kon	30			Przygotowanie kondycyjne
4150	SP-PK15	6	exc	Prz.kon	30			Przygotowanie kondycyjne
4150	SP-PK17	6	exc	Prz.kon	30			Przygotowanie kondycyjne
4151	SP-PK17	7	exc	Prz.kon	30			Przygotowanie kondycyjne
4151	SP-PK18	7	exc	Prz.kon	30			Przygotowanie kondycyjne
4151	SP-PK15	7	exc	Prz.kon	30			Przygotowanie kondycyjne
4151	SP-PK16	7	exc	Prz.kon	30			Przygotowanie kondycyjne
4152	SP-PK15	8	exc	Prz.kon	14			Przygotowanie kondycyjne
4152	SP-PK16	8	exc	Prz.kon	14			Przygotowanie kondycyjne
4152	SP-PK17	8	exc	Prz.kon	14			Przygotowanie kondycyjne
4152	SP-PK18	8	exc	Prz.kon	14			Przygotowanie kondycyjne
4157	SP-PK18	1	exc	Matematyka	45			Matematyka
4157	SP-PK15	1	exc	Matematyka	45			Matematyka
4242	SP-PK17	6	exc	Słu.wew.cer	15			Służba wewnętrzna i ceremoniał pożarniczy
4243	SP-PK15	7	exc	Słu.wew.cer	15			Służba wewnętrzna i ceremoniał pożarniczy
4243	SP-PK17	7	exc	Słu.wew.cer	15			Służba wewnętrzna i ceremoniał pożarniczy
4243	SP-PK18	7	exc	Słu.wew.cer	15			Służba wewnętrzna i ceremoniał pożarniczy
4243	SP-PK16	7	exc	Słu.wew.cer	15			Służba wewnętrzna i ceremoniał pożarniczy
4274	ND-P34	1	exc	Jęz.ang	9			Język angielski
4274	ND-P35	1	exc	Jęz.ang	9			Język angielski
4275	ND-P35	2	exc	Jęz.ang	18			Język angielski
4275	ND-P34	2	exc	Jęz.ang	18			Język angielski
4278	ND-P34	1	exc	Mat.wsp.dec	18			Matematyczne wspomaganie decyzji
4278	ND-P35	1	exc	Mat.wsp.dec	18			Matematyczne wspomaganie decyzji
4279	ND-P34	1	exc	Sta.opi	18			Statystyka opisowa
4279	ND-P35	1	exc	Sta.opi	18			Statystyka opisowa
4281	ND-P34	1	exc	Zas.now.tec	18			Zastosowanie nowoczesnych technik w inżynierii bezpieczeństwa
4281	ND-P35	1	exc	Zas.now.tec	18			Zastosowanie nowoczesnych technik w inżynierii bezpieczeństwa
4283	ND-P34	1	exc	Mod.poż	18			Modelowanie pożarów
4283	ND-P35	1	exc	Mod.poż	18			Modelowanie pożarów
4285	ND-P35	2	exc	Ana.sku.wyb	18			Analiza skutków wybuchu
4285	ND-P34	2	exc	Ana.sku.wyb	18			Analiza skutków wybuchu
4288	ND-P34	2	exc	Sem.mag	9			Seminarium magisterskie
4288	ND-P35	2	exc	Sem.mag	9			Seminarium magisterskie
4289	SP-PC15	1	exc	Jęz.ang	30			Język angielski
4289	SP-PC16	1	exc	Jęz.ang	30			Język angielski
4289	SP-PC17	1	exc	Jęz.ang	30			Język angielski
4289	SP-PC18	1	exc	Jęz.ang	30			Język angielski
4290	SP-PC15	2	exc	Jęz.ang	30			Język angielski
4290	SP-PC17	2	exc	Jęz.ang	30			Język angielski
4290	SP-PC16	2	exc	Jęz.ang	30			Język angielski
4290	SP-PC18	2	exc	Jęz.ang	30			Język angielski
4291	SP-PC15	3	exc	Jęz.ang	30			Język angielski
4291	SP-PC18	3	exc	Jęz.ang	30			Język angielski
4291	SP-PC16	3	exc	Jęz.ang	30			Język angielski
4291	SP-PC17	3	exc	Jęz.ang	30			Język angielski
4292	SP-PC16	4	exc	Jęz.ang	30			Język angielski
4292	SP-PC15	4	exc	Jęz.ang	30			Język angielski
4292	SP-PC17	4	exc	Jęz.ang	30			Język angielski
4292	SP-PC18	4	exc	Jęz.ang	30			Język angielski
4294	SP-PC17	4	exc	Psy.soc	15			Psychologia i socjologia
4294	SP-PC16	4	exc	Psy.soc	15			Psychologia i socjologia
4294	SP-PC18	4	exc	Psy.soc	15			Psychologia i socjologia
4545	NP-PC21	4	exc	Psy.soc	9			Psychologia i socjologia
4545	NP-PC20	4	exc	Psy.soc	9			Psychologia i socjologia
4551	NP-PC19	1	exc	Matematyka	32			Matematyka
4551	NP-PC20	1	exc	Matematyka	32			Matematyka
4551	NP-PC21	1	exc	Matematyka	32			Matematyka
4551	NP-PC18	1	exc	Matematyka	32			Matematyka
4552	NP-PC18	2	exc	Matematyka	32			Matematyka
4552	NP-PC19	2	exc	Matematyka	32			Matematyka
4552	NP-PC21	2	exc	Matematyka	32			Matematyka
4552	NP-PC20	2	exc	Matematyka	32			Matematyka
4554	NP-PC18	1	exc	Fizyka	16			Fizyka
4554	NP-PC21	1	exc	Fizyka	16			Fizyka
4554	NP-PC20	1	exc	Fizyka	16			Fizyka
4554	NP-PC19	1	exc	Fizyka	16			Fizyka
4557	NP-PC18	1	exc	Chemia	18			Chemia
4557	NP-PC20	1	exc	Chemia	18			Chemia
4557	NP-PC21	1	exc	Chemia	18			Chemia
4557	NP-PC19	1	exc	Chemia	18			Chemia
4558	NP-PC20	2	exc	Chemia	24			Chemia
4558	NP-PC21	2	exc	Chemia	24			Chemia
4558	NP-PC19	2	exc	Chemia	24			Chemia
4558	NP-PC18	2	exc	Chemia	24			Chemia
4660	NP-PS45	1	exc	Matematyka	32			Matematyka
4660	NP-PS44	1	exc	Matematyka	32			Matematyka
4661	NP-PS45	2	exc	Matematyka	32			Matematyka
4661	NP-PS46	2	exc	Matematyka	32			Matematyka
4661	NP-PS43	2	exc	Matematyka	32			Matematyka
4661	NP-PS44	2	exc	Matematyka	32			Matematyka
4663	NP-PS43	1	exc	Fizyka	16			Fizyka
4663	NP-PS46	1	exc	Fizyka	16			Fizyka
4663	NP-PS44	1	exc	Fizyka	16			Fizyka
4663	NP-PS45	1	exc	Fizyka	16			Fizyka
4930	SP-C17.IBC	5	exc	Sku.zag.bio	15			Skutki zagrożeń biologicznych i ekologicznych
4934	SP-C17.IBC	5	exc	Inf.kry	15			Infrastruktura krytyczna
4935	SP-C17.IBC	5	exc	Prosem.dyp	15			Proseminarium dyplomowe
4937	SP-C17.IBC	5	exc	Ele.teo.dec	15			Elementy teorii decyzji
4939	SP-C17.IBC	5	exc	Zar.kry	30			Zarządzanie kryzysowe
4943	SP-C17.IBC	5	exc	Int.dzi.bez	15			Integracja działań bezpieczeństwa cywilnego
4990	SP-CBW6.ZB	5	exc	Sem.dyp	30			Seminarium dyplomowe
4990	SP-CBW4.ZB	5	exc	Sem.dyp	30			Seminarium dyplomowe
4993	SP-CBW4.ZB	5	exc	Med.kom.spo	30			Media i komunikowanie społeczne
4993	SP-CBW6.ZB	5	exc	Med.kom.spo	30			Media i komunikowanie społeczne
4995	SP-CBW6.ZB	5	exc	Int.sił.śro.zar	15			Integracja sił i środków w zarządzaniu bezpieczeństwem
4995	SP-CBW4.ZB	5	exc	Int.sił.śro.zar	15			Integracja sił i środków w zarządzaniu bezpieczeństwem
5255	SP-C18.IBC	3	exc	Pra.kra.mię.lud	30			Prawo krajowe i międzynarodowe w ochronie ludności
5257	SP-C18.IBC	3	exc	Org.fun.sys	15			Organizacja i funkcjonowanie systemów bezpieczeństwa
5261	SP-C18.IBC	3	exc	Sku.zag.śro	30			Skutki zagrożeń środowiska naturalnego
5265	SP-C18.IBC	3	exc	Sku.zag.spo.eko	15			Skutki zagrożeń społeczno - ekonomicznych
5513	SP-PC18	3	exc	Jęz.nie	30			Język niemiecki
5513	SP-PC16	3	exc	Jęz.nie	30			Język niemiecki
5513	SP-PC15	3	exc	Jęz.nie	30			Język niemiecki
5513	SP-PC17	3	exc	Jęz.nie	30			Język niemiecki
5518	SP-PC17	4	exc	Jęz.nie	30			Język niemiecki
5518	SP-PC16	4	exc	Jęz.nie	30			Język niemiecki
5518	SP-PC18	4	exc	Jęz.nie	30			Język niemiecki
5518	SP-PC15	4	exc	Jęz.nie	30			Język niemiecki
5520	SP-PC16	5	exc	Jęz.nie	30			Język niemiecki
5520	SP-PC18	5	exc	Jęz.nie	30			Język niemiecki
5520	SP-PC17	5	exc	Jęz.nie	30			Język niemiecki
5520	SP-PC15	5	exc	Jęz.nie	30			Język niemiecki
5523	SP-PC18	6	exc	Jęz.nie	30			Język niemiecki
5523	SP-PC16	6	exc	Jęz.nie	30			Język niemiecki
5523	SP-PC17	6	exc	Jęz.nie	30			Język niemiecki
5523	SP-PC15	6	exc	Jęz.nie	30			Język niemiecki
5526	SP-CBW5	2	exc	Jęz.ang	30			Język angielski
5526	SP-CBW6	2	exc	Jęz.ang	30			Język angielski
5529	SP-CBW6	2	exc	Wyc.fiz	30			Wychowanie fizyczne
5529	SP-CBW5	2	exc	Wyc.fiz	30			Wychowanie fizyczne
5531	SP-CBW5	2	exc	Org.i.zar	15			Organizacja i zarządzanie
5531	SP-CBW6	2	exc	Org.i.zar	15			Organizacja i zarządzanie
5533	SP-CBW5	2	exc	Nau.pań.pra	30			Nauki o państwie i prawie
5567	SP-CBW6	4	exc	Prosem.dyp	15			Proseminarium dyplomowe
5568	SP-CBW5	4	exc	Praktyka	120			Praktyka
5568	SP-CBW6	4	exc	Praktyka	120			Praktyka
5572	NP-PS43	1	exc	Jęz.nie	16			Język niemiecki
5572	NP-PS46	1	exc	Jęz.nie	16			Język niemiecki
5572	NP-PS45	1	exc	Jęz.nie	16			Język niemiecki
5572	NP-PS44	1	exc	Jęz.nie	16			Język niemiecki
5573	NP-PS45	1	exc	Jęz.ros	16			Język rosyjski
5573	NP-PS44	1	exc	Jęz.ros	16			Język rosyjski
5573	NP-PS43	1	exc	Jęz.ros	16			Język rosyjski
5573	NP-PS46	1	exc	Jęz.ros	16			Język rosyjski
5574	NP-PS45	2	exc	Jęz.nie	16			Język niemiecki
5574	NP-PS44	2	exc	Jęz.nie	16			Język niemiecki
5574	NP-PS43	2	exc	Jęz.nie	16			Język niemiecki
5574	NP-PS46	2	exc	Jęz.nie	16			Język niemiecki
5575	NP-PS45	2	exc	Jęz.ros	16			Język rosyjski
5575	NP-PS44	2	exc	Jęz.ros	16			Język rosyjski
5575	NP-PS46	2	exc	Jęz.ros	16			Język rosyjski
5575	NP-PS43	2	exc	Jęz.ros	16			Język rosyjski
5579	NP-PS43	3	exc	Jęz.nie	16			Język niemiecki
5579	NP-PS46	3	exc	Jęz.nie	16			Język niemiecki
5579	NP-PS45	3	exc	Jęz.nie	16			Język niemiecki
5579	NP-PS44	3	exc	Jęz.nie	16			Język niemiecki
5580	NP-PS46	3	exc	Jęz.ros	16			Język rosyjski
5580	NP-PS44	3	exc	Jęz.ros	16			Język rosyjski
5580	NP-PS45	3	exc	Jęz.ros	16			Język rosyjski
5580	NP-PS43	3	exc	Jęz.ros	16			Język rosyjski
5585	NP-PS46	4	exc	Jęz.nie	16			Język niemiecki
5585	NP-PS45	4	exc	Jęz.nie	16			Język niemiecki
5585	NP-PS44	4	exc	Jęz.nie	16			Język niemiecki
5585	NP-PS43	4	exc	Jęz.nie	16			Język niemiecki
5586	NP-PS45	4	exc	Jęz.ros	16			Język rosyjski
5586	NP-PS44	4	exc	Jęz.ros	16			Język rosyjski
5586	NP-PS43	4	exc	Jęz.ros	16			Język rosyjski
5586	NP-PS46	4	exc	Jęz.ros	16			Język rosyjski
5587	NP-PS45	5	exc	Jęz.nie	16			Język niemiecki
5587	NP-PS46	5	exc	Jęz.nie	16			Język niemiecki
5587	NP-PS43	5	exc	Jęz.nie	16			Język niemiecki
5587	NP-PS44	5	exc	Jęz.nie	16			Język niemiecki
5588	NP-PS44	5	exc	Jęz.ros	16			Język rosyjski
5588	NP-PS46	5	exc	Jęz.ros	16			Język rosyjski
5588	NP-PS43	5	exc	Jęz.ros	16			Język rosyjski
5588	NP-PS45	5	exc	Jęz.ros	16			Język rosyjski
5590	NP-PS45	6	exc	Jęz.nie	16			Język niemiecki
5590	NP-PS43	6	exc	Jęz.nie	16			Język niemiecki
5590	NP-PS44	6	exc	Jęz.nie	16			Język niemiecki
5590	NP-PS46	6	exc	Jęz.nie	16			Język niemiecki
5591	NP-PS44	6	exc	Jęz.ros	16			Język rosyjski
5591	NP-PS46	6	exc	Jęz.ros	16			Język rosyjski
5591	NP-PS45	6	exc	Jęz.ros	16			Język rosyjski
5591	NP-PS43	6	exc	Jęz.ros	16			Język rosyjski
5593	NP-PS45	7	exc	Jęz.nie	14			Język niemiecki
5593	NP-PS46	7	exc	Jęz.nie	14			Język niemiecki
5593	NP-PS43	7	exc	Jęz.nie	14			Język niemiecki
5593	NP-PS44	7	exc	Jęz.nie	14			Język niemiecki
5594	NP-PS43	7	exc	Jęz.ros	14			Język rosyjski
5594	NP-PS45	7	exc	Jęz.ros	14			Język rosyjski
5594	NP-PS44	7	exc	Jęz.ros	14			Język rosyjski
5594	NP-PS46	7	exc	Jęz.ros	14			Język rosyjski
5595	NP-PS44	8	exc	Jęz.nie	8			Język niemiecki
5595	NP-PS43	8	exc	Jęz.nie	8			Język niemiecki
5595	NP-PS45	8	exc	Jęz.nie	8			Język niemiecki
5595	NP-PS46	8	exc	Jęz.nie	8			Język niemiecki
5596	NP-PS46	8	exc	Jęz.ros	8			Język rosyjski
5621	NP-PC19	7	exc	Jęz.ros	14			Język rosyjski
5621	NP-PC18	7	exc	Jęz.ros	14			Język rosyjski
5621	NP-PC20	7	exc	Jęz.ros	14			Język rosyjski
5623	NP-PC18	8	exc	Jęz.ros	8			Język rosyjski
5623	NP-PC21	8	exc	Jęz.ros	8			Język rosyjski
5623	NP-PC19	8	exc	Jęz.ros	8			Język rosyjski
5623	NP-PC20	8	exc	Jęz.ros	8			Język rosyjski
5624	ND-P35	1	exc	Jęz.nie	9			Język niemiecki
5624	ND-P34	1	exc	Jęz.nie	9			Język niemiecki
5625	ND-P35	1	exc	Jęz.ros	9			Język rosyjski
5625	ND-P34	1	exc	Jęz.ros	9			Język rosyjski
5626	ND-P34	2	exc	Jęz.nie	18			Język niemiecki
5626	ND-P35	2	exc	Jęz.nie	18			Język niemiecki
5627	ND-P34	2	exc	Jęz.ros	18			Język rosyjski
5627	ND-P35	2	exc	Jęz.ros	18			Język rosyjski
5637	SP-CBW6	4	exc	Zar.kry	15			Zarządzanie kryzysowe
5637	SP-CBW5	4	exc	Zar.kry	15			Zarządzanie kryzysowe
5639	ND-BW4	2	exc	Fil.bez	9			Filozofia bezpieczeństwa
5641	ND-BW4	2	exc	Poz.ins.org	9			Pozarządowe instytucje i organizacje bezpieczeństwa
5643	ND-BW4	2	exc	Met.bad.nad	9			Metodologia badań nad bezpieczeństwem
5645	ND-BW4	2	exc	Syt.kry.kry	9			Sytuacje kryzysowe, kryzysy i patologie społeczne
5829	SP-CBW4.OL	6	exc	Sys.wyk.ska	15			Systemy wykrywania skażeń i alarmowania
5837	SP-C18.IBPr	3	exc	Sku.zag.spo.eko	15			Skutki zagrożeń społeczno - ekonomicznych
5839	SP-C18.IBPr	3	exc	Dzi.pro	15			Działania profilaktyczne
5841	SP-C18.IBPr	4	exc	Pył.śro.pra	30			Pyły w środowisku pracy
5845	SP-C18.IBPr	3	exc	Mas.urz.pro	30			Maszyny i urządzenia produkcyjne
5846	SP-C18.IBPr	3	exc	Wypadkozna	15			Wypadkoznastwo
5849	SP-C18.IBPr	3	exc	Jęz.nie	30			Język niemiecki
5850	SP-C18.IBPr	3	exc	Jęz.ang	30			Język angielski
5851	SP-C18.IBPr	4	exc	Jęz.nie	30			Język niemiecki
5852	SP-C18.IBPr	4	exc	Jęz.ang	30			Język angielski
5853	SP-C18.IBPr	4	exc	Ana.ryz	30			Analiza ryzyka
6174	NP-C16	5	exc	Sku.zag.bio	8			Skutki zagrożeń biologicznych i ekologicznych
6178	NP-C16	5	exc	Inf.kry	8			Infrastruktura krytyczna
6179	NP-C16	5	exc	Prosem.dyp	8			Proseminarium dyplomowe
6181	NP-C16	5	exc	Śro.och.ind	8			Środki ochrony indywidualnej i zbiorowej
6183	NP-C16	5	exc	Pra.zmi	8			Praca zmianowa
6185	NP-C16	5	exc	Zag.poż.wyb	8			Zagrożenia pożarowe i wybuchowe
6188	NP-C16	5	exc	Mik.śro.pra	8			Mikroklimat środowiska pracy
6189	NP-C16	6	exc	Jęz.ang	24			Język angielski
6194	SP-CBW6	5	exc	Sem.dyp	30			Seminarium dyplomowe
6194	SP-CBW5	5	exc	Sem.dyp	30			Seminarium dyplomowe
6196	NP-C16	6	exc	Erg.fiz.bez	16			Ergonomia i fizjologia w bezpieczeństwie pracy
6206	NP-C16	6	exc	Zar.zas.lud	8			Zarządzanie zasobami ludzkimi
6208	NP-C16	6	exc	Bhp.obi.inf	8			BHP w obiektach infrastruktury krytycznej
6212	NP-C16	6	exc	Zag.ele	8			Zagrożenia elektroenergetyczne
6215	NP-C16	6	exc	Pro.opt.wid	8			Promieniowanie optyczne i widzialne
6217	NP-C16	6	exc	Oce.ryz.zaw	8			Ocena ryzyka zawodowego w systemie zarządzania bezpieczeństwem pracy
6219	NP-C16	6	exc	Pra.zawodowe	160			Praktyki zawodowe
6220	NP-C16	6	exc	Sem.dyp	16			Seminarium dyplomowe
6369	SP-C18.IBPr	6	exc	Sem.dyp	30			Seminarium dyplomowe
6371	SP-C18.IBPr	6	exc	Bhp.obi.inf	15			BHP w obiektach infrastruktury krytycznej
6375	SP-C18.IBPr	6	exc	Zag.ele	15			Zagrożenia elektroenergetyczne
6513	SP-PK19	1	exc	Wyc.fiz	30			Wychowanie fizyczne
6513	SP-PK20	1	exc	Wyc.fiz	30			Wychowanie fizyczne
6517	NP-PS47A	1	exc	Jęz.ros	18			Język rosyjski
6517	NP-PS48A	1	exc	Jęz.ros	18			Język rosyjski
6526	NP-PS48A	2	exc	Jęz.nie	18			Język niemiecki
6526	NP-PS47A	2	exc	Jęz.nie	18			Język niemiecki
6536	NP-PS48A	2	exc	Jęz.ros	18			Język rosyjski
6536	NP-PS47A	2	exc	Jęz.ros	18			Język rosyjski
6537	NP-PS47A	2	exc	Matematyka	32			Matematyka
6537	NP-PS48A	2	exc	Matematyka	32			Matematyka
6547	NP-PS48A	2	exc	Jęz.ang	18			Język angielski
6547	NP-PS47A	2	exc	Jęz.ang	18			Język angielski
6548	NP-PS47A	1	exc	Chemia	18			Chemia
6548	NP-PS48A	1	exc	Chemia	18			Chemia
6549	NP-PS47A	2	exc	Chemia	18			Chemia
6549	NP-PS48A	2	exc	Chemia	18			Chemia
6556	NP-PS48A	2	exc	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
6556	NP-PS47A	2	exc	Mec.wyt.mat	18			Mechanika i wytrzymałość materiałów
6576	NP-PS47A	1	exc	Rys.tec	18			Rysunek techniczny
6576	NP-PS48A	1	exc	Rys.tec	18			Rysunek techniczny
6654	NP-PS47B	2	exc	Hyd.prz.zao	18			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
6657	NP-PS47B	1	exc	Fizyka	18			Fizyka
6660	NP-PS47B	1	exc	Matematyka	32			Matematyka
6660	NP-PS48B	1	exc	Matematyka	32			Matematyka
6663	NP-PS47B	1	exc	Jęz.ang	18			Język angielski
6663	NP-PS48B	1	exc	Jęz.ang	18			Język angielski
6667	NP-PC22	1	exc	Jęz.ros	18			Język rosyjski
6667	NP-PC23	1	exc	Jęz.ros	18			Język rosyjski
6697	SP-PK19	1	exc	Jęz.nie	30			Język niemiecki
6698	SP-PK20	1	exc	Jęz.ros	30			Język rosyjski
6698	SP-PK19	1	exc	Jęz.ros	30			Język rosyjski
6699	SP-PK20	2	exc	Jęz.nie	30			Język niemiecki
6699	SP-PK19	2	exc	Jęz.nie	30			Język niemiecki
6700	SP-PK20	2	exc	Jęz.ros	30			Język rosyjski
6700	SP-PK19	2	exc	Jęz.ros	30			Język rosyjski
6703	ND-BW6	2	exc	Poz.ins.org	9			Pozarządowe instytucje i organizacje bezpieczeństwa
6703	ND-BW5	2	exc	Poz.ins.org	9			Pozarządowe instytucje i organizacje bezpieczeństwa
6722	ND-BW6	1	exc	Str.bez.wew	9			Strategie bezpieczeństwa wewnętrznego
6722	ND-BW5	1	exc	Str.bez.wew	9			Strategie bezpieczeństwa wewnętrznego
6727	ND-BW5	1	exc	Edu.dla.bez	9			Edukacja dla bezpieczeństwa
6727	ND-BW6	1	exc	Edu.dla.bez	9			Edukacja dla bezpieczeństwa
6729	ND-BW5	1	exc	Org.fun.adm.pub	18			Organizacja i funkcjonowanie administracji publicznej
6729	ND-BW6	1	exc	Org.fun.adm.pub	18			Organizacja i funkcjonowanie administracji publicznej
6731	ND-BW6	3	exc	Zas.log.bez	18			Zasilanie logistyczne w bezpieczeństwie
6731	ND-BW5	3	exc	Zas.log.bez	18			Zasilanie logistyczne w bezpieczeństwie
6732	ND-BW6	2	exc	Syt.kry.kry	9			Sytuacje kryzysowe, kryzysy i patologie społeczne
6732	ND-BW5	2	exc	Syt.kry.kry	9			Sytuacje kryzysowe, kryzysy i patologie społeczne
6768	ND-BW5	3	exc	Sił.zbr.bez	9			Siły Zbrojne w bezpieczeństwie wewnętrznym
6768	ND-BW6	3	exc	Sił.zbr.bez	9			Siły Zbrojne w bezpieczeństwie wewnętrznym
6774	SD-BW6	2	exc	Wyc.fiz	20			Wychowanie fizyczne
6774	SD-BW5	2	exc	Wyc.fiz	20			Wychowanie fizyczne
6777	SD-BW5	1	exc	Psy.spo	20			Psychologia społeczna
6777	SD-BW6	1	exc	Psy.spo	20			Psychologia społeczna
6778	SD-BW6	3	exc	Proseminarium	25			Proseminarium
6778	SD-BW5	3	exc	Proseminarium	25			Proseminarium
6781	SD-BW6	3	exc	Inf.kry	45			Infrastruktura krytyczna
6781	SD-BW5	3	exc	Inf.kry	45			Infrastruktura krytyczna
6782	SD-BW5	1	exc	Wyc.fiz	15			Wychowanie fizyczne
6782	SD-BW6	1	exc	Wyc.fiz	15			Wychowanie fizyczne
6783	SD-BW6	3	exc	Jęz.ang	40			Język angielski
6783	SD-BW5	3	exc	Jęz.ang	40			Język angielski
6784	SD-BW5	2	exc	Syt.kry.kry	35			Sytuacje kryzysowe, kryzysy i patologie społeczne
6921	SP-CBW8	2	exc	Org.fun.adm.pub	15			Organizacja i funkcjonowanie administracji publicznej
6925	SP-CBW7	4	exc	Wsp.sys.pol	15			Współczesne systemy polityczne
6925	SP-CBW8	4	exc	Wsp.sys.pol	15			Współczesne systemy polityczne
6926	SP-CBW7	3	exc	Jęz.ang	30			Język angielski
6926	SP-CBW8	3	exc	Jęz.ang	30			Język angielski
6942	SP-CBW8	1	exc	Tec.inf	15			Technologie informacyjne
6942	SP-CBW7	1	exc	Tec.inf	15			Technologie informacyjne
6943	SP-CBW8	2	exc	Pra.cyw.adm	20			Prawo cywilne i administracyjne
6943	SP-CBW7	2	exc	Pra.cyw.adm	20			Prawo cywilne i administracyjne
6945	NP-CBW7	2	exc	Pra.kar.mat	9			Prawo karne materialne w bezpieczeństwie
6945	NP-CBW8	2	exc	Pra.kar.mat	9			Prawo karne materialne w bezpieczeństwie
6946	NP-CBW7	1	exc	Wsp.zag.bez	18			Współczesne zagrożenia bezpieczeństwa
6946	NP-CBW8	1	exc	Wsp.zag.bez	18			Współczesne zagrożenia bezpieczeństwa
6947	NP-CBW7	1	exc	Erg.fiz.bez	9			Ergonomia i fizjologia w bezpieczeństwie pracy
6947	NP-CBW8	1	exc	Erg.fiz.bez	9			Ergonomia i fizjologia w bezpieczeństwie pracy
6949	NP-CBW7	2	exc	Wsp.pro.bez	18			Współczesne problemy bezpieczeństwa
6949	NP-CBW8	2	exc	Wsp.pro.bez	18			Współczesne problemy bezpieczeństwa
6950	NP-CBW8	1	exc	Tec.inf	9			Technologie informacyjne
6950	NP-CBW7	1	exc	Tec.inf	9			Technologie informacyjne
6954	NP-CBW7	2	exc	Sys.bez.RP	9			System Bezpieczeństwa RP
6954	NP-CBW8	2	exc	Sys.bez.RP	9			System Bezpieczeństwa RP
6955	NP-CBW7	2	exc	Och.dan.oso	9			Ochrona danych osobowych i informacji niejawnych
6955	NP-CBW8	2	exc	Och.dan.oso	9			Ochrona danych osobowych i informacji niejawnych
6956	NP-CBW8	1	exc	Pod.teo.bez	9			Podstawy teorii bezpieczeństwa
6956	NP-CBW7	1	exc	Pod.teo.bez	9			Podstawy teorii bezpieczeństwa
6957	NP-CBW8	1	exc	Wyc.fiz	18			Wychowanie fizyczne
6957	NP-CBW7	1	exc	Wyc.fiz	18			Wychowanie fizyczne
6958	NP-CBW8	2	exc	Wyc.fiz	18			Wychowanie fizyczne
6958	NP-CBW7	2	exc	Wyc.fiz	18			Wychowanie fizyczne
6960	NP-CBW7	2	exc	Org.i.zar	9			Organizacja i zarządzanie
6994	NP-CBW7	3	exc	Bez.spo.lok	9			Bezpieczeństwo społeczności lokalnych i kształtowanie bezpiecznych przestrzeni
6996	NP-CBW8	4	exc	Psy.soc	9			Psychologia i socjologia
6996	NP-CBW7	4	exc	Psy.soc	9			Psychologia i socjologia
6998	NP-CBW7	4	exc	Prz.obr.pań	9			Przygotowania obronne panstwa
6998	NP-CBW8	4	exc	Prz.obr.pań	9			Przygotowania obronne panstwa
6999	NP-CBW8	3	exc	Pos.adm.cyw	18			Postępowanie administracyjne i cywilne
7202	SP-PC20	1	exc	Jęz.ang	30			Język angielski
7205	SP-CBW8	1	exc	Jęz.nie	30			Język niemiecki
7205	SP-CBW7	1	exc	Jęz.nie	30			Język niemiecki
7210	SP-CBW7	1	exc	Jęz.ros	30			Język rosyjski
7210	SP-CBW8	1	exc	Jęz.ros	30			Język rosyjski
7212	NP-CBW8	3	exc	Kry.kry	10			Kryminalistyka i kryminologia
7212	NP-CBW7	3	exc	Kry.kry	10			Kryminalistyka i kryminologia
7214	NP-PS47A	1	exc	Jęz.nie	18			Język niemiecki
7214	NP-PS48A	1	exc	Jęz.nie	18			Język niemiecki
7215	SP-CBW8	2	exc	Jęz.ros	30			Język rosyjski
7215	SP-CBW7	2	exc	Jęz.ros	30			Język rosyjski
7216	SP-CBW7	2	exc	Jęz.nie	30			Język niemiecki
7216	SP-CBW8	2	exc	Jęz.nie	30			Język niemiecki
7218	Erasmus	4	exc	Era.Hum.aid	15			Erasmus: Humanitarian aid in international dimension
7224	SP-C19	5	exc	Inf.kry	15			Infrastruktura krytyczna
7227	SP-C19	5	exc	Pro.sys.bez	30			Projektowanie systemów bezpieczeństwa
7229	SP-C19	5	exc	Zar.bez.pra	15			Zarządzanie bezpieczeństwem pracy
7237	SP-C19	6	exc	Zar.zas.lud	15			Zarządzanie zasobami ludzkimi
7241	SP-C19	6	exc	Erg.fiz.bez	15			Ergonomia i fizjologia w bezpieczeństwie pracy
7764	NP-PS48A	5	exc	Bez.dzi.rat	18			Bezpieczeństwo działań ratowniczych
7764	NP-PS47A	5	exc	Bez.dzi.rat	18			Bezpieczeństwo działań ratowniczych
7765	SP-PK20	7	exc	Prz.kon	30			Przygotowanie kondycyjne
7765	SP-PK19	7	exc	Prz.kon	30			Przygotowanie kondycyjne
7803	NP-PS47A	6	exc	Tak.dow	18			Taktyka i dowodzenie
9262	NP-CBW6	6	exc	Sys.wyk.ska	9			Systemy wykrywania skażeń i alarmowania
9385	NP-PS48A	3	exc	Jęz.nie	18			Język niemiecki
9385	NP-PS47A	3	exc	Jęz.nie	18			Język niemiecki
9386	NP-PS47A	3	exc	Jęz.ros	18			Język rosyjski
9386	NP-PS48A	3	exc	Jęz.ros	18			Język rosyjski
9387	NP-PS47A	4	exc	Jęz.nie	18			Język niemiecki
9387	NP-PS48A	4	exc	Jęz.nie	18			Język niemiecki
9388	NP-PS47A	4	exc	Jęz.ros	18			Język rosyjski
9388	NP-PS48A	4	exc	Jęz.ros	18			Język rosyjski
9389	NP-PS47A	5	exc	Jęz.nie	18			Język niemiecki
9389	NP-PS48A	5	exc	Jęz.nie	18			Język niemiecki
9390	NP-PS47A	5	exc	Jęz.ros	18			Język rosyjski
9390	NP-PS48A	5	exc	Jęz.ros	18			Język rosyjski
9394	NP-PS47A	6	exc	Jęz.nie	18			Język niemiecki
9394	NP-PS48A	6	exc	Jęz.nie	18			Język niemiecki
9396	NP-PS47A	6	exc	Jęz.ros	18			Język rosyjski
9396	NP-PS48A	6	exc	Jęz.ros	18			Język rosyjski
9413	SP-CBW4.ZB	6	exc	DP	10			Praca dyplomowa
9413	SP-CBW6.ZB	6	exc	DP	10			Praca dyplomowa
9414	SD-BW6	1	exc	Jęz.nie	40			Język niemiecki
9414	SD-BW5	1	exc	Jęz.nie	40			Język niemiecki
9415	SD-BW5	1	exc	Jęz.ros	40			Język rosyjski
9415	SD-BW6	1	exc	Jęz.ros	40			Język rosyjski
9416	SD-BW5	2	exc	Jęz.nie	40			Język niemiecki
9416	SD-BW6	2	exc	Jęz.nie	40			Język niemiecki
9417	SD-BW5	2	exc	Jęz.ros	40			Język rosyjski
9417	SD-BW6	2	exc	Jęz.ros	40			Język rosyjski
9419	SD-BW5	3	exc	Jęz.nie	40			Język niemiecki
9419	SD-BW6	3	exc	Jęz.nie	40			Język niemiecki
9421	SD-BW5	3	exc	Jęz.ros	40			Język rosyjski
9421	SD-BW6	3	exc	Jęz.ros	40			Język rosyjski
9427	SD-P14	1	exc	Jęz.nie	15			Język niemiecki
9427	SD-P15	1	exc	Jęz.nie	15			Język niemiecki
9428	SD-P15	1	exc	Jęz.ros	15			Język rosyjski
9428	SD-P14	1	exc	Jęz.ros	15			Język rosyjski
9429	SD-P15	2	exc	Jęz.nie	30			Język niemiecki
9429	SD-P14	2	exc	Jęz.nie	30			Język niemiecki
9430	SD-P15	2	exc	Jęz.ros	30			Język rosyjski
9430	SD-P14	2	exc	Jęz.ros	30			Język rosyjski
9433	NP-CBW7	4	exc	Jęz.nie	18			Język niemiecki
9435	NP-CBW8	4	exc	Jęz.ros	18			Język rosyjski
9435	NP-CBW7	4	exc	Jęz.ros	18			Język rosyjski
9436	ND-BW6	1	exc	Jęz.nie	18			Język niemiecki
9436	ND-BW5	1	exc	Jęz.nie	18			Język niemiecki
9437	ND-BW5	1	exc	Jęz.nie	18			Język niemiecki
9437	ND-BW6	1	exc	Jęz.nie	18			Język niemiecki
9438	ND-BW6	2	exc	Jęz.nie	18			Język niemiecki
9438	ND-BW5	2	exc	Jęz.nie	18			Język niemiecki
9439	ND-BW6	2	exc	Jęz.ros	18			Język rosyjski
9439	ND-BW5	2	exc	Jęz.ros	18			Język rosyjski
9440	ND-BW5	3	exc	Jęz.nie	18			Język niemiecki
9440	ND-BW6	3	exc	Jęz.nie	18			Język niemiecki
9441	ND-BW5	3	exc	Jęz.ros	18			Język rosyjski
9441	ND-BW6	3	exc	Jęz.ros	18			Język rosyjski
9448	NP-CBW8	1	exc	Jęz.nie	18			Język niemiecki
9448	NP-CBW7	1	exc	Jęz.nie	18			Język niemiecki
9449	NP-CBW7	1	exc	Jęz.ros	18			Język rosyjski
9449	NP-CBW8	1	exc	Jęz.ros	18			Język rosyjski
9450	NP-CBW7	2	exc	Jęz.nie	18			Język niemiecki
9450	NP-CBW8	2	exc	Jęz.nie	18			Język niemiecki
9451	NP-CBW7	2	exc	Jęz.ros	18			Język rosyjski
9451	NP-CBW8	2	exc	Jęz.ros	18			Język rosyjski
9452	SP-CBW8	3	exc	Jęz.nie	30			Język niemiecki
9452	SP-CBW7	3	exc	Jęz.nie	30			Język niemiecki
9453	SP-CBW8	3	exc	Jęz.ros	30			Język rosyjski
9453	SP-CBW7	3	exc	Jęz.ros	30			Język rosyjski
9454	SP-CBW7	4	exc	Jęz.nie	30			Język niemiecki
9454	SP-CBW8	4	exc	Jęz.nie	30			Język niemiecki
9456	SP-CBW7	4	exc	Jęz.ros	30			Język rosyjski
9456	SP-CBW8	4	exc	Jęz.ros	30			Język rosyjski
9513	SP-CBW4.OL	6	exc	DP	10			Praca dyplomowa
9513	SP-CBW5.OL	6	exc	DP	10			Praca dyplomowa
9515	SP-C19	5	exc	Mik.śro.pra	15			Mikroklimat środowiska pracy
9516	SP-C19	7	exc	Sem.dyp.(w	30			Seminarium dyplomowe (w tym praca dyplomowa)
4232	SP-PK17	7	exc	Org.kie.dzi	30			Organizacja i kierowanie działaniami ratowniczymi (ćw. terenowe)
4232	SP-PK15	7	exc	Org.kie.dzi	30			Organizacja i kierowanie działaniami ratowniczymi (ćw. terenowe)
4232	SP-PK16	7	exc	Org.kie.dzi	30			Organizacja i kierowanie działaniami ratowniczymi (ćw. terenowe)
4233	SP-PK15	8	exc	Org.kie.dzi	14			Organizacja i kierowanie działaniami ratowniczymi (ćw. terenowe)
4233	SP-PK17	8	exc	Org.kie.dzi	14			Organizacja i kierowanie działaniami ratowniczymi (ćw. terenowe)
4233	SP-PK18	8	exc	Org.kie.dzi	14			Organizacja i kierowanie działaniami ratowniczymi (ćw. terenowe)
4233	SP-PK16	8	exc	Org.kie.dzi	14			Organizacja i kierowanie działaniami ratowniczymi (ćw. terenowe)
4488	SD-P12	3	exc	Rze.prz	30			Rzeczoznawstwo przeciwpożarowe
4488	SD-P13	3	exc	Rze.prz	30			Rzeczoznawstwo przeciwpożarowe
5492	SP-PK16	3	-	Pod.bud	0			Podstawy budownictwa
5492	SP-PK17	3	-	Pod.bud	0			Podstawy budownictwa
5492	SP-PK18	3	-	Pod.bud	0			Podstawy budownictwa
5492	SP-PK15	3	-	Pod.bud	0			Podstawy budownictwa
5493	SP-PK15	2	-	Matematyka	0			Matematyka
5493	SP-PK18	2	-	Matematyka	0			Matematyka
5493	SP-PK17	2	-	Matematyka	0			Matematyka
5493	SP-PK16	2	-	Matematyka	0			Matematyka
5494	SP-PK16	2	-	Chemia	0			Chemia
5494	SP-PK15	2	-	Chemia	0			Chemia
5494	SP-PK17	2	-	Chemia	0			Chemia
5494	SP-PK18	2	-	Chemia	0			Chemia
5495	SP-PK17	2	-	Tec.inf	0			Technologie informacyjne
5495	SP-PK18	2	-	Tec.inf	0			Technologie informacyjne
5495	SP-PK16	2	-	Tec.inf	0			Technologie informacyjne
5495	SP-PK15	2	-	Tec.inf	0			Technologie informacyjne
5497	SP-PK17	5	-	Tec.sys.zab	0			Techniczne systemy zabezpieczeń
5497	SP-PK18	5	-	Tec.sys.zab	0			Techniczne systemy zabezpieczeń
5516	SP-PC18	3	-	Hyd.prz.zao	0			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
5517	SP-PC17	3	-	Pod.bud	0			Podstawy budownictwa
5517	SP-PC16	3	-	Pod.bud	0			Podstawy budownictwa
5517	SP-PC15	3	-	Pod.bud	0			Podstawy budownictwa
5522	SP-PC17	5	-	Tec.sys.zab	0			Techniczne systemy zabezpieczeń
5522	SP-PC16	5	-	Tec.sys.zab	0			Techniczne systemy zabezpieczeń
5522	SP-PC18	5	-	Tec.sys.zab	0			Techniczne systemy zabezpieczeń
5522	SP-PC15	5	-	Tec.sys.zab	0			Techniczne systemy zabezpieczeń
5525	SD-P13	2	-	Mod.poż	0			Modelowanie pożarów
5525	SD-P12	2	-	Mod.poż	0			Modelowanie pożarów
5616	NP-PC20	5	-	Tec.sys.zab	0			Techniczne systemy zabezpieczeń
5619	NP-PC21	6	-	Rat.che.i.eko	0			Ratownictwo chemiczne i ekologiczne
5619	NP-PC19	6	-	Rat.che.i.eko	0			Ratownictwo chemiczne i ekologiczne
5619	NP-PC20	6	-	Rat.che.i.eko	0			Ratownictwo chemiczne i ekologiczne
5619	NP-PC18	6	-	Rat.che.i.eko	0			Ratownictwo chemiczne i ekologiczne
5628	ND-P35	2	-	Mod.poż	0			Modelowanie pożarów
5628	ND-P34	2	-	Mod.poż	0			Modelowanie pożarów
7417	NP-PS48B	3	-	Hyd.prz.zao	0			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
7417	NP-PS47B	3	-	Hyd.prz.zao	0			Hydromechanika i przeciwpożarowe zaopatrzenie w wodę
7418	NP-PS47B	3	-	Pod.bud	0			Podstawy budownictwa
7715	SP-PK20	5	-	Tec.sys.zab	0			Techniczne systemy zabezpieczeń
7715	SP-PK19	5	-	Tec.sys.zab	0			Techniczne systemy zabezpieczeń
\.


--
-- PostgreSQL database dump complete
--

