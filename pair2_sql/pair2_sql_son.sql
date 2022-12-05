--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

-- Started on 2022-12-02 17:53:21

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
-- TOC entry 263 (class 1259 OID 20010)
-- Name:  neigh; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public." neigh" (
    id integer NOT NULL,
    name character varying NOT NULL,
    town_id integer NOT NULL
);


ALTER TABLE public." neigh" OWNER TO postgres;

--
-- TOC entry 262 (class 1259 OID 20009)
-- Name:  neighbourhood_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public." neigh" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public." neighbourhood_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 214 (class 1259 OID 19665)
-- Name: addresses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.addresses (
    id integer NOT NULL,
    title character varying NOT NULL,
    city_id integer NOT NULL,
    street character varying NOT NULL,
    customer_id integer NOT NULL
);


ALTER TABLE public.addresses OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 19670)
-- Name: addreses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.addresses ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.addreses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 216 (class 1259 OID 19671)
-- Name: basket_product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.basket_product (
    basket_id integer NOT NULL,
    product_id integer NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public.basket_product OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 19674)
-- Name: basket_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.basket_product ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.basket_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 218 (class 1259 OID 19675)
-- Name: baskets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.baskets (
    id integer NOT NULL,
    price numeric NOT NULL,
    customer_id integer NOT NULL,
    quantity integer
);


ALTER TABLE public.baskets OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 19680)
-- Name: baskets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.baskets ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.baskets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 220 (class 1259 OID 19681)
-- Name: brands; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.brands (
    id integer NOT NULL,
    name character varying NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.brands OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 19686)
-- Name: brands_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.brands ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.brands_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 222 (class 1259 OID 19687)
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying NOT NULL,
    type character varying
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 19692)
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.categories ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 224 (class 1259 OID 19693)
-- Name: cities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cities (
    id integer NOT NULL,
    name character varying NOT NULL,
    country_id integer NOT NULL,
    plaka_id integer
);


ALTER TABLE public.cities OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 19698)
-- Name: cities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.cities ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.cities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 226 (class 1259 OID 19699)
-- Name: colours; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.colours (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.colours OWNER TO postgres;

--
-- TOC entry 259 (class 1259 OID 19976)
-- Name: colours_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.colours ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.colours_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 227 (class 1259 OID 19704)
-- Name: corporate_customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corporate_customers (
    id integer NOT NULL,
    company_name character varying NOT NULL,
    tax_no integer NOT NULL,
    customer_id integer NOT NULL
);


ALTER TABLE public.corporate_customers OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 19709)
-- Name: corporate_customers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.corporate_customers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.corporate_customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 229 (class 1259 OID 19710)
-- Name: countries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.countries (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.countries OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 19715)
-- Name: countries_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.countries ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.countries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 231 (class 1259 OID 19716)
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    id integer NOT NULL,
    email character varying NOT NULL,
    individual_customer_id integer,
    corporate_customer_id integer,
    order_id integer
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 19721)
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.customers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 233 (class 1259 OID 19722)
-- Name: individual_customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.individual_customers (
    id integer NOT NULL,
    name character varying NOT NULL,
    country_no integer NOT NULL,
    customer_id integer NOT NULL
);


ALTER TABLE public.individual_customers OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 19727)
-- Name: individual_customers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.individual_customers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.individual_customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 235 (class 1259 OID 19728)
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    id integer NOT NULL,
    status character varying NOT NULL,
    date date NOT NULL,
    customer_id integer NOT NULL,
    shipper_id integer NOT NULL,
    address_id integer NOT NULL,
    payment_type_id integer NOT NULL
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 19733)
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.orders ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 237 (class 1259 OID 19734)
-- Name: payment_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payment_types (
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying NOT NULL
);


ALTER TABLE public.payment_types OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 19739)
-- Name: payment_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.payment_types ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.payment_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 239 (class 1259 OID 19740)
-- Name: product_colours; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_colours (
    id integer NOT NULL,
    products_id integer NOT NULL,
    colours_id integer NOT NULL
);


ALTER TABLE public.product_colours OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 19743)
-- Name: product_colours_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.product_colours ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.product_colours_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 241 (class 1259 OID 19744)
-- Name: product_order; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_order (
    product_id integer NOT NULL,
    order_id integer NOT NULL,
    quantity integer NOT NULL,
    total_price numeric NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public.product_order OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 19749)
-- Name: product_order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.product_order ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.product_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 243 (class 1259 OID 19750)
-- Name: product_seller; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_seller (
    product_id integer,
    seller_id integer,
    id integer NOT NULL
);


ALTER TABLE public.product_seller OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 19753)
-- Name: product_seller_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.product_seller ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.product_seller_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 245 (class 1259 OID 19754)
-- Name: product_size; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_size (
    id integer NOT NULL,
    size_id integer NOT NULL,
    products_id integer NOT NULL
);


ALTER TABLE public.product_size OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 19757)
-- Name: product_size_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.product_size ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.product_size_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 247 (class 1259 OID 19758)
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id integer NOT NULL,
    name character varying NOT NULL,
    unit_price numeric NOT NULL,
    stock integer NOT NULL,
    category_id integer NOT NULL,
    supplier_id integer NOT NULL,
    product_colour_id integer,
    product_size_id integer
);


ALTER TABLE public.products OWNER TO postgres;

