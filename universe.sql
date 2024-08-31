--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text NOT NULL,
    speed integer
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    distance numeric NOT NULL,
    is_present boolean,
    age integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    distance numeric NOT NULL,
    is_present boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    distance numeric NOT NULL,
    is_present boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    distance numeric NOT NULL,
    is_present boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'c1', 'I am c1', 13);
INSERT INTO public.comet VALUES (2, 'c2', 'I am c2', 14);
INSERT INTO public.comet VALUES (3, 'c3', 'I am c3', 15);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'g1', 'I am g1', 120.1, true, 12);
INSERT INTO public.galaxy VALUES (2, 'g2', 'I am g2', 130.1, false, 11);
INSERT INTO public.galaxy VALUES (3, 'g3', 'I am g3', 140.12, false, 13);
INSERT INTO public.galaxy VALUES (4, 'g4', 'I am g4', 140.12, true, 14);
INSERT INTO public.galaxy VALUES (5, 'g5', 'I am g5', 150.32, true, 34);
INSERT INTO public.galaxy VALUES (6, 'g6', 'I am g6', 140.23, true, 12);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (7, 'm7', 'I am m7', 123.12, true, 2);
INSERT INTO public.moon VALUES (8, 'm8', 'I am m8', 130.1, false, 2);
INSERT INTO public.moon VALUES (9, 'm9', 'I am m9', 140.12, false, 4);
INSERT INTO public.moon VALUES (10, 'm10', 'I am m10', 140.12, true, 4);
INSERT INTO public.moon VALUES (11, 'm11', 'I am m11', 150.32, true, 4);
INSERT INTO public.moon VALUES (12, 'm12', 'I am m12', 140.23, true, 5);
INSERT INTO public.moon VALUES (1, 'm1', 'I am m1', 123.12, true, 2);
INSERT INTO public.moon VALUES (2, 'm2', 'I am m2', 130.1, false, 2);
INSERT INTO public.moon VALUES (3, 'm3', 'I am m3', 140.12, false, 4);
INSERT INTO public.moon VALUES (4, 'm4', 'I am m4', 140.12, true, 4);
INSERT INTO public.moon VALUES (5, 'm5', 'I am m5', 150.32, true, 4);
INSERT INTO public.moon VALUES (6, 'm6', 'I am m6', 140.23, true, 5);
INSERT INTO public.moon VALUES (13, 'm13', 'I am m13', 123.12, true, 2);
INSERT INTO public.moon VALUES (14, 'm14', 'I am m14', 130.1, false, 2);
INSERT INTO public.moon VALUES (15, 'm15', 'I am m15', 140.12, false, 4);
INSERT INTO public.moon VALUES (16, 'm16', 'I am m16', 140.12, true, 4);
INSERT INTO public.moon VALUES (17, 'm17', 'I am m17', 150.32, true, 4);
INSERT INTO public.moon VALUES (18, 'm18', 'I am m18', 140.23, true, 5);
INSERT INTO public.moon VALUES (19, 'm19', 'I am m19', 156.23, false, 12);
INSERT INTO public.moon VALUES (20, 'm20', 'I am m20', 134.12, false, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'p1', 'I am p1', 123.12, true, 2);
INSERT INTO public.planet VALUES (2, 'p2', 'I am p2', 130.1, false, 2);
INSERT INTO public.planet VALUES (3, 'p3', 'I am p3', 140.12, false, 4);
INSERT INTO public.planet VALUES (4, 'p4', 'I am p4', 140.12, true, 4);
INSERT INTO public.planet VALUES (5, 'p5', 'I am p5', 150.32, true, 3);
INSERT INTO public.planet VALUES (6, 'p6', 'I am p6', 140.23, true, 5);
INSERT INTO public.planet VALUES (7, 'p7', 'I am p7', 123.12, true, 2);
INSERT INTO public.planet VALUES (8, 'p8', 'I am p8', 130.1, false, 2);
INSERT INTO public.planet VALUES (9, 'p9', 'I am p9', 140.12, false, 4);
INSERT INTO public.planet VALUES (10, 'p10', 'I am p10', 140.12, true, 4);
INSERT INTO public.planet VALUES (11, 'p11', 'I am p11', 150.32, true, 4);
INSERT INTO public.planet VALUES (12, 'p12', 'I am p12', 140.23, true, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 's1', 'I am s1', 123.12, true, 2);
INSERT INTO public.star VALUES (2, 's2', 'I am s2', 130.1, false, 1);
INSERT INTO public.star VALUES (3, 's3', 'I am s3', 140.12, false, 2);
INSERT INTO public.star VALUES (4, 's4', 'I am s4', 140.12, true, 3);
INSERT INTO public.star VALUES (5, 's5', 'I am s5', 150.32, true, 3);
INSERT INTO public.star VALUES (6, 's6', 'I am s6', 140.23, true, 1);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


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
-- Name: comet unique_comet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT unique_comet UNIQUE (name);


--
-- Name: galaxy unique_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy UNIQUE (name);


--
-- Name: moon unique_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon UNIQUE (name);


--
-- Name: planet unique_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet UNIQUE (name);


--
-- Name: star unique_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star UNIQUE (name);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

