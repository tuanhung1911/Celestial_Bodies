--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: amount; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.amount (
    total integer NOT NULL,
    point integer,
    conclusion character varying(6),
    name character varying(10) NOT NULL,
    amount_id integer NOT NULL
);


ALTER TABLE public.amount OWNER TO freecodecamp;

--
-- Name: amount_amount_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.amount_amount_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.amount_amount_id_seq OWNER TO freecodecamp;

--
-- Name: amount_amount_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.amount_amount_id_seq OWNED BY public.amount.amount_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(10) NOT NULL,
    born_year integer,
    person text,
    attr character varying(20)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(10) NOT NULL,
    dollar numeric(4,1),
    t_or_f boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(10) NOT NULL,
    dollar numeric(4,1),
    t_or_f boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(10) NOT NULL,
    born_year integer,
    person text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: amount amount_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.amount ALTER COLUMN amount_id SET DEFAULT nextval('public.amount_amount_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: amount; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.amount VALUES (1000, 10, 'TOT', 'MONTER', 1);
INSERT INTO public.amount VALUES (2000, 9, 'TOT', 'KINGKONG', 2);
INSERT INTO public.amount VALUES (2200, 9, 'TOT', 'GOSGILA', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'su_24', 1940, 'Hung', '1');
INSERT INTO public.galaxy VALUES (2, 'su_25', 1941, 'Phung', 'tot');
INSERT INTO public.galaxy VALUES (3, 'su_26', 1942, 'Huy', '7');
INSERT INTO public.galaxy VALUES (4, 'su_27', 1943, 'Huy', '8');
INSERT INTO public.galaxy VALUES (5, 'su_28', 1944, 'Phung', '5');
INSERT INTO public.galaxy VALUES (6, 'su_29', 1945, 'Hung', 'dat');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Hung', 244.0, false, 1);
INSERT INTO public.moon VALUES (2, 'Phung', 144.0, false, 2);
INSERT INTO public.moon VALUES (3, 'Huy', 421.0, false, 3);
INSERT INTO public.moon VALUES (4, 'Hieu', 532.0, false, 4);
INSERT INTO public.moon VALUES (5, 'Noruma', 244.0, false, 4);
INSERT INTO public.moon VALUES (6, 'Nam', 144.0, false, 6);
INSERT INTO public.moon VALUES (7, 'Tien', 421.0, false, 7);
INSERT INTO public.moon VALUES (8, 'William', 532.0, false, 8);
INSERT INTO public.moon VALUES (9, 'Bao', 244.0, false, 4);
INSERT INTO public.moon VALUES (10, 'Triet', 144.0, false, 6);
INSERT INTO public.moon VALUES (11, 'Tung', 421.0, false, 7);
INSERT INTO public.moon VALUES (12, 'Kien', 532.0, false, 8);
INSERT INTO public.moon VALUES (13, 'Chi', 244.0, false, 4);
INSERT INTO public.moon VALUES (14, 'Hoc', 144.0, false, 6);
INSERT INTO public.moon VALUES (15, 'Long', 421.0, false, 7);
INSERT INTO public.moon VALUES (16, 'Khang', 532.0, false, 8);
INSERT INTO public.moon VALUES (17, 'Hai', 244.0, false, 4);
INSERT INTO public.moon VALUES (18, 'Tan', 144.0, false, 6);
INSERT INTO public.moon VALUES (19, 'Nghia', 421.0, false, 7);
INSERT INTO public.moon VALUES (20, 'Loc', 532.0, false, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Hung', 234.0, true, 1);
INSERT INTO public.planet VALUES (2, 'Phung', 123.0, true, 2);
INSERT INTO public.planet VALUES (3, 'Huy', 432.0, true, 3);
INSERT INTO public.planet VALUES (5, 'Hieu', 234.0, true, 4);
INSERT INTO public.planet VALUES (6, 'Tien', 123.0, true, 5);
INSERT INTO public.planet VALUES (7, 'Nam', 432.0, true, 6);
INSERT INTO public.planet VALUES (8, 'Kingdom', 234.0, true, 1);
INSERT INTO public.planet VALUES (9, 'Miami', 223.0, true, 3);
INSERT INTO public.planet VALUES (10, 'William', 432.0, true, 5);
INSERT INTO public.planet VALUES (11, 'Maphia', 234.0, true, 6);
INSERT INTO public.planet VALUES (12, 'Gogara', 223.0, true, 4);
INSERT INTO public.planet VALUES (4, 'Nomite', 432.0, true, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'su_30', 1946, 'Walliam', 1);
INSERT INTO public.star VALUES (2, 'su_31', 1947, 'Manami', 2);
INSERT INTO public.star VALUES (3, 'su_32', 1948, 'Gogara', 3);
INSERT INTO public.star VALUES (4, 'su_33', 1949, 'Halland', 4);
INSERT INTO public.star VALUES (5, 'su_34', 1950, 'Maphia', 5);
INSERT INTO public.star VALUES (6, 'su_35', 1951, 'Kngdom', 6);


--
-- Name: amount_amount_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.amount_amount_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: amount amount_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.amount
    ADD CONSTRAINT amount_name_key UNIQUE (name);


--
-- Name: amount amount_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.amount
    ADD CONSTRAINT amount_pkey PRIMARY KEY (amount_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