--
-- TOC entry 248 (class 1259 OID 19763)
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.products ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 249 (class 1259 OID 19764)
-- Name: refunds; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.refunds (
    id integer NOT NULL,
    product_order_id integer NOT NULL,
    return_date date NOT NULL,
    return_description character varying NOT NULL
);


ALTER TABLE public.refunds OWNER TO postgres;

--
-- TOC entry 250 (class 1259 OID 19769)
-- Name: refunds_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.refunds ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.refunds_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 251 (class 1259 OID 19770)
-- Name: sellers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sellers (
    id integer NOT NULL,
    name character varying NOT NULL,
    follower_count integer NOT NULL,
    rating integer NOT NULL
);


ALTER TABLE public.sellers OWNER TO postgres;

--
-- TOC entry 252 (class 1259 OID 19775)
-- Name: sellers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.sellers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.sellers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 253 (class 1259 OID 19776)
-- Name: shippers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shippers (
    id integer NOT NULL,
    company_name character varying NOT NULL,
    email character varying NOT NULL
);


ALTER TABLE public.shippers OWNER TO postgres;

--
-- TOC entry 254 (class 1259 OID 19781)
-- Name: shippers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.shippers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.shippers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 255 (class 1259 OID 19782)
-- Name: size; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.size (
    id integer NOT NULL,
    name character varying
);


ALTER TABLE public.size OWNER TO postgres;

--
-- TOC entry 256 (class 1259 OID 19787)
-- Name: size_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.size ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.size_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 257 (class 1259 OID 19788)
-- Name: suppliers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.suppliers (
    id integer NOT NULL,
    company_name character varying NOT NULL,
    email character varying NOT NULL,
    stock integer NOT NULL
);


ALTER TABLE public.suppliers OWNER TO postgres;

--
-- TOC entry 258 (class 1259 OID 19793)
-- Name: suppliers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.suppliers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.suppliers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 260 (class 1259 OID 19982)
-- Name: town; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.town (
    id integer NOT NULL,
    name character varying NOT NULL,
    city_id integer NOT NULL
);


ALTER TABLE public.town OWNER TO postgres;

--
-- TOC entry 261 (class 1259 OID 20008)
-- Name: town_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.town ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.town_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 3563 (class 0 OID 20010)
-- Dependencies: 263
-- Data for Name:  neigh; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public." neigh" (id, name, town_id) OVERRIDING SYSTEM VALUE VALUES (1, '1771.sokak', 1);


--
-- TOC entry 3514 (class 0 OID 19665)
-- Dependencies: 214
-- Data for Name: addresses; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.addresses (id, title, city_id, street, customer_id) OVERRIDING SYSTEM VALUE VALUES (1, 'Ev adresi', 1, 'Çatalmeşe', 1);
INSERT INTO public.addresses (id, title, city_id, street, customer_id) OVERRIDING SYSTEM VALUE VALUES (2, 'Parti Evi', 2, 'Çinçin', 2);
INSERT INTO public.addresses (id, title, city_id, street, customer_id) OVERRIDING SYSTEM VALUE VALUES (3, 'İş Adresi', 3, 'Bağlaraltı', 4);
INSERT INTO public.addresses (id, title, city_id, street, customer_id) OVERRIDING SYSTEM VALUE VALUES (4, 'Yazlık Adresi', 4, 'Kurtuluş', 3);
INSERT INTO public.addresses (id, title, city_id, street, customer_id) OVERRIDING SYSTEM VALUE VALUES (5, 'Kiracının Ev', 5, 'Deniz', 5);


--
-- TOC entry 3516 (class 0 OID 19671)
-- Dependencies: 216
-- Data for Name: basket_product; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3518 (class 0 OID 19675)
-- Dependencies: 218
-- Data for Name: baskets; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.baskets (id, price, customer_id, quantity) OVERRIDING SYSTEM VALUE VALUES (10, 50.00, 1, 10);
INSERT INTO public.baskets (id, price, customer_id, quantity) OVERRIDING SYSTEM VALUE VALUES (1, 40.00, 1, 4);
INSERT INTO public.baskets (id, price, customer_id, quantity) OVERRIDING SYSTEM VALUE VALUES (2, 50.00, 1, 15);
INSERT INTO public.baskets (id, price, customer_id, quantity) OVERRIDING SYSTEM VALUE VALUES (3, 100.00, 2, 7);
INSERT INTO public.baskets (id, price, customer_id, quantity) OVERRIDING SYSTEM VALUE VALUES (4, 500.00, 3, 11);
INSERT INTO public.baskets (id, price, customer_id, quantity) OVERRIDING SYSTEM VALUE VALUES (5, 150.00, 4, 15);


--
-- TOC entry 3520 (class 0 OID 19681)
-- Dependencies: 220
-- Data for Name: brands; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.brands (id, name, product_id) OVERRIDING SYSTEM VALUE VALUES (1, 'TAÇ', 11);
INSERT INTO public.brands (id, name, product_id) OVERRIDING SYSTEM VALUE VALUES (2, 'MAVİ', 7);
INSERT INTO public.brands (id, name, product_id) OVERRIDING SYSTEM VALUE VALUES (3, 'Lacoste', 6);
INSERT INTO public.brands (id, name, product_id) OVERRIDING SYSTEM VALUE VALUES (4, 'Adidas', 5);
INSERT INTO public.brands (id, name, product_id) OVERRIDING SYSTEM VALUE VALUES (5, 'TAT', 8);
INSERT INTO public.brands (id, name, product_id) OVERRIDING SYSTEM VALUE VALUES (6, 'Muratbey', 9);
INSERT INTO public.brands (id, name, product_id) OVERRIDING SYSTEM VALUE VALUES (7, 'Çaykur', 10);
INSERT INTO public.brands (id, name, product_id) OVERRIDING SYSTEM VALUE VALUES (8, 'İstikbal', 12);
INSERT INTO public.brands (id, name, product_id) OVERRIDING SYSTEM VALUE VALUES (9, 'Bellona', 13);
INSERT INTO public.brands (id, name, product_id) OVERRIDING SYSTEM VALUE VALUES (10, 'LcWaikiki', 15);


