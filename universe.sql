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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    age_in_millions integer,
    blackhole_code character varying(5) NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    type character varying(100) NOT NULL,
    age_in_millions integer,
    description text,
    is_observed_by_hubble boolean,
    galaxy_code character varying(5)
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
    name character varying(100) NOT NULL,
    description text,
    age_in_millions integer,
    moon_code character varying(5) NOT NULL,
    distance_from_planet_in_km numeric(15,6),
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
    name character varying(100) NOT NULL,
    description text,
    age_in_millions integer,
    planet_code character varying(5) NOT NULL,
    has_water boolean,
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
    name character varying(100) NOT NULL,
    description text,
    age_in_millions integer,
    mass numeric(100,2),
    star_code character varying(5) NOT NULL,
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
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_blackhole_id_seq'::regclass);


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
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, 'Sagittarius A*', 'Supermassive black hole at the center of the Milky Way.', 13600, 'BH01', 1);
INSERT INTO public.blackhole VALUES (2, 'Messier 87*', 'One of the largest known black holes.', 13000, 'BH02', 2);
INSERT INTO public.blackhole VALUES (3, 'TON 618', 'One of the most massive known black holes.', 10400, 'BH03', 3);
INSERT INTO public.blackhole VALUES (4, 'Cygnus X-1', 'First strong black hole candidate discovered.', 6000, 'BH04', 1);
INSERT INTO public.blackhole VALUES (5, 'NGC 1277*', 'Contains an unusually massive black hole.', 11500, 'BH05', 4);
INSERT INTO public.blackhole VALUES (6, 'Phoenix A*', 'Massive black hole in Phoenix Cluster.', 12000, 'BH06', 5);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 13600, 'Our home galaxy.', true, 'MW001');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 10000, 'Nearest major galaxy.', true, 'AN001');
INSERT INTO public.galaxy VALUES (3, 'Sombrero', 'Spiral', 9200, 'Galaxy with bright nucleus.', false, 'SM001');
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'Spiral', 8000, 'Interacting grand-design spiral.', true, 'WH001');
INSERT INTO public.galaxy VALUES (5, 'Black Eye', 'Spiral', 11000, 'Also known as Evil Eye galaxy.', false, 'BE001');
INSERT INTO public.galaxy VALUES (6, 'Cartwheel', 'Lenticular', 6000, 'Ring-shaped galaxy.', true, 'CW001');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Earth moon.', 4500, 'MN01', 384400.000000, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Moon of Mars.', 4500, 'MN02', 9376.000000, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Moon of Mars.', 4500, 'MN03', 23460.000000, 2);
INSERT INTO public.moon VALUES (4, 'Europa', 'Moon of Jupiter.', 4500, 'MN04', 670900.000000, 4);
INSERT INTO public.moon VALUES (5, 'Ganymede', 'Largest moon.', 4500, 'MN05', 1070400.000000, 4);
INSERT INTO public.moon VALUES (6, 'Callisto', 'Moon of Jupiter.', 4500, 'MN06', 1883000.000000, 4);
INSERT INTO public.moon VALUES (7, 'Io', 'Volcanic moon.', 4500, 'MN07', 421700.000000, 4);
INSERT INTO public.moon VALUES (8, 'Titan', 'Moon of Saturn.', 4500, 'MN08', 1221870.000000, 11);
INSERT INTO public.moon VALUES (9, 'Rhea', 'Moon of Saturn.', 4500, 'MN09', 527040.000000, 11);
INSERT INTO public.moon VALUES (10, 'Triton', 'Moon of Neptune.', 4500, 'MN10', 354800.000000, 9);
INSERT INTO public.moon VALUES (11, 'Charon', 'Plutos moon.', 4500, 'MN11', 19571.000000, 4);
INSERT INTO public.moon VALUES (12, 'Enceladus', 'Icy moon.', 4500, 'MN12', 238000.000000, 11);
INSERT INTO public.moon VALUES (13, 'Mimas', 'Saturns moon.', 4500, 'MN13', 185540.000000, 11);
INSERT INTO public.moon VALUES (14, 'Dione', 'Another Saturn moon.', 4500, 'MN14', 377400.000000, 11);
INSERT INTO public.moon VALUES (15, 'Oberon', 'Uranus moon.', 4500, 'MN15', 583520.000000, 10);
INSERT INTO public.moon VALUES (16, 'Titania', 'Largest Uranus moon.', 4500, 'MN16', 435910.000000, 10);
INSERT INTO public.moon VALUES (17, 'Umbriel', 'Uranus moon.', 4500, 'MN17', 265970.000000, 10);
INSERT INTO public.moon VALUES (18, 'Ariel', 'Bright Uranus moon.', 4500, 'MN18', 190900.000000, 10);
INSERT INTO public.moon VALUES (19, 'Miranda', 'Small Uranus moon.', 4500, 'MN19', 129390.000000, 10);
INSERT INTO public.moon VALUES (20, 'Nereid', 'Neptune moon.', 4500, 'MN20', 5513400.000000, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Blue planet.', 4500, 'PL01', true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 'Red planet.', 4500, 'PL02', false, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 'Hottest planet.', 4500, 'PL03', false, 1);
INSERT INTO public.planet VALUES (4, 'Jupiter', 'Largest planet.', 4500, 'PL04', false, 1);
INSERT INTO public.planet VALUES (5, 'Kepler-22b', 'Exoplanet.', 2000, 'PL05', true, 2);
INSERT INTO public.planet VALUES (6, 'Proxima b', 'Closest exoplanet.', 3000, 'PL06', true, 2);
INSERT INTO public.planet VALUES (7, 'Gliese 581g', 'Potentially habitable.', 4000, 'PL07', true, 3);
INSERT INTO public.planet VALUES (8, 'HD 209458b', 'Hot Jupiter.', 5000, 'PL08', false, 3);
INSERT INTO public.planet VALUES (9, 'Neptune', 'Gas giant.', 4500, 'PL09', false, 1);
INSERT INTO public.planet VALUES (10, 'Uranus', 'Ice giant.', 4500, 'PL10', false, 1);
INSERT INTO public.planet VALUES (11, 'Saturn', 'Rings.', 4500, 'PL11', false, 1);
INSERT INTO public.planet VALUES (12, 'Mercury', 'Closest to sun.', 4500, 'PL12', false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Main sequence star.', 4600, 1.00, 'ST01', 1);
INSERT INTO public.star VALUES (2, 'Sirius', 'Brightest star in night sky.', 300, 2.10, 'ST02', 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'Red supergiant.', 10000, 20.00, 'ST03', 2);
INSERT INTO public.star VALUES (4, 'Rigel', 'Blue supergiant.', 8000, 21.00, 'ST04', 2);
INSERT INTO public.star VALUES (5, 'Vega', 'Bright star in Lyra.', 455, 2.10, 'ST05', 3);
INSERT INTO public.star VALUES (6, 'Polaris', 'North Star.', 70000, 6.00, 'ST06', 3);


--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: blackhole blackhole_blackhole_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_blackhole_code_key UNIQUE (blackhole_code);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


--
-- Name: galaxy galaxy_galaxy_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_code_key UNIQUE (galaxy_code);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_code_key UNIQUE (moon_code);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_code_key UNIQUE (planet_code);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_code_key UNIQUE (star_code);


--
-- Name: blackhole blackhole_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