--
-- TOC entry 3522 (class 0 OID 19687)
-- Dependencies: 222
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.categories (id, name, type) OVERRIDING SYSTEM VALUE VALUES (4, 'giyim', 'ihtiyaç');
INSERT INTO public.categories (id, name, type) OVERRIDING SYSTEM VALUE VALUES (5, 'gıda', 'ihtiyaç');
INSERT INTO public.categories (id, name, type) OVERRIDING SYSTEM VALUE VALUES (6, 'ev aletleri', 'ihtiyaç');
INSERT INTO public.categories (id, name, type) OVERRIDING SYSTEM VALUE VALUES (7, 'elektronik', 'Lüks');


--
-- TOC entry 3524 (class 0 OID 19693)
-- Dependencies: 224
-- Data for Name: cities; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.cities (id, name, country_id, plaka_id) OVERRIDING SYSTEM VALUE VALUES (3, 'Bursa', 1, NULL);
INSERT INTO public.cities (id, name, country_id, plaka_id) OVERRIDING SYSTEM VALUE VALUES (4, 'Aydın', 1, NULL);
INSERT INTO public.cities (id, name, country_id, plaka_id) OVERRIDING SYSTEM VALUE VALUES (6, 'adıyaman', 1, NULL);
INSERT INTO public.cities (id, name, country_id, plaka_id) OVERRIDING SYSTEM VALUE VALUES (7, 'bayburt', 1, NULL);
INSERT INTO public.cities (id, name, country_id, plaka_id) OVERRIDING SYSTEM VALUE VALUES (9, 'muş', 1, NULL);
INSERT INTO public.cities (id, name, country_id, plaka_id) OVERRIDING SYSTEM VALUE VALUES (10, 'izmir', 1, NULL);
INSERT INTO public.cities (id, name, country_id, plaka_id) OVERRIDING SYSTEM VALUE VALUES (11, 'giresun', 1, NULL);
INSERT INTO public.cities (id, name, country_id, plaka_id) OVERRIDING SYSTEM VALUE VALUES (12, 'roma', 2, NULL);
INSERT INTO public.cities (id, name, country_id, plaka_id) OVERRIDING SYSTEM VALUE VALUES (13, 'napoli', 2, NULL);
INSERT INTO public.cities (id, name, country_id, plaka_id) OVERRIDING SYSTEM VALUE VALUES (14, 'milano', 2, NULL);
INSERT INTO public.cities (id, name, country_id, plaka_id) OVERRIDING SYSTEM VALUE VALUES (1, 'İstanbul', 1, 34);
INSERT INTO public.cities (id, name, country_id, plaka_id) OVERRIDING SYSTEM VALUE VALUES (2, 'Ankara', 1, 6);
INSERT INTO public.cities (id, name, country_id, plaka_id) OVERRIDING SYSTEM VALUE VALUES (5, 'Antalya', 1, 7);
INSERT INTO public.cities (id, name, country_id, plaka_id) OVERRIDING SYSTEM VALUE VALUES (8, 'adana', 1, 1);
INSERT INTO public.cities (id, name, country_id, plaka_id) OVERRIDING SYSTEM VALUE VALUES (18, 'Santa Fe', 5, NULL);
INSERT INTO public.cities (id, name, country_id, plaka_id) OVERRIDING SYSTEM VALUE VALUES (19, 'Moskova', 4, NULL);
INSERT INTO public.cities (id, name, country_id, plaka_id) OVERRIDING SYSTEM VALUE VALUES (20, 'Berlin', 3, NULL);
INSERT INTO public.cities (id, name, country_id, plaka_id) OVERRIDING SYSTEM VALUE VALUES (21, 'Eskişehir', 1, 26);


--
-- TOC entry 3526 (class 0 OID 19699)
-- Dependencies: 226
-- Data for Name: colours; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.colours (id, name) OVERRIDING SYSTEM VALUE VALUES (1, 'kırmızı');
INSERT INTO public.colours (id, name) OVERRIDING SYSTEM VALUE VALUES (2, 'mavi');
INSERT INTO public.colours (id, name) OVERRIDING SYSTEM VALUE VALUES (3, 'yeşil');


--
-- TOC entry 3527 (class 0 OID 19704)
-- Dependencies: 227
-- Data for Name: corporate_customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.corporate_customers (id, company_name, tax_no, customer_id) OVERRIDING SYSTEM VALUE VALUES (2, 'Şahan Holding', 905010, 5);
INSERT INTO public.corporate_customers (id, company_name, tax_no, customer_id) OVERRIDING SYSTEM VALUE VALUES (3, 'Öney Şirketler grubu', 905020, 4);
INSERT INTO public.corporate_customers (id, company_name, tax_no, customer_id) OVERRIDING SYSTEM VALUE VALUES (4, 'Durmuş Tekstil ', 905030, 3);
INSERT INTO public.corporate_customers (id, company_name, tax_no, customer_id) OVERRIDING SYSTEM VALUE VALUES (5, 'Kırlı Gıda', 905040, 2);
INSERT INTO public.corporate_customers (id, company_name, tax_no, customer_id) OVERRIDING SYSTEM VALUE VALUES (6, 'Bozkurt Market', 905050, 1);


--
-- TOC entry 3529 (class 0 OID 19710)
-- Dependencies: 229
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.countries (id, name) OVERRIDING SYSTEM VALUE VALUES (1, 'Türkiye');
INSERT INTO public.countries (id, name) OVERRIDING SYSTEM VALUE VALUES (2, 'italya');
INSERT INTO public.countries (id, name) OVERRIDING SYSTEM VALUE VALUES (3, 'Almanya');
INSERT INTO public.countries (id, name) OVERRIDING SYSTEM VALUE VALUES (4, 'Rusya');
INSERT INTO public.countries (id, name) OVERRIDING SYSTEM VALUE VALUES (5, 'Brezilya');


--
-- TOC entry 3531 (class 0 OID 19716)
-- Dependencies: 231
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.customers (id, email, individual_customer_id, corporate_customer_id, order_id) OVERRIDING SYSTEM VALUE VALUES (2, 'berk', 2, NULL, 2);
INSERT INTO public.customers (id, email, individual_customer_id, corporate_customer_id, order_id) OVERRIDING SYSTEM VALUE VALUES (3, 'taylan', 3, NULL, 3);
INSERT INTO public.customers (id, email, individual_customer_id, corporate_customer_id, order_id) OVERRIDING SYSTEM VALUE VALUES (4, 'nesibe', 4, NULL, 4);
INSERT INTO public.customers (id, email, individual_customer_id, corporate_customer_id, order_id) OVERRIDING SYSTEM VALUE VALUES (5, 'gül', 5, NULL, 5);
INSERT INTO public.customers (id, email, individual_customer_id, corporate_customer_id, order_id) OVERRIDING SYSTEM VALUE VALUES (1, 'halil', 1, NULL, 1);


--
-- TOC entry 3533 (class 0 OID 19722)
-- Dependencies: 233
-- Data for Name: individual_customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.individual_customers (id, name, country_no, customer_id) OVERRIDING SYSTEM VALUE VALUES (2, 'berk', 6, 2);
INSERT INTO public.individual_customers (id, name, country_no, customer_id) OVERRIDING SYSTEM VALUE VALUES (3, 'taylan', 34, 3);
INSERT INTO public.individual_customers (id, name, country_no, customer_id) OVERRIDING SYSTEM VALUE VALUES (4, 'nesibe', 35, 4);
INSERT INTO public.individual_customers (id, name, country_no, customer_id) OVERRIDING SYSTEM VALUE VALUES (5, 'gül', 19, 5);
INSERT INTO public.individual_customers (id, name, country_no, customer_id) OVERRIDING SYSTEM VALUE VALUES (1, 'ayşe', 55, 1);


--
-- TOC entry 3535 (class 0 OID 19728)
-- Dependencies: 235
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.orders (id, status, date, customer_id, shipper_id, address_id, payment_type_id) OVERRIDING SYSTEM VALUE VALUES (1, 'sipariş edildi', '2022-11-30', 1, 1, 1, 1);
INSERT INTO public.orders (id, status, date, customer_id, shipper_id, address_id, payment_type_id) OVERRIDING SYSTEM VALUE VALUES (2, 'sipariş edildi', '2022-11-29', 2, 8, 2, 2);
INSERT INTO public.orders (id, status, date, customer_id, shipper_id, address_id, payment_type_id) OVERRIDING SYSTEM VALUE VALUES (3, 'sipariş beklemede', '2022-11-30', 3, 9, 4, 3);
INSERT INTO public.orders (id, status, date, customer_id, shipper_id, address_id, payment_type_id) OVERRIDING SYSTEM VALUE VALUES (4, 'sipariş yolda', '2022-11-28', 4, 10, 5, 2);
INSERT INTO public.orders (id, status, date, customer_id, shipper_id, address_id, payment_type_id) OVERRIDING SYSTEM VALUE VALUES (5, 'Teslim Edildi', '2022-12-03', 5, 12, 3, 4);


--
-- TOC entry 3537 (class 0 OID 19734)
-- Dependencies: 237
-- Data for Name: payment_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.payment_types (id, name, description) OVERRIDING SYSTEM VALUE VALUES (1, 'nakit', 'kapıda ödeme');
INSERT INTO public.payment_types (id, name, description) OVERRIDING SYSTEM VALUE VALUES (3, 'online', 'online');
INSERT INTO public.payment_types (id, name, description) OVERRIDING SYSTEM VALUE VALUES (4, 'Kripto Para', 'ETH');
INSERT INTO public.payment_types (id, name, description) OVERRIDING SYSTEM VALUE VALUES (2, 'kredi kartı', 'Taksitli ödeme');


--
-- TOC entry 3539 (class 0 OID 19740)
-- Dependencies: 239
-- Data for Name: product_colours; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3541 (class 0 OID 19744)
-- Dependencies: 241
-- Data for Name: product_order; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.product_order (product_id, order_id, quantity, total_price, id) OVERRIDING SYSTEM VALUE VALUES (9, 5, 980, 1500.00, 2);
INSERT INTO public.product_order (product_id, order_id, quantity, total_price, id) OVERRIDING SYSTEM VALUE VALUES (8, 4, 780, 1580458.00, 3);
INSERT INTO public.product_order (product_id, order_id, quantity, total_price, id) OVERRIDING SYSTEM VALUE VALUES (7, 3, 650, 65000.00, 4);
INSERT INTO public.product_order (product_id, order_id, quantity, total_price, id) OVERRIDING SYSTEM VALUE VALUES (6, 2, 250, 880000.00, 5);
INSERT INTO public.product_order (product_id, order_id, quantity, total_price, id) OVERRIDING SYSTEM VALUE VALUES (5, 1, 456, 560000.00, 6);


--
-- TOC entry 3543 (class 0 OID 19750)
-- Dependencies: 243
-- Data for Name: product_seller; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.product_seller (product_id, seller_id, id) OVERRIDING SYSTEM VALUE VALUES (8, 5, 1);
INSERT INTO public.product_seller (product_id, seller_id, id) OVERRIDING SYSTEM VALUE VALUES (7, 4, 2);
INSERT INTO public.product_seller (product_id, seller_id, id) OVERRIDING SYSTEM VALUE VALUES (6, 2, 3);
INSERT INTO public.product_seller (product_id, seller_id, id) OVERRIDING SYSTEM VALUE VALUES (5, 3, 4);
INSERT INTO public.product_seller (product_id, seller_id, id) OVERRIDING SYSTEM VALUE VALUES (9, 1, 5);


--
-- TOC entry 3545 (class 0 OID 19754)
-- Dependencies: 245
-- Data for Name: product_size; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3547 (class 0 OID 19758)
-- Dependencies: 247
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.products (id, name, unit_price, stock, category_id, supplier_id, product_colour_id, product_size_id) OVERRIDING SYSTEM VALUE VALUES (5, 'ayakkabı', 150.00, 125, 4, 1, 1, NULL);
INSERT INTO public.products (id, name, unit_price, stock, category_id, supplier_id, product_colour_id, product_size_id) OVERRIDING SYSTEM VALUE VALUES (6, 'tişört', 50.00, 75, 4, 1, 2, NULL);
INSERT INTO public.products (id, name, unit_price, stock, category_id, supplier_id, product_colour_id, product_size_id) OVERRIDING SYSTEM VALUE VALUES (7, 'pantolon', 100.00, 100, 4, 1, 1, NULL);
INSERT INTO public.products (id, name, unit_price, stock, category_id, supplier_id, product_colour_id, product_size_id) OVERRIDING SYSTEM VALUE VALUES (8, 'pirinç', 10.00, 10, 5, 2, 3, NULL);
INSERT INTO public.products (id, name, unit_price, stock, category_id, supplier_id, product_colour_id, product_size_id) OVERRIDING SYSTEM VALUE VALUES (9, 'peynir', 10.00, 10, 5, 2, 1, NULL);
INSERT INTO public.products (id, name, unit_price, stock, category_id, supplier_id, product_colour_id, product_size_id) OVERRIDING SYSTEM VALUE VALUES (10, 'çay', 25.00, 20, 5, 2, 1, NULL);
INSERT INTO public.products (id, name, unit_price, stock, category_id, supplier_id, product_colour_id, product_size_id) OVERRIDING SYSTEM VALUE VALUES (11, 'perde', 90.00, 60, 6, 3, 1, NULL);
INSERT INTO public.products (id, name, unit_price, stock, category_id, supplier_id, product_colour_id, product_size_id) OVERRIDING SYSTEM VALUE VALUES (12, 'koltuk', 70.00, 50, 6, 3, 1, NULL);
INSERT INTO public.products (id, name, unit_price, stock, category_id, supplier_id, product_colour_id, product_size_id) OVERRIDING SYSTEM VALUE VALUES (13, 'masa', 80.00, 40, 6, 3, 1, NULL);
INSERT INTO public.products (id, name, unit_price, stock, category_id, supplier_id, product_colour_id, product_size_id) OVERRIDING SYSTEM VALUE VALUES (15, 'pantolon', 150.00, 200, 4, 1, 1, NULL);
INSERT INTO public.products (id, name, unit_price, stock, category_id, supplier_id, product_colour_id, product_size_id) OVERRIDING SYSTEM VALUE VALUES (14, 'Eşofman', 80.00, 150, 4, 1, 1, NULL);
INSERT INTO public.products (id, name, unit_price, stock, category_id, supplier_id, product_colour_id, product_size_id) OVERRIDING SYSTEM VALUE VALUES (16, 'Logitech MX Keys Mini', 100.00, 65, 7, 3, 1, NULL);
INSERT INTO public.products (id, name, unit_price, stock, category_id, supplier_id, product_colour_id, product_size_id) OVERRIDING SYSTEM VALUE VALUES (17, 'Steelseries PRO TKL', 100.00, 65, 7, 3, 1, NULL);


--
-- TOC entry 3549 (class 0 OID 19764)
-- Dependencies: 249
-- Data for Name: refunds; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3551 (class 0 OID 19770)
-- Dependencies: 251
-- Data for Name: sellers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.sellers (id, name, follower_count, rating) OVERRIDING SYSTEM VALUE VALUES (1, 'Benjamin Sport', 3100, 95);
INSERT INTO public.sellers (id, name, follower_count, rating) OVERRIDING SYSTEM VALUE VALUES (2, 'The Steel', 135, 84);
INSERT INTO public.sellers (id, name, follower_count, rating) OVERRIDING SYSTEM VALUE VALUES (3, 'X Sport', 300, 98);
INSERT INTO public.sellers (id, name, follower_count, rating) OVERRIDING SYSTEM VALUE VALUES (4, 'Öney Kuyumculuk', 6005, 80);
INSERT INTO public.sellers (id, name, follower_count, rating) OVERRIDING SYSTEM VALUE VALUES (5, 'Durmuş Porselen', 452, 88);


--
-- TOC entry 3553 (class 0 OID 19776)
-- Dependencies: 253
-- Data for Name: shippers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.shippers (id, company_name, email) OVERRIDING SYSTEM VALUE VALUES (1, 'Aras kargo', 'aras@gmail.com');
INSERT INTO public.shippers (id, company_name, email) OVERRIDING SYSTEM VALUE VALUES (8, 'MNG Kargo', 'mng@gmail.com');
INSERT INTO public.shippers (id, company_name, email) OVERRIDING SYSTEM VALUE VALUES (9, 'PTT kargo', 'ptt@gmail.com');
INSERT INTO public.shippers (id, company_name, email) OVERRIDING SYSTEM VALUE VALUES (10, 'Kolay Gelsin', 'kolaygel@gmail.com');
INSERT INTO public.shippers (id, company_name, email) OVERRIDING SYSTEM VALUE VALUES (12, 'UPS', 'ups@gmail.com');


--
-- TOC entry 3555 (class 0 OID 19782)
-- Dependencies: 255
-- Data for Name: size; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3557 (class 0 OID 19788)
-- Dependencies: 257
-- Data for Name: suppliers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.suppliers (id, company_name, email, stock) OVERRIDING SYSTEM VALUE VALUES (1, 'Koç Grubu', 'kocgroup@gmail.com', 200);
INSERT INTO public.suppliers (id, company_name, email, stock) OVERRIDING SYSTEM VALUE VALUES (2, 'Doğan Holding', 'doganholding@gmail.com', 300);
INSERT INTO public.suppliers (id, company_name, email, stock) OVERRIDING SYSTEM VALUE VALUES (3, 'Kalyon', 'ihale@gmail.com', 500);


--
-- TOC entry 3560 (class 0 OID 19982)
-- Dependencies: 260
-- Data for Name: town; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.town (id, name, city_id) OVERRIDING SYSTEM VALUE VALUES (1, 'Karşıyaka', 10);


--
-- TOC entry 3569 (class 0 OID 0)
-- Dependencies: 262
-- Name:  neighbourhood_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public." neighbourhood_id_seq"', 1, true);


--
-- TOC entry 3570 (class 0 OID 0)
-- Dependencies: 215
-- Name: addreses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.addreses_id_seq', 5, true);


--
-- TOC entry 3571 (class 0 OID 0)
-- Dependencies: 217
-- Name: basket_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.basket_product_id_seq', 1, false);


--
-- TOC entry 3572 (class 0 OID 0)
-- Dependencies: 219
-- Name: baskets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.baskets_id_seq', 10, true);


--
-- TOC entry 3573 (class 0 OID 0)
-- Dependencies: 221
-- Name: brands_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.brands_id_seq', 10, true);


--
-- TOC entry 3574 (class 0 OID 0)
-- Dependencies: 223
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 7, true);


--
-- TOC entry 3575 (class 0 OID 0)
-- Dependencies: 225
-- Name: cities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cities_id_seq', 21, true);


--
-- TOC entry 3576 (class 0 OID 0)
-- Dependencies: 259
-- Name: colours_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.colours_id_seq', 3, true);


--
-- TOC entry 3577 (class 0 OID 0)
-- Dependencies: 228
-- Name: corporate_customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corporate_customers_id_seq', 6, true);


--
-- TOC entry 3578 (class 0 OID 0)
-- Dependencies: 230
-- Name: countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.countries_id_seq', 5, true);


--
-- TOC entry 3579 (class 0 OID 0)
-- Dependencies: 232
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_id_seq', 6, true);


--
-- TOC entry 3580 (class 0 OID 0)
-- Dependencies: 234
-- Name: individual_customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.individual_customers_id_seq', 5, true);


--
-- TOC entry 3581 (class 0 OID 0)
-- Dependencies: 236
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_id_seq', 5, true);


--
-- TOC entry 3582 (class 0 OID 0)
-- Dependencies: 238
-- Name: payment_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payment_types_id_seq', 4, true);


--
-- TOC entry 3583 (class 0 OID 0)
-- Dependencies: 240
-- Name: product_colours_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_colours_id_seq', 1, false);


--
-- TOC entry 3584 (class 0 OID 0)
-- Dependencies: 242
-- Name: product_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_order_id_seq', 6, true);


--
-- TOC entry 3585 (class 0 OID 0)
-- Dependencies: 244
-- Name: product_seller_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_seller_id_seq', 5, true);


--
-- TOC entry 3586 (class 0 OID 0)
-- Dependencies: 246
-- Name: product_size_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_size_id_seq', 1, false);


--
-- TOC entry 3587 (class 0 OID 0)
-- Dependencies: 248
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 25, true);


--
-- TOC entry 3588 (class 0 OID 0)
-- Dependencies: 250
-- Name: refunds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.refunds_id_seq', 1, false);


--
-- TOC entry 3589 (class 0 OID 0)
-- Dependencies: 252
-- Name: sellers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sellers_id_seq', 5, true);


--
-- TOC entry 3590 (class 0 OID 0)
-- Dependencies: 254
-- Name: shippers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.shippers_id_seq', 16, true);


--
-- TOC entry 3591 (class 0 OID 0)
-- Dependencies: 256
-- Name: size_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.size_id_seq', 1, false);


--
-- TOC entry 3592 (class 0 OID 0)
-- Dependencies: 258
-- Name: suppliers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.suppliers_id_seq', 3, true);


--
-- TOC entry 3593 (class 0 OID 0)
-- Dependencies: 261
-- Name: town_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.town_id_seq', 1, false);


--
-- TOC entry 3342 (class 2606 OID 20016)
-- Name:  neigh  neighbourhood_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public." neigh"
    ADD CONSTRAINT " neighbourhood_pkey" PRIMARY KEY (id);


--
-- TOC entry 3294 (class 2606 OID 19795)
-- Name: addresses addreses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addreses_pkey PRIMARY KEY (id);


--
-- TOC entry 3296 (class 2606 OID 19797)
-- Name: basket_product basket_product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_product
    ADD CONSTRAINT basket_product_pkey PRIMARY KEY (id);


--
-- TOC entry 3298 (class 2606 OID 19799)
-- Name: baskets baskets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.baskets
    ADD CONSTRAINT baskets_pkey PRIMARY KEY (id);


--
-- TOC entry 3300 (class 2606 OID 19801)
-- Name: brands brands_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_pkey PRIMARY KEY (id);


--
-- TOC entry 3302 (class 2606 OID 19803)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- TOC entry 3304 (class 2606 OID 19805)
-- Name: cities cities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);


--
-- TOC entry 3306 (class 2606 OID 19807)
-- Name: colours colours_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colours
    ADD CONSTRAINT colours_pkey PRIMARY KEY (id);


--
-- TOC entry 3308 (class 2606 OID 19809)
-- Name: corporate_customers corporate_customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corporate_customers
    ADD CONSTRAINT corporate_customers_pkey PRIMARY KEY (id);


--
-- TOC entry 3310 (class 2606 OID 19811)
-- Name: countries countries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);


--
-- TOC entry 3312 (class 2606 OID 19813)
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- TOC entry 3314 (class 2606 OID 19815)
-- Name: individual_customers individual_customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.individual_customers
    ADD CONSTRAINT individual_customers_pkey PRIMARY KEY (id);


--
-- TOC entry 3316 (class 2606 OID 19817)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- TOC entry 3318 (class 2606 OID 19819)
-- Name: payment_types payment_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_types
    ADD CONSTRAINT payment_types_pkey PRIMARY KEY (id);


--
-- TOC entry 3320 (class 2606 OID 19821)
-- Name: product_colours product_colours_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_colours
    ADD CONSTRAINT product_colours_pkey PRIMARY KEY (id);


--
-- TOC entry 3322 (class 2606 OID 19823)
-- Name: product_order product_order_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_order
    ADD CONSTRAINT product_order_pkey PRIMARY KEY (id);


--
-- TOC entry 3324 (class 2606 OID 19825)
-- Name: product_seller product_seller_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_seller
    ADD CONSTRAINT product_seller_pkey PRIMARY KEY (id);


--
-- TOC entry 3326 (class 2606 OID 19827)
-- Name: product_size product_size_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_size
    ADD CONSTRAINT product_size_pkey PRIMARY KEY (id);


--
-- TOC entry 3328 (class 2606 OID 19829)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- TOC entry 3330 (class 2606 OID 19831)
-- Name: refunds refunds_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.refunds
    ADD CONSTRAINT refunds_pkey PRIMARY KEY (id);


--
-- TOC entry 3332 (class 2606 OID 19833)
-- Name: sellers sellers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sellers
    ADD CONSTRAINT sellers_pkey PRIMARY KEY (id);


--
-- TOC entry 3334 (class 2606 OID 19835)
-- Name: shippers shippers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shippers
    ADD CONSTRAINT shippers_pkey PRIMARY KEY (id);


--
-- TOC entry 3336 (class 2606 OID 19837)
-- Name: size size_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.size
    ADD CONSTRAINT size_pkey PRIMARY KEY (id);


--
-- TOC entry 3338 (class 2606 OID 19839)
-- Name: suppliers suppliers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT suppliers_pkey PRIMARY KEY (id);


--
-- TOC entry 3340 (class 2606 OID 20007)
-- Name: town town_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.town
    ADD CONSTRAINT town_pkey PRIMARY KEY (id);


--
-- TOC entry 3343 (class 2606 OID 19840)
-- Name: addresses addreses_city_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addreses_city_id_fkey FOREIGN KEY (city_id) REFERENCES public.cities(id) NOT VALID;


--
-- TOC entry 3344 (class 2606 OID 19845)
-- Name: addresses addreses_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addreses_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(id);


--
-- TOC entry 3345 (class 2606 OID 19850)
-- Name: basket_product basket_product_basket_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_product
    ADD CONSTRAINT basket_product_basket_id_fkey FOREIGN KEY (basket_id) REFERENCES public.baskets(id);


--
-- TOC entry 3346 (class 2606 OID 19855)
-- Name: basket_product basket_product_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_product
    ADD CONSTRAINT basket_product_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 3347 (class 2606 OID 19860)
-- Name: baskets baskets_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.baskets
    ADD CONSTRAINT baskets_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(id) NOT VALID;


--
-- TOC entry 3348 (class 2606 OID 19865)
-- Name: brands brands_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 3349 (class 2606 OID 19870)
-- Name: cities cities_country_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_country_id_fkey FOREIGN KEY (country_id) REFERENCES public.countries(id) NOT VALID;


--
-- TOC entry 3370 (class 2606 OID 19987)
-- Name: town city_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.town
    ADD CONSTRAINT city_id FOREIGN KEY (city_id) REFERENCES public.cities(id);


--
-- TOC entry 3359 (class 2606 OID 19966)
-- Name: product_colours color_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_colours
    ADD CONSTRAINT color_id FOREIGN KEY (colours_id) REFERENCES public.colours(id) NOT VALID;


--
-- TOC entry 3350 (class 2606 OID 19875)
-- Name: corporate_customers corporate_customers_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corporate_customers
    ADD CONSTRAINT corporate_customers_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(id) NOT VALID;


--
-- TOC entry 3351 (class 2606 OID 19880)
-- Name: customers corporate_customers_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT corporate_customers_id FOREIGN KEY (corporate_customer_id) REFERENCES public.corporate_customers(id) NOT VALID;


--
-- TOC entry 3354 (class 2606 OID 19885)
-- Name: individual_customers individual_customers_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.individual_customers
    ADD CONSTRAINT individual_customers_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(id) NOT VALID;


--
-- TOC entry 3352 (class 2606 OID 19890)
-- Name: customers individual_customers_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT individual_customers_id FOREIGN KEY (individual_customer_id) REFERENCES public.individual_customers(id) NOT VALID;


--
-- TOC entry 3353 (class 2606 OID 19895)
-- Name: customers order_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT order_id FOREIGN KEY (order_id) REFERENCES public.orders(id) NOT VALID;


--
-- TOC entry 3355 (class 2606 OID 19900)
-- Name: orders orders_address_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_address_id_fkey FOREIGN KEY (address_id) REFERENCES public.addresses(id) NOT VALID;


--
-- TOC entry 3356 (class 2606 OID 19905)
-- Name: orders orders_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(id) NOT VALID;


--
-- TOC entry 3357 (class 2606 OID 19910)
-- Name: orders orders_payment_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_payment_type_id_fkey FOREIGN KEY (payment_type_id) REFERENCES public.payment_types(id) NOT VALID;


--
-- TOC entry 3358 (class 2606 OID 19915)
-- Name: orders orders_shipper_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_shipper_id_fkey FOREIGN KEY (shipper_id) REFERENCES public.shippers(id) NOT VALID;


--
-- TOC entry 3367 (class 2606 OID 19920)
-- Name: products product_category_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT product_category_fk FOREIGN KEY (category_id) REFERENCES public.categories(id);


--
-- TOC entry 3361 (class 2606 OID 19925)
-- Name: product_order product_order_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_order
    ADD CONSTRAINT product_order_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(id);


--
-- TOC entry 3362 (class 2606 OID 19930)
-- Name: product_order product_order_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_order
    ADD CONSTRAINT product_order_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 3363 (class 2606 OID 19935)
-- Name: product_seller product_seller_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_seller
    ADD CONSTRAINT product_seller_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 3364 (class 2606 OID 19940)
-- Name: product_seller product_seller_seller_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_seller
    ADD CONSTRAINT product_seller_seller_id_fkey FOREIGN KEY (seller_id) REFERENCES public.sellers(id);


--
-- TOC entry 3365 (class 2606 OID 19945)
-- Name: product_size product_size_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_size
    ADD CONSTRAINT product_size_fk FOREIGN KEY (size_id) REFERENCES public.products(id) NOT VALID;


--
-- TOC entry 3366 (class 2606 OID 19950)
-- Name: product_size product_size_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_size
    ADD CONSTRAINT product_size_id FOREIGN KEY (products_id) REFERENCES public.size(id) NOT VALID;


--
-- TOC entry 3360 (class 2606 OID 19971)
-- Name: product_colours products_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_colours
    ADD CONSTRAINT products_id FOREIGN KEY (products_id) REFERENCES public.products(id) NOT VALID;


--
-- TOC entry 3368 (class 2606 OID 19955)
-- Name: products products_supplier_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_supplier_id_fkey FOREIGN KEY (supplier_id) REFERENCES public.suppliers(id) NOT VALID;


--
-- TOC entry 3369 (class 2606 OID 19960)
-- Name: refunds refunds_product_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.refunds
    ADD CONSTRAINT refunds_product_order_id_fkey FOREIGN KEY (product_order_id) REFERENCES public.product_order(id) NOT VALID;


--
-- TOC entry 3371 (class 2606 OID 20017)
-- Name:  neigh town_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public." neigh"
    ADD CONSTRAINT town_id FOREIGN KEY (town_id) REFERENCES public.town(id);


-- Completed on 2022-12-02 17:53:22

--
-- PostgreSQL database dump complete
--

