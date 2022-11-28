--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

-- Started on 2022-11-28 11:23:46

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
-- TOC entry 237 (class 1259 OID 16532)
-- Name: addresses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.addresses (
    id integer NOT NULL,
    customer_id integer NOT NULL,
    title character varying NOT NULL,
    district_id integer NOT NULL,
    street character varying NOT NULL,
    building_name character varying NOT NULL,
    building_no character varying NOT NULL,
    flat integer NOT NULL,
    door_no integer NOT NULL,
    zipcode integer NOT NULL
);


ALTER TABLE public.addresses OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 16531)
-- Name: addresses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.addresses ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.addresses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 261 (class 1259 OID 16808)
-- Name: basket_products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.basket_products (
    id integer NOT NULL,
    basket_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.basket_products OWNER TO postgres;

--
-- TOC entry 260 (class 1259 OID 16807)
-- Name: basket_products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.basket_products ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.basket_products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 225 (class 1259 OID 16457)
-- Name: baskets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.baskets (
    id integer NOT NULL,
    total_cost money NOT NULL,
    customer_id integer NOT NULL
);


ALTER TABLE public.baskets OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16456)
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
-- TOC entry 269 (class 1259 OID 16872)
-- Name: brand_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.brand_categories (
    id integer NOT NULL,
    brand_id integer NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE public.brand_categories OWNER TO postgres;

--
-- TOC entry 268 (class 1259 OID 16871)
-- Name: brand_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.brand_categories ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.brand_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 265 (class 1259 OID 16840)
-- Name: brand_sellers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.brand_sellers (
    id integer NOT NULL,
    brand_id integer NOT NULL,
    seller_id integer NOT NULL
);


ALTER TABLE public.brand_sellers OWNER TO postgres;

--
-- TOC entry 264 (class 1259 OID 16839)
-- Name: brand_sellers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.brand_sellers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.brand_sellers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 223 (class 1259 OID 16442)
-- Name: brands; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.brands (
    id integer NOT NULL,
    brand_name character varying NOT NULL,
    country_of_origin character varying NOT NULL,
    service_region_id integer NOT NULL
);


ALTER TABLE public.brands OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16441)
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
-- TOC entry 215 (class 1259 OID 16400)
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying NOT NULL,
    type character varying
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16399)
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
-- TOC entry 241 (class 1259 OID 16548)
-- Name: cities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cities (
    id integer NOT NULL,
    city_name character varying NOT NULL,
    country_id integer NOT NULL
);


ALTER TABLE public.cities OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 16547)
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
-- TOC entry 227 (class 1259 OID 16470)
-- Name: colors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.colors (
    id integer NOT NULL,
    color_code character varying NOT NULL,
    color_name character varying NOT NULL
);


ALTER TABLE public.colors OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16469)
-- Name: colors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.colors ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.colors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 243 (class 1259 OID 16556)
-- Name: countries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.countries (
    id integer NOT NULL,
    country_name character varying NOT NULL
);


ALTER TABLE public.countries OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 16555)
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
-- TOC entry 233 (class 1259 OID 16509)
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    id integer NOT NULL,
    name character varying NOT NULL,
    surname character varying NOT NULL,
    "e-mail" character varying NOT NULL,
    phone character varying NOT NULL
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 16508)
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
-- TOC entry 239 (class 1259 OID 16540)
-- Name: districts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.districts (
    id integer NOT NULL,
    district_name character varying NOT NULL,
    city_id integer NOT NULL
);


ALTER TABLE public.districts OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 16539)
-- Name: districts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.districts ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.districts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 251 (class 1259 OID 16594)
-- Name: installments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.installments (
    id integer NOT NULL,
    intallment_type character varying NOT NULL,
    months smallint NOT NULL,
    description character varying NOT NULL
);


ALTER TABLE public.installments OWNER TO postgres;

--
-- TOC entry 250 (class 1259 OID 16593)
-- Name: installments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.installments ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.installments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 255 (class 1259 OID 16609)
-- Name: order_discounts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_discounts (
    id integer NOT NULL,
    discount_type character varying NOT NULL,
    discount_value double precision NOT NULL,
    description character varying
);


ALTER TABLE public.order_discounts OWNER TO postgres;

--
-- TOC entry 254 (class 1259 OID 16608)
-- Name: order_discounts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.order_discounts ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.order_discounts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 247 (class 1259 OID 16573)
-- Name: order_products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_products (
    id integer NOT NULL,
    product_id integer NOT NULL,
    order_id integer NOT NULL,
    quantity smallint NOT NULL,
    total_price money NOT NULL
);


ALTER TABLE public.order_products OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 16570)
-- Name: order_products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.order_products ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.order_products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 245 (class 1259 OID 16571)
-- Name: order_products_quantity_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.order_products_quantity_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.order_products_quantity_seq OWNER TO postgres;

--
-- TOC entry 3618 (class 0 OID 0)
-- Dependencies: 245
-- Name: order_products_quantity_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.order_products_quantity_seq OWNED BY public.order_products.quantity;


--
-- TOC entry 246 (class 1259 OID 16572)
-- Name: order_products_total_price_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.order_products_total_price_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.order_products_total_price_seq OWNER TO postgres;

--
-- TOC entry 3619 (class 0 OID 0)
-- Dependencies: 246
-- Name: order_products_total_price_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.order_products_total_price_seq OWNED BY public.order_products.total_price;


--
-- TOC entry 263 (class 1259 OID 16824)
-- Name: order_shipments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_shipments (
    id integer NOT NULL,
    shipment_id integer NOT NULL,
    order_id integer NOT NULL
);


ALTER TABLE public.order_shipments OWNER TO postgres;

--
-- TOC entry 262 (class 1259 OID 16823)
-- Name: order_shipments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.order_shipments ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.order_shipments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 249 (class 1259 OID 16581)
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    id integer NOT NULL,
    customer_id integer NOT NULL,
    total_cost money NOT NULL,
    payment_id integer NOT NULL,
    shipment_address_id integer NOT NULL,
    invoice_address_id integer NOT NULL,
    order_date date NOT NULL,
    order_status character varying NOT NULL
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- TOC entry 248 (class 1259 OID 16580)
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
-- TOC entry 257 (class 1259 OID 16617)
-- Name: payments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payments (
    id integer NOT NULL,
    payment_type character varying NOT NULL,
    date date,
    installment_id integer,
    desctiption character varying,
    discount_id integer
);


ALTER TABLE public.payments OWNER TO postgres;

--
-- TOC entry 256 (class 1259 OID 16616)
-- Name: payments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.payments ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.payments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 267 (class 1259 OID 16856)
-- Name: product_colors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_colors (
    id integer NOT NULL,
    product_id integer NOT NULL,
    color_id integer NOT NULL
);


ALTER TABLE public.product_colors OWNER TO postgres;

--
-- TOC entry 266 (class 1259 OID 16855)
-- Name: product_colors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.product_colors ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.product_colors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 229 (class 1259 OID 16485)
-- Name: product_discounts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_discounts (
    id integer NOT NULL,
    discount_type character varying NOT NULL,
    discount_value double precision NOT NULL
);


ALTER TABLE public.product_discounts OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16484)
-- Name: product_discounts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.product_discounts ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.product_discounts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 271 (class 1259 OID 16888)
-- Name: product_sellers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_sellers (
    id integer NOT NULL,
    product_id integer NOT NULL,
    seller_id integer NOT NULL
);


ALTER TABLE public.product_sellers OWNER TO postgres;

--
-- TOC entry 270 (class 1259 OID 16887)
-- Name: product_sellers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.product_sellers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.product_sellers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 273 (class 1259 OID 16905)
-- Name: product_sizes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_sizes (
    id integer NOT NULL,
    product_id integer NOT NULL,
    size_id integer NOT NULL
);


ALTER TABLE public.product_sizes OWNER TO postgres;

--
-- TOC entry 272 (class 1259 OID 16904)
-- Name: product_sizes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.product_sizes ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.product_sizes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 217 (class 1259 OID 16408)
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id integer NOT NULL,
    name character varying NOT NULL,
    unit_price money NOT NULL,
    stock integer NOT NULL,
    category_id integer NOT NULL,
    product_rating double precision,
    product_discount_id integer
);


ALTER TABLE public.products OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16407)
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
-- TOC entry 253 (class 1259 OID 16603)
-- Name: refund_products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.refund_products (
    id integer NOT NULL,
    order_product_id integer NOT NULL,
    refund_id integer NOT NULL,
    quantity smallint NOT NULL,
    total_price money NOT NULL
);


ALTER TABLE public.refund_products OWNER TO postgres;

--
-- TOC entry 252 (class 1259 OID 16602)
-- Name: refund_products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.refund_products ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.refund_products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 259 (class 1259 OID 16625)
-- Name: refunds; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.refunds (
    id integer NOT NULL,
    order_id integer NOT NULL,
    total_refund_price money NOT NULL,
    refund_reason character varying NOT NULL,
    shipment_code character varying NOT NULL
);


ALTER TABLE public.refunds OWNER TO postgres;

--
-- TOC entry 258 (class 1259 OID 16624)
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
-- TOC entry 231 (class 1259 OID 16501)
-- Name: sellers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sellers (
    id integer NOT NULL,
    name character varying NOT NULL,
    rating double precision,
    follower_count bigint NOT NULL,
    location_id integer NOT NULL,
    product_count bigint NOT NULL
);


ALTER TABLE public.sellers OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 16500)
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
-- TOC entry 219 (class 1259 OID 16421)
-- Name: shipment_brands; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shipment_brands (
    id integer NOT NULL,
    shipment_brand_name character varying NOT NULL,
    website character varying,
    service_region_id integer NOT NULL
);


ALTER TABLE public.shipment_brands OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16420)
-- Name: shipment_brands_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.shipment_brands ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.shipment_brands_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 221 (class 1259 OID 16429)
-- Name: shipments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shipments (
    id integer NOT NULL,
    shipment_brand_id integer NOT NULL,
    cost money NOT NULL
);


ALTER TABLE public.shipments OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16428)
-- Name: shipments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.shipments ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.shipments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 235 (class 1259 OID 16524)
-- Name: sizes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sizes (
    id integer NOT NULL,
    size_type character varying NOT NULL
);


ALTER TABLE public.sizes OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 16523)
-- Name: sizes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.sizes ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.sizes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 3315 (class 2604 OID 16576)
-- Name: order_products quantity; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_products ALTER COLUMN quantity SET DEFAULT nextval('public.order_products_quantity_seq'::regclass);


--
-- TOC entry 3316 (class 2604 OID 16588)
-- Name: order_products total_price; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_products ALTER COLUMN total_price SET DEFAULT nextval('public.order_products_total_price_seq'::regclass);


--
-- TOC entry 3576 (class 0 OID 16532)
-- Dependencies: 237
-- Data for Name: addresses; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.addresses (id, customer_id, title, district_id, street, building_name, building_no, flat, door_no, zipcode) OVERRIDING SYSTEM VALUE VALUES (1, 5, 'Eski Ev', 1, 'Güleryüz', 'Hüsnü', '17', 9, 37, 34675);
INSERT INTO public.addresses (id, customer_id, title, district_id, street, building_name, building_no, flat, door_no, zipcode) OVERRIDING SYSTEM VALUE VALUES (2, 4, 'Yusufların Ev', 3, 'Tomurcuk', 'Deniz', '22', 1, 4, 12436);
INSERT INTO public.addresses (id, customer_id, title, district_id, street, building_name, building_no, flat, door_no, zipcode) OVERRIDING SYSTEM VALUE VALUES (3, 3, 'Yan Ev', 5, 'Üzüm', 'Murat', '2', 2, 4, 54329);
INSERT INTO public.addresses (id, customer_id, title, district_id, street, building_name, building_no, flat, door_no, zipcode) OVERRIDING SYSTEM VALUE VALUES (4, 2, 'İş', 2, 'Onur', 'İnan', '7', 2, 7, 35462);
INSERT INTO public.addresses (id, customer_id, title, district_id, street, building_name, building_no, flat, door_no, zipcode) OVERRIDING SYSTEM VALUE VALUES (5, 1, 'Ev', 1, 'Patika', 'Feza', '20', 3, 12, 6550);


--
-- TOC entry 3600 (class 0 OID 16808)
-- Dependencies: 261
-- Data for Name: basket_products; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.basket_products (id, basket_id, product_id) OVERRIDING SYSTEM VALUE VALUES (1, 7, 4);
INSERT INTO public.basket_products (id, basket_id, product_id) OVERRIDING SYSTEM VALUE VALUES (2, 8, 8);


--
-- TOC entry 3564 (class 0 OID 16457)
-- Dependencies: 225
-- Data for Name: baskets; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.baskets (id, total_cost, customer_id) OVERRIDING SYSTEM VALUE VALUES (4, '£0.00', 5);
INSERT INTO public.baskets (id, total_cost, customer_id) OVERRIDING SYSTEM VALUE VALUES (5, '£0.00', 4);
INSERT INTO public.baskets (id, total_cost, customer_id) OVERRIDING SYSTEM VALUE VALUES (6, '£0.00', 1);
INSERT INTO public.baskets (id, total_cost, customer_id) OVERRIDING SYSTEM VALUE VALUES (7, '£189.90', 3);
INSERT INTO public.baskets (id, total_cost, customer_id) OVERRIDING SYSTEM VALUE VALUES (8, '£349.95', 2);


--
-- TOC entry 3608 (class 0 OID 16872)
-- Dependencies: 269
-- Data for Name: brand_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.brand_categories (id, brand_id, category_id) OVERRIDING SYSTEM VALUE VALUES (1, 5, 12);
INSERT INTO public.brand_categories (id, brand_id, category_id) OVERRIDING SYSTEM VALUE VALUES (2, 5, 11);
INSERT INTO public.brand_categories (id, brand_id, category_id) OVERRIDING SYSTEM VALUE VALUES (3, 5, 10);
INSERT INTO public.brand_categories (id, brand_id, category_id) OVERRIDING SYSTEM VALUE VALUES (4, 1, 9);
INSERT INTO public.brand_categories (id, brand_id, category_id) OVERRIDING SYSTEM VALUE VALUES (5, 1, 8);
INSERT INTO public.brand_categories (id, brand_id, category_id) OVERRIDING SYSTEM VALUE VALUES (6, 1, 7);
INSERT INTO public.brand_categories (id, brand_id, category_id) OVERRIDING SYSTEM VALUE VALUES (7, 1, 6);
INSERT INTO public.brand_categories (id, brand_id, category_id) OVERRIDING SYSTEM VALUE VALUES (8, 5, 8);
INSERT INTO public.brand_categories (id, brand_id, category_id) OVERRIDING SYSTEM VALUE VALUES (9, 5, 7);
INSERT INTO public.brand_categories (id, brand_id, category_id) OVERRIDING SYSTEM VALUE VALUES (10, 3, 6);
INSERT INTO public.brand_categories (id, brand_id, category_id) OVERRIDING SYSTEM VALUE VALUES (11, 3, 11);
INSERT INTO public.brand_categories (id, brand_id, category_id) OVERRIDING SYSTEM VALUE VALUES (12, 3, 9);


--
-- TOC entry 3604 (class 0 OID 16840)
-- Dependencies: 265
-- Data for Name: brand_sellers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.brand_sellers (id, brand_id, seller_id) OVERRIDING SYSTEM VALUE VALUES (1, 1, 4);
INSERT INTO public.brand_sellers (id, brand_id, seller_id) OVERRIDING SYSTEM VALUE VALUES (2, 1, 3);
INSERT INTO public.brand_sellers (id, brand_id, seller_id) OVERRIDING SYSTEM VALUE VALUES (3, 3, 5);
INSERT INTO public.brand_sellers (id, brand_id, seller_id) OVERRIDING SYSTEM VALUE VALUES (4, 3, 2);
INSERT INTO public.brand_sellers (id, brand_id, seller_id) OVERRIDING SYSTEM VALUE VALUES (5, 5, 2);


--
-- TOC entry 3562 (class 0 OID 16442)
-- Dependencies: 223
-- Data for Name: brands; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.brands (id, brand_name, country_of_origin, service_region_id) OVERRIDING SYSTEM VALUE VALUES (1, 'Mavi', 'Turkey', 1);
INSERT INTO public.brands (id, brand_name, country_of_origin, service_region_id) OVERRIDING SYSTEM VALUE VALUES (2, 'Zara', 'Spain', 3);
INSERT INTO public.brands (id, brand_name, country_of_origin, service_region_id) OVERRIDING SYSTEM VALUE VALUES (3, 'Zara', 'Spain', 1);
INSERT INTO public.brands (id, brand_name, country_of_origin, service_region_id) OVERRIDING SYSTEM VALUE VALUES (4, 'Pull & Bear', 'Spain', 3);
INSERT INTO public.brands (id, brand_name, country_of_origin, service_region_id) OVERRIDING SYSTEM VALUE VALUES (5, 'Pull & Bear', 'Spain', 1);


--
-- TOC entry 3554 (class 0 OID 16400)
-- Dependencies: 215
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.categories (id, name, type) OVERRIDING SYSTEM VALUE VALUES (6, 'Elbise', 'Giyim');
INSERT INTO public.categories (id, name, type) OVERRIDING SYSTEM VALUE VALUES (7, 'Şapka', 'Aksesuar');
INSERT INTO public.categories (id, name, type) OVERRIDING SYSTEM VALUE VALUES (8, 'Pantolon', 'Giyim');
INSERT INTO public.categories (id, name, type) OVERRIDING SYSTEM VALUE VALUES (9, 'Takı', 'Aksesuar');
INSERT INTO public.categories (id, name, type) OVERRIDING SYSTEM VALUE VALUES (10, 'Bilgisayar Bileşenleri', 'Teknoloji');
INSERT INTO public.categories (id, name, type) OVERRIDING SYSTEM VALUE VALUES (11, 'Mutfak Aletleri', 'Teknoloji');
INSERT INTO public.categories (id, name, type) OVERRIDING SYSTEM VALUE VALUES (12, 'Lego', 'Oyuncak');


--
-- TOC entry 3580 (class 0 OID 16548)
-- Dependencies: 241
-- Data for Name: cities; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.cities (id, city_name, country_id) OVERRIDING SYSTEM VALUE VALUES (1, 'Ankara', 1);
INSERT INTO public.cities (id, city_name, country_id) OVERRIDING SYSTEM VALUE VALUES (2, 'İstanbul', 1);
INSERT INTO public.cities (id, city_name, country_id) OVERRIDING SYSTEM VALUE VALUES (3, 'İzmir', 1);
INSERT INTO public.cities (id, city_name, country_id) OVERRIDING SYSTEM VALUE VALUES (4, 'Bursa', 1);
INSERT INTO public.cities (id, city_name, country_id) OVERRIDING SYSTEM VALUE VALUES (5, 'Antalya', 1);
INSERT INTO public.cities (id, city_name, country_id) OVERRIDING SYSTEM VALUE VALUES (6, 'Madrid', 3);
INSERT INTO public.cities (id, city_name, country_id) OVERRIDING SYSTEM VALUE VALUES (7, 'Milan', 4);
INSERT INTO public.cities (id, city_name, country_id) OVERRIDING SYSTEM VALUE VALUES (8, 'Rabat', 5);
INSERT INTO public.cities (id, city_name, country_id) OVERRIDING SYSTEM VALUE VALUES (9, 'Sofya', 2);


--
-- TOC entry 3566 (class 0 OID 16470)
-- Dependencies: 227
-- Data for Name: colors; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.colors (id, color_code, color_name) OVERRIDING SYSTEM VALUE VALUES (1, '#00000', 'Beyaz');
INSERT INTO public.colors (id, color_code, color_name) OVERRIDING SYSTEM VALUE VALUES (2, '#FFFFF', 'Siyah');
INSERT INTO public.colors (id, color_code, color_name) OVERRIDING SYSTEM VALUE VALUES (3, '#22222', 'Kırmızı');
INSERT INTO public.colors (id, color_code, color_name) OVERRIDING SYSTEM VALUE VALUES (4, '#33333', 'Yeşil');
INSERT INTO public.colors (id, color_code, color_name) OVERRIDING SYSTEM VALUE VALUES (5, '#78451', 'Gri');


--
-- TOC entry 3582 (class 0 OID 16556)
-- Dependencies: 243
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.countries (id, country_name) OVERRIDING SYSTEM VALUE VALUES (1, 'Turkey');
INSERT INTO public.countries (id, country_name) OVERRIDING SYSTEM VALUE VALUES (2, 'Bulgaria');
INSERT INTO public.countries (id, country_name) OVERRIDING SYSTEM VALUE VALUES (3, 'Spain');
INSERT INTO public.countries (id, country_name) OVERRIDING SYSTEM VALUE VALUES (4, 'Italy');
INSERT INTO public.countries (id, country_name) OVERRIDING SYSTEM VALUE VALUES (5, 'Morocco');


--
-- TOC entry 3572 (class 0 OID 16509)
-- Dependencies: 233
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.customers (id, name, surname, "e-mail", phone) OVERRIDING SYSTEM VALUE VALUES (1, 'Volkan', 'Kahraman', 'volkan.kahraman@etiya.com', '+905552222222');
INSERT INTO public.customers (id, name, surname, "e-mail", phone) OVERRIDING SYSTEM VALUE VALUES (2, 'Hilal', 'Özkır', 'hilal.ozkır@etiya.com', '+905072222222');
INSERT INTO public.customers (id, name, surname, "e-mail", phone) OVERRIDING SYSTEM VALUE VALUES (3, 'Fatih', 'Bozkurt', 'fatih.bozkurt@etiya.com', '+905062222222');
INSERT INTO public.customers (id, name, surname, "e-mail", phone) OVERRIDING SYSTEM VALUE VALUES (4, 'Onur', 'Sataner', 'onur.sataner@etiya.com', '+905052222222');
INSERT INTO public.customers (id, name, surname, "e-mail", phone) OVERRIDING SYSTEM VALUE VALUES (5, 'Beycan', 'Gözenoğlu', 'beycan.gozenoglu@etiya.com', '+905382222222');


--
-- TOC entry 3578 (class 0 OID 16540)
-- Dependencies: 239
-- Data for Name: districts; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.districts (id, district_name, city_id) OVERRIDING SYSTEM VALUE VALUES (1, 'Çankaya', 1);
INSERT INTO public.districts (id, district_name, city_id) OVERRIDING SYSTEM VALUE VALUES (2, 'Keçiören', 1);
INSERT INTO public.districts (id, district_name, city_id) OVERRIDING SYSTEM VALUE VALUES (3, 'Etlik', 1);
INSERT INTO public.districts (id, district_name, city_id) OVERRIDING SYSTEM VALUE VALUES (4, 'Mamak', 1);
INSERT INTO public.districts (id, district_name, city_id) OVERRIDING SYSTEM VALUE VALUES (5, 'Kadıköy', 2);
INSERT INTO public.districts (id, district_name, city_id) OVERRIDING SYSTEM VALUE VALUES (6, 'Bostancı', 2);
INSERT INTO public.districts (id, district_name, city_id) OVERRIDING SYSTEM VALUE VALUES (7, 'Başakşehir', 2);
INSERT INTO public.districts (id, district_name, city_id) OVERRIDING SYSTEM VALUE VALUES (8, 'Beykoz', 2);
INSERT INTO public.districts (id, district_name, city_id) OVERRIDING SYSTEM VALUE VALUES (9, 'Beşiktaş', 2);
INSERT INTO public.districts (id, district_name, city_id) OVERRIDING SYSTEM VALUE VALUES (10, 'Bornova', 3);
INSERT INTO public.districts (id, district_name, city_id) OVERRIDING SYSTEM VALUE VALUES (11, 'Karşıyaka', 3);


--
-- TOC entry 3590 (class 0 OID 16594)
-- Dependencies: 251
-- Data for Name: installments; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.installments (id, intallment_type, months, description) OVERRIDING SYSTEM VALUE VALUES (1, 'Aylık', 3, 'Faizsiz Taksit');
INSERT INTO public.installments (id, intallment_type, months, description) OVERRIDING SYSTEM VALUE VALUES (2, 'Aylık', 6, 'Faizsiz Taksit');
INSERT INTO public.installments (id, intallment_type, months, description) OVERRIDING SYSTEM VALUE VALUES (3, 'Aylık', 9, 'Faizsiz Taksit');
INSERT INTO public.installments (id, intallment_type, months, description) OVERRIDING SYSTEM VALUE VALUES (4, 'Aylık', 12, 'Faizli Taksit');
INSERT INTO public.installments (id, intallment_type, months, description) OVERRIDING SYSTEM VALUE VALUES (5, '3 ay Ertelemeli', 9, 'Ertelemeli Fazili Taksit');


--
-- TOC entry 3594 (class 0 OID 16609)
-- Dependencies: 255
-- Data for Name: order_discounts; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.order_discounts (id, discount_type, discount_value, description) OVERRIDING SYSTEM VALUE VALUES (1, 'İlk Alışverişe Özel', 50, 'Alt Sınır 100 TL');
INSERT INTO public.order_discounts (id, discount_type, discount_value, description) OVERRIDING SYSTEM VALUE VALUES (2, 'Kupon', 50, 'Alt Sınır 100 TL');
INSERT INTO public.order_discounts (id, discount_type, discount_value, description) OVERRIDING SYSTEM VALUE VALUES (3, 'Kupon', 100, 'Alt Sınır 200 TL');


--
-- TOC entry 3586 (class 0 OID 16573)
-- Dependencies: 247
-- Data for Name: order_products; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.order_products (id, product_id, order_id, quantity, total_price) OVERRIDING SYSTEM VALUE VALUES (1, 7, 2, 1, '£24.20');
INSERT INTO public.order_products (id, product_id, order_id, quantity, total_price) OVERRIDING SYSTEM VALUE VALUES (2, 4, 2, 1, '£189.90');
INSERT INTO public.order_products (id, product_id, order_id, quantity, total_price) OVERRIDING SYSTEM VALUE VALUES (3, 5, 3, 1, '£149.99');
INSERT INTO public.order_products (id, product_id, order_id, quantity, total_price) OVERRIDING SYSTEM VALUE VALUES (4, 8, 1, 1, '£349.95');
INSERT INTO public.order_products (id, product_id, order_id, quantity, total_price) OVERRIDING SYSTEM VALUE VALUES (5, 8, 4, 2, '£699.90');
INSERT INTO public.order_products (id, product_id, order_id, quantity, total_price) OVERRIDING SYSTEM VALUE VALUES (6, 4, 4, 2, '£379.80');
INSERT INTO public.order_products (id, product_id, order_id, quantity, total_price) OVERRIDING SYSTEM VALUE VALUES (7, 6, 5, 1, '£2,763.84');


--
-- TOC entry 3602 (class 0 OID 16824)
-- Dependencies: 263
-- Data for Name: order_shipments; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.order_shipments (id, shipment_id, order_id) OVERRIDING SYSTEM VALUE VALUES (1, 1, 1);
INSERT INTO public.order_shipments (id, shipment_id, order_id) OVERRIDING SYSTEM VALUE VALUES (2, 2, 2);
INSERT INTO public.order_shipments (id, shipment_id, order_id) OVERRIDING SYSTEM VALUE VALUES (3, 1, 2);
INSERT INTO public.order_shipments (id, shipment_id, order_id) OVERRIDING SYSTEM VALUE VALUES (4, 2, 3);
INSERT INTO public.order_shipments (id, shipment_id, order_id) OVERRIDING SYSTEM VALUE VALUES (5, 1, 4);
INSERT INTO public.order_shipments (id, shipment_id, order_id) OVERRIDING SYSTEM VALUE VALUES (6, 3, 4);
INSERT INTO public.order_shipments (id, shipment_id, order_id) OVERRIDING SYSTEM VALUE VALUES (7, 3, 5);


--
-- TOC entry 3588 (class 0 OID 16581)
-- Dependencies: 249
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.orders (id, customer_id, total_cost, payment_id, shipment_address_id, invoice_address_id, order_date, order_status) OVERRIDING SYSTEM VALUE VALUES (3, 3, '£149.99', 11, 3, 3, '2022-11-25', 'Teslim Edildi');
INSERT INTO public.orders (id, customer_id, total_cost, payment_id, shipment_address_id, invoice_address_id, order_date, order_status) OVERRIDING SYSTEM VALUE VALUES (1, 1, '£349.95', 13, 5, 5, '2022-11-25', 'Teslim Edildi');
INSERT INTO public.orders (id, customer_id, total_cost, payment_id, shipment_address_id, invoice_address_id, order_date, order_status) OVERRIDING SYSTEM VALUE VALUES (5, 5, '£2,763.84', 9, 1, 1, '2022-11-07', 'Teslim Edildi');
INSERT INTO public.orders (id, customer_id, total_cost, payment_id, shipment_address_id, invoice_address_id, order_date, order_status) OVERRIDING SYSTEM VALUE VALUES (2, 2, '£214.10', 12, 4, 4, '2022-11-19', 'Teslim Edildi');
INSERT INTO public.orders (id, customer_id, total_cost, payment_id, shipment_address_id, invoice_address_id, order_date, order_status) OVERRIDING SYSTEM VALUE VALUES (4, 4, '£1,079.70', 10, 2, 2, '2022-11-22', 'Kargoda');


--
-- TOC entry 3596 (class 0 OID 16617)
-- Dependencies: 257
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.payments (id, payment_type, date, installment_id, desctiption, discount_id) OVERRIDING SYSTEM VALUE VALUES (9, 'Kredi Kartı', '2022-11-06', 4, NULL, NULL);
INSERT INTO public.payments (id, payment_type, date, installment_id, desctiption, discount_id) OVERRIDING SYSTEM VALUE VALUES (11, 'Etiya Cüzdan', '2022-11-28', NULL, NULL, 2);
INSERT INTO public.payments (id, payment_type, date, installment_id, desctiption, discount_id) OVERRIDING SYSTEM VALUE VALUES (12, 'Banka Kartı', '2022-11-20', NULL, NULL, 3);
INSERT INTO public.payments (id, payment_type, date, installment_id, desctiption, discount_id) OVERRIDING SYSTEM VALUE VALUES (13, 'Kredi Kartı', '2022-11-28', 2, NULL, 1);
INSERT INTO public.payments (id, payment_type, date, installment_id, desctiption, discount_id) OVERRIDING SYSTEM VALUE VALUES (10, 'Nakit', NULL, NULL, 'Kapıda Ödeme', 1);


--
-- TOC entry 3606 (class 0 OID 16856)
-- Dependencies: 267
-- Data for Name: product_colors; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.product_colors (id, product_id, color_id) OVERRIDING SYSTEM VALUE VALUES (1, 8, 4);
INSERT INTO public.product_colors (id, product_id, color_id) OVERRIDING SYSTEM VALUE VALUES (2, 8, 3);
INSERT INTO public.product_colors (id, product_id, color_id) OVERRIDING SYSTEM VALUE VALUES (3, 8, 2);
INSERT INTO public.product_colors (id, product_id, color_id) OVERRIDING SYSTEM VALUE VALUES (4, 7, 5);
INSERT INTO public.product_colors (id, product_id, color_id) OVERRIDING SYSTEM VALUE VALUES (5, 7, 1);
INSERT INTO public.product_colors (id, product_id, color_id) OVERRIDING SYSTEM VALUE VALUES (6, 6, 2);
INSERT INTO public.product_colors (id, product_id, color_id) OVERRIDING SYSTEM VALUE VALUES (7, 5, 3);
INSERT INTO public.product_colors (id, product_id, color_id) OVERRIDING SYSTEM VALUE VALUES (8, 5, 1);
INSERT INTO public.product_colors (id, product_id, color_id) OVERRIDING SYSTEM VALUE VALUES (9, 4, 4);
INSERT INTO public.product_colors (id, product_id, color_id) OVERRIDING SYSTEM VALUE VALUES (10, 4, 3);


--
-- TOC entry 3568 (class 0 OID 16485)
-- Dependencies: 229
-- Data for Name: product_discounts; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.product_discounts (id, discount_type, discount_value) OVERRIDING SYSTEM VALUE VALUES (1, 'Yüzdesel', 0.2);
INSERT INTO public.product_discounts (id, discount_type, discount_value) OVERRIDING SYSTEM VALUE VALUES (2, 'Değersel', 50);
INSERT INTO public.product_discounts (id, discount_type, discount_value) OVERRIDING SYSTEM VALUE VALUES (3, 'Değersel', 150);
INSERT INTO public.product_discounts (id, discount_type, discount_value) OVERRIDING SYSTEM VALUE VALUES (4, 'Yüzdesel', 0.1);


--
-- TOC entry 3610 (class 0 OID 16888)
-- Dependencies: 271
-- Data for Name: product_sellers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.product_sellers (id, product_id, seller_id) OVERRIDING SYSTEM VALUE VALUES (1, 4, 1);
INSERT INTO public.product_sellers (id, product_id, seller_id) OVERRIDING SYSTEM VALUE VALUES (2, 6, 4);
INSERT INTO public.product_sellers (id, product_id, seller_id) OVERRIDING SYSTEM VALUE VALUES (3, 6, 2);
INSERT INTO public.product_sellers (id, product_id, seller_id) OVERRIDING SYSTEM VALUE VALUES (4, 5, 4);
INSERT INTO public.product_sellers (id, product_id, seller_id) OVERRIDING SYSTEM VALUE VALUES (5, 5, 5);
INSERT INTO public.product_sellers (id, product_id, seller_id) OVERRIDING SYSTEM VALUE VALUES (6, 8, 5);
INSERT INTO public.product_sellers (id, product_id, seller_id) OVERRIDING SYSTEM VALUE VALUES (7, 8, 4);
INSERT INTO public.product_sellers (id, product_id, seller_id) OVERRIDING SYSTEM VALUE VALUES (8, 7, 5);
INSERT INTO public.product_sellers (id, product_id, seller_id) OVERRIDING SYSTEM VALUE VALUES (9, 7, 4);
INSERT INTO public.product_sellers (id, product_id, seller_id) OVERRIDING SYSTEM VALUE VALUES (10, 7, 3);


--
-- TOC entry 3612 (class 0 OID 16905)
-- Dependencies: 273
-- Data for Name: product_sizes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.product_sizes (id, product_id, size_id) OVERRIDING SYSTEM VALUE VALUES (1, 4, 5);
INSERT INTO public.product_sizes (id, product_id, size_id) OVERRIDING SYSTEM VALUE VALUES (2, 5, 4);
INSERT INTO public.product_sizes (id, product_id, size_id) OVERRIDING SYSTEM VALUE VALUES (3, 5, 6);
INSERT INTO public.product_sizes (id, product_id, size_id) OVERRIDING SYSTEM VALUE VALUES (4, 7, 1);
INSERT INTO public.product_sizes (id, product_id, size_id) OVERRIDING SYSTEM VALUE VALUES (5, 8, 7);
INSERT INTO public.product_sizes (id, product_id, size_id) OVERRIDING SYSTEM VALUE VALUES (6, 8, 6);
INSERT INTO public.product_sizes (id, product_id, size_id) OVERRIDING SYSTEM VALUE VALUES (7, 8, 5);
INSERT INTO public.product_sizes (id, product_id, size_id) OVERRIDING SYSTEM VALUE VALUES (8, 8, 4);
INSERT INTO public.product_sizes (id, product_id, size_id) OVERRIDING SYSTEM VALUE VALUES (9, 8, 3);
INSERT INTO public.product_sizes (id, product_id, size_id) OVERRIDING SYSTEM VALUE VALUES (10, 8, 2);


--
-- TOC entry 3556 (class 0 OID 16408)
-- Dependencies: 217
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.products (id, name, unit_price, stock, category_id, product_rating, product_discount_id) OVERRIDING SYSTEM VALUE VALUES (4, 'Technic Yarış Uçağı 42117 Model Uçak', '£189.90', 150, 12, 4.1, 4);
INSERT INTO public.products (id, name, unit_price, stock, category_id, product_rating, product_discount_id) OVERRIDING SYSTEM VALUE VALUES (6, 'Ryzen 5 5600 4.4ghz 35mb 65w Am4 Işlemci', '£2,763.84', 15, 10, 4.8, 3);
INSERT INTO public.products (id, name, unit_price, stock, category_id, product_rating, product_discount_id) OVERRIDING SYSTEM VALUE VALUES (7, 'Çelik Halka Küpe', '£24.20', 1000, 9, 2.3, 4);
INSERT INTO public.products (id, name, unit_price, stock, category_id, product_rating, product_discount_id) OVERRIDING SYSTEM VALUE VALUES (8, 'Kısa Kruvaze Elbise', '£349.95', 50, 6, 4.2, 3);
INSERT INTO public.products (id, name, unit_price, stock, category_id, product_rating, product_discount_id) OVERRIDING SYSTEM VALUE VALUES (5, 'Iç Dış Granit Ocak Üstü Tost Makinesi', '£149.99', 3250, 11, 4.7, NULL);


--
-- TOC entry 3592 (class 0 OID 16603)
-- Dependencies: 253
-- Data for Name: refund_products; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.refund_products (id, order_product_id, refund_id, quantity, total_price) OVERRIDING SYSTEM VALUE VALUES (1, 1, 1, 1, '£24.20');
INSERT INTO public.refund_products (id, order_product_id, refund_id, quantity, total_price) OVERRIDING SYSTEM VALUE VALUES (2, 5, 2, 2, '£699.90');


--
-- TOC entry 3598 (class 0 OID 16625)
-- Dependencies: 259
-- Data for Name: refunds; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.refunds (id, order_id, total_refund_price, refund_reason, shipment_code) OVERRIDING SYSTEM VALUE VALUES (1, 2, '£24.20', 'Kalitesiz', '1238497B');
INSERT INTO public.refunds (id, order_id, total_refund_price, refund_reason, shipment_code) OVERRIDING SYSTEM VALUE VALUES (2, 4, '£649.90', 'Bedeni Küçük', '5551234A');


--
-- TOC entry 3570 (class 0 OID 16501)
-- Dependencies: 231
-- Data for Name: sellers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.sellers (id, name, rating, follower_count, location_id, product_count) OVERRIDING SYSTEM VALUE VALUES (1, 'LEGO Certified Store', 9.1, 6200, 6, 402);
INSERT INTO public.sellers (id, name, rating, follower_count, location_id, product_count) OVERRIDING SYSTEM VALUE VALUES (2, 'bilişimstore', 8.8, 1200, 4, 210);
INSERT INTO public.sellers (id, name, rating, follower_count, location_id, product_count) OVERRIDING SYSTEM VALUE VALUES (3, 'Elif İç Giyim', 9.6, 20700, 5, 826);
INSERT INTO public.sellers (id, name, rating, follower_count, location_id, product_count) OVERRIDING SYSTEM VALUE VALUES (4, 'Trendyol', 8.9, 815200, 1, 104000);
INSERT INTO public.sellers (id, name, rating, follower_count, location_id, product_count) OVERRIDING SYSTEM VALUE VALUES (5, 'Stradivarius', 8.1, 357200, 2, 3100);


--
-- TOC entry 3558 (class 0 OID 16421)
-- Dependencies: 219
-- Data for Name: shipment_brands; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.shipment_brands (id, shipment_brand_name, website, service_region_id) OVERRIDING SYSTEM VALUE VALUES (2, 'Aras Kargo', 'https://www.araskargo.com.tr/', 5);
INSERT INTO public.shipment_brands (id, shipment_brand_name, website, service_region_id) OVERRIDING SYSTEM VALUE VALUES (3, 'Aras Kargo', 'https://www.araskargo.com.tr/', 1);
INSERT INTO public.shipment_brands (id, shipment_brand_name, website, service_region_id) OVERRIDING SYSTEM VALUE VALUES (4, 'Yurtiçi Kargo', 'https://www.yurticikargo.com/', 3);
INSERT INTO public.shipment_brands (id, shipment_brand_name, website, service_region_id) OVERRIDING SYSTEM VALUE VALUES (5, 'Yurtiçi Kargo', 'https://www.yurticikargo.com/', 4);
INSERT INTO public.shipment_brands (id, shipment_brand_name, website, service_region_id) OVERRIDING SYSTEM VALUE VALUES (6, 'Yurtiçi Kargo', 'https://www.yurticikargo.com/', 1);
INSERT INTO public.shipment_brands (id, shipment_brand_name, website, service_region_id) OVERRIDING SYSTEM VALUE VALUES (7, 'UPS', 'https://www.ups.com.tr', 7);
INSERT INTO public.shipment_brands (id, shipment_brand_name, website, service_region_id) OVERRIDING SYSTEM VALUE VALUES (8, 'UPS', 'https://www.ups.com.tr', 4);
INSERT INTO public.shipment_brands (id, shipment_brand_name, website, service_region_id) OVERRIDING SYSTEM VALUE VALUES (9, 'UPS', 'https://www.ups.com.tr', 3);
INSERT INTO public.shipment_brands (id, shipment_brand_name, website, service_region_id) OVERRIDING SYSTEM VALUE VALUES (10, 'UPS', 'https://www.ups.com.tr', 2);
INSERT INTO public.shipment_brands (id, shipment_brand_name, website, service_region_id) OVERRIDING SYSTEM VALUE VALUES (11, 'UPS', 'https://www.ups.com.tr', 1);


--
-- TOC entry 3560 (class 0 OID 16429)
-- Dependencies: 221
-- Data for Name: shipments; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.shipments (id, shipment_brand_id, cost) OVERRIDING SYSTEM VALUE VALUES (1, 4, '£12.00');
INSERT INTO public.shipments (id, shipment_brand_id, cost) OVERRIDING SYSTEM VALUE VALUES (2, 2, '£8.99');
INSERT INTO public.shipments (id, shipment_brand_id, cost) OVERRIDING SYSTEM VALUE VALUES (3, 7, '£25.00');


--
-- TOC entry 3574 (class 0 OID 16524)
-- Dependencies: 235
-- Data for Name: sizes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.sizes (id, size_type) OVERRIDING SYSTEM VALUE VALUES (1, '45');
INSERT INTO public.sizes (id, size_type) OVERRIDING SYSTEM VALUE VALUES (2, 'XXL');
INSERT INTO public.sizes (id, size_type) OVERRIDING SYSTEM VALUE VALUES (3, 'XL');
INSERT INTO public.sizes (id, size_type) OVERRIDING SYSTEM VALUE VALUES (4, 'L');
INSERT INTO public.sizes (id, size_type) OVERRIDING SYSTEM VALUE VALUES (5, 'M');
INSERT INTO public.sizes (id, size_type) OVERRIDING SYSTEM VALUE VALUES (6, 'S');
INSERT INTO public.sizes (id, size_type) OVERRIDING SYSTEM VALUE VALUES (7, 'XS');


--
-- TOC entry 3620 (class 0 OID 0)
-- Dependencies: 236
-- Name: addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.addresses_id_seq', 5, true);


--
-- TOC entry 3621 (class 0 OID 0)
-- Dependencies: 260
-- Name: basket_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.basket_products_id_seq', 2, true);


--
-- TOC entry 3622 (class 0 OID 0)
-- Dependencies: 224
-- Name: baskets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.baskets_id_seq', 8, true);


--
-- TOC entry 3623 (class 0 OID 0)
-- Dependencies: 268
-- Name: brand_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.brand_categories_id_seq', 12, true);


--
-- TOC entry 3624 (class 0 OID 0)
-- Dependencies: 264
-- Name: brand_sellers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.brand_sellers_id_seq', 5, true);


--
-- TOC entry 3625 (class 0 OID 0)
-- Dependencies: 222
-- Name: brands_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.brands_id_seq', 5, true);


--
-- TOC entry 3626 (class 0 OID 0)
-- Dependencies: 214
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 12, true);


--
-- TOC entry 3627 (class 0 OID 0)
-- Dependencies: 240
-- Name: cities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cities_id_seq', 9, true);


--
-- TOC entry 3628 (class 0 OID 0)
-- Dependencies: 226
-- Name: colors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.colors_id_seq', 5, true);


--
-- TOC entry 3629 (class 0 OID 0)
-- Dependencies: 242
-- Name: countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.countries_id_seq', 5, true);


--
-- TOC entry 3630 (class 0 OID 0)
-- Dependencies: 232
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_id_seq', 5, true);


--
-- TOC entry 3631 (class 0 OID 0)
-- Dependencies: 238
-- Name: districts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.districts_id_seq', 11, true);


--
-- TOC entry 3632 (class 0 OID 0)
-- Dependencies: 250
-- Name: installments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.installments_id_seq', 5, true);


--
-- TOC entry 3633 (class 0 OID 0)
-- Dependencies: 254
-- Name: order_discounts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_discounts_id_seq', 3, true);


--
-- TOC entry 3634 (class 0 OID 0)
-- Dependencies: 244
-- Name: order_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_products_id_seq', 7, true);


--
-- TOC entry 3635 (class 0 OID 0)
-- Dependencies: 245
-- Name: order_products_quantity_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_products_quantity_seq', 1, false);


--
-- TOC entry 3636 (class 0 OID 0)
-- Dependencies: 246
-- Name: order_products_total_price_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_products_total_price_seq', 1, false);


--
-- TOC entry 3637 (class 0 OID 0)
-- Dependencies: 262
-- Name: order_shipments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_shipments_id_seq', 7, true);


--
-- TOC entry 3638 (class 0 OID 0)
-- Dependencies: 248
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_id_seq', 5, true);


--
-- TOC entry 3639 (class 0 OID 0)
-- Dependencies: 256
-- Name: payments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payments_id_seq', 13, true);


--
-- TOC entry 3640 (class 0 OID 0)
-- Dependencies: 266
-- Name: product_colors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_colors_id_seq', 10, true);


--
-- TOC entry 3641 (class 0 OID 0)
-- Dependencies: 228
-- Name: product_discounts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_discounts_id_seq', 5, true);


--
-- TOC entry 3642 (class 0 OID 0)
-- Dependencies: 270
-- Name: product_sellers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_sellers_id_seq', 10, true);


--
-- TOC entry 3643 (class 0 OID 0)
-- Dependencies: 272
-- Name: product_sizes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_sizes_id_seq', 10, true);


--
-- TOC entry 3644 (class 0 OID 0)
-- Dependencies: 216
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 8, true);


--
-- TOC entry 3645 (class 0 OID 0)
-- Dependencies: 252
-- Name: refund_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.refund_products_id_seq', 2, true);


--
-- TOC entry 3646 (class 0 OID 0)
-- Dependencies: 258
-- Name: refunds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.refunds_id_seq', 2, true);


--
-- TOC entry 3647 (class 0 OID 0)
-- Dependencies: 230
-- Name: sellers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sellers_id_seq', 5, true);


--
-- TOC entry 3648 (class 0 OID 0)
-- Dependencies: 218
-- Name: shipment_brands_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.shipment_brands_id_seq', 11, true);


--
-- TOC entry 3649 (class 0 OID 0)
-- Dependencies: 220
-- Name: shipments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.shipments_id_seq', 3, true);


--
-- TOC entry 3650 (class 0 OID 0)
-- Dependencies: 234
-- Name: sizes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sizes_id_seq', 7, true);


--
-- TOC entry 3340 (class 2606 OID 16538)
-- Name: addresses addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_pkey PRIMARY KEY (id);


--
-- TOC entry 3362 (class 2606 OID 16812)
-- Name: basket_products basket_products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_products
    ADD CONSTRAINT basket_products_pkey PRIMARY KEY (id);


--
-- TOC entry 3328 (class 2606 OID 16461)
-- Name: baskets baskets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.baskets
    ADD CONSTRAINT baskets_pkey PRIMARY KEY (id);


--
-- TOC entry 3370 (class 2606 OID 16876)
-- Name: brand_categories brand_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brand_categories
    ADD CONSTRAINT brand_categories_pkey PRIMARY KEY (id);


--
-- TOC entry 3366 (class 2606 OID 16844)
-- Name: brand_sellers brand_sellers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brand_sellers
    ADD CONSTRAINT brand_sellers_pkey PRIMARY KEY (id);


--
-- TOC entry 3326 (class 2606 OID 16448)
-- Name: brands brands_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_pkey PRIMARY KEY (id);


--
-- TOC entry 3318 (class 2606 OID 16406)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- TOC entry 3344 (class 2606 OID 16554)
-- Name: cities cities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);


--
-- TOC entry 3330 (class 2606 OID 16476)
-- Name: colors colors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colors
    ADD CONSTRAINT colors_pkey PRIMARY KEY (id);


--
-- TOC entry 3346 (class 2606 OID 16562)
-- Name: countries countries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);


--
-- TOC entry 3336 (class 2606 OID 16515)
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- TOC entry 3342 (class 2606 OID 16546)
-- Name: districts districts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.districts
    ADD CONSTRAINT districts_pkey PRIMARY KEY (id);


--
-- TOC entry 3352 (class 2606 OID 16600)
-- Name: installments installments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.installments
    ADD CONSTRAINT installments_pkey PRIMARY KEY (id);


--
-- TOC entry 3356 (class 2606 OID 16615)
-- Name: order_discounts order_discounts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_discounts
    ADD CONSTRAINT order_discounts_pkey PRIMARY KEY (id);


--
-- TOC entry 3348 (class 2606 OID 16579)
-- Name: order_products order_products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_products
    ADD CONSTRAINT order_products_pkey PRIMARY KEY (id);


--
-- TOC entry 3364 (class 2606 OID 16828)
-- Name: order_shipments order_shipments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_shipments
    ADD CONSTRAINT order_shipments_pkey PRIMARY KEY (id);


--
-- TOC entry 3350 (class 2606 OID 16587)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- TOC entry 3358 (class 2606 OID 16623)
-- Name: payments payments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (id);


--
-- TOC entry 3368 (class 2606 OID 16860)
-- Name: product_colors product_colors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_colors
    ADD CONSTRAINT product_colors_pkey PRIMARY KEY (id);


--
-- TOC entry 3332 (class 2606 OID 16491)
-- Name: product_discounts product_discounts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_discounts
    ADD CONSTRAINT product_discounts_pkey PRIMARY KEY (id);


--
-- TOC entry 3372 (class 2606 OID 16892)
-- Name: product_sellers product_sellers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_sellers
    ADD CONSTRAINT product_sellers_pkey PRIMARY KEY (id);


--
-- TOC entry 3374 (class 2606 OID 16909)
-- Name: product_sizes product_sizes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_sizes
    ADD CONSTRAINT product_sizes_pkey PRIMARY KEY (id);


--
-- TOC entry 3320 (class 2606 OID 16414)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- TOC entry 3354 (class 2606 OID 16607)
-- Name: refund_products refund_products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.refund_products
    ADD CONSTRAINT refund_products_pkey PRIMARY KEY (id);


--
-- TOC entry 3360 (class 2606 OID 16631)
-- Name: refunds refunds_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.refunds
    ADD CONSTRAINT refunds_pkey PRIMARY KEY (id);


--
-- TOC entry 3334 (class 2606 OID 16507)
-- Name: sellers sellers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sellers
    ADD CONSTRAINT sellers_pkey PRIMARY KEY (id);


--
-- TOC entry 3322 (class 2606 OID 16427)
-- Name: shipment_brands shipment_brands_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shipment_brands
    ADD CONSTRAINT shipment_brands_pkey PRIMARY KEY (id);


--
-- TOC entry 3324 (class 2606 OID 16433)
-- Name: shipments shipments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shipments
    ADD CONSTRAINT shipments_pkey PRIMARY KEY (id);


--
-- TOC entry 3338 (class 2606 OID 16530)
-- Name: sizes sizes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sizes
    ADD CONSTRAINT sizes_pkey PRIMARY KEY (id);


--
-- TOC entry 3382 (class 2606 OID 16632)
-- Name: addresses address_customer_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT address_customer_fk FOREIGN KEY (customer_id) REFERENCES public.customers(id) NOT VALID;


--
-- TOC entry 3383 (class 2606 OID 16637)
-- Name: addresses address_district_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT address_district_fk FOREIGN KEY (district_id) REFERENCES public.districts(id) NOT VALID;


--
-- TOC entry 3380 (class 2606 OID 16652)
-- Name: baskets basket_customer_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.baskets
    ADD CONSTRAINT basket_customer_fk FOREIGN KEY (customer_id) REFERENCES public.customers(id) NOT VALID;


--
-- TOC entry 3397 (class 2606 OID 16813)
-- Name: basket_products basketproducts_basket_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_products
    ADD CONSTRAINT basketproducts_basket_fk FOREIGN KEY (basket_id) REFERENCES public.baskets(id);


--
-- TOC entry 3398 (class 2606 OID 16818)
-- Name: basket_products basketproducts_product_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_products
    ADD CONSTRAINT basketproducts_product_fk FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 3379 (class 2606 OID 16677)
-- Name: brands brand_country_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brand_country_fk FOREIGN KEY (service_region_id) REFERENCES public.countries(id) NOT VALID;


--
-- TOC entry 3405 (class 2606 OID 16877)
-- Name: brand_categories brandcategory_brand_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brand_categories
    ADD CONSTRAINT brandcategory_brand_fk FOREIGN KEY (brand_id) REFERENCES public.brands(id);


--
-- TOC entry 3406 (class 2606 OID 16882)
-- Name: brand_categories brandcategory_category_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brand_categories
    ADD CONSTRAINT brandcategory_category_fk FOREIGN KEY (category_id) REFERENCES public.categories(id);


--
-- TOC entry 3401 (class 2606 OID 16845)
-- Name: brand_sellers brandseller_brand_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brand_sellers
    ADD CONSTRAINT brandseller_brand_fk FOREIGN KEY (brand_id) REFERENCES public.brands(id);


--
-- TOC entry 3402 (class 2606 OID 16850)
-- Name: brand_sellers brandseller_seller_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brand_sellers
    ADD CONSTRAINT brandseller_seller_fk FOREIGN KEY (seller_id) REFERENCES public.sellers(id);


--
-- TOC entry 3385 (class 2606 OID 16682)
-- Name: cities city_country_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT city_country_fk FOREIGN KEY (country_id) REFERENCES public.countries(id) NOT VALID;


--
-- TOC entry 3384 (class 2606 OID 16687)
-- Name: districts district_city_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.districts
    ADD CONSTRAINT district_city_fk FOREIGN KEY (city_id) REFERENCES public.cities(id) NOT VALID;


--
-- TOC entry 3388 (class 2606 OID 16712)
-- Name: orders order_customer_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT order_customer_fk FOREIGN KEY (customer_id) REFERENCES public.customers(id) NOT VALID;


--
-- TOC entry 3389 (class 2606 OID 16727)
-- Name: orders order_invoiceaddress_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT order_invoiceaddress_fk FOREIGN KEY (invoice_address_id) REFERENCES public.addresses(id) NOT VALID;


--
-- TOC entry 3390 (class 2606 OID 16717)
-- Name: orders order_payment_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT order_payment_fk FOREIGN KEY (payment_id) REFERENCES public.payments(id) NOT VALID;


--
-- TOC entry 3391 (class 2606 OID 16722)
-- Name: orders order_shipmentaddress_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT order_shipmentaddress_fk FOREIGN KEY (shipment_address_id) REFERENCES public.addresses(id) NOT VALID;


--
-- TOC entry 3386 (class 2606 OID 16697)
-- Name: order_products orderproducts_order_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_products
    ADD CONSTRAINT orderproducts_order_fk FOREIGN KEY (order_id) REFERENCES public.orders(id) NOT VALID;


--
-- TOC entry 3387 (class 2606 OID 16692)
-- Name: order_products orderproducts_product_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_products
    ADD CONSTRAINT orderproducts_product_fk FOREIGN KEY (product_id) REFERENCES public.products(id) NOT VALID;


--
-- TOC entry 3399 (class 2606 OID 16829)
-- Name: order_shipments ordershipments_order_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_shipments
    ADD CONSTRAINT ordershipments_order_fk FOREIGN KEY (order_id) REFERENCES public.orders(id);


--
-- TOC entry 3400 (class 2606 OID 16834)
-- Name: order_shipments ordershipments_shipment_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_shipments
    ADD CONSTRAINT ordershipments_shipment_fk FOREIGN KEY (shipment_id) REFERENCES public.shipments(id);


--
-- TOC entry 3394 (class 2606 OID 16737)
-- Name: payments payment_discount_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payment_discount_fk FOREIGN KEY (discount_id) REFERENCES public.order_discounts(id) NOT VALID;


--
-- TOC entry 3395 (class 2606 OID 16732)
-- Name: payments payment_installment_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payment_installment_fk FOREIGN KEY (installment_id) REFERENCES public.installments(id) NOT VALID;


--
-- TOC entry 3375 (class 2606 OID 16415)
-- Name: products product_category_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT product_category_fk FOREIGN KEY (category_id) REFERENCES public.categories(id);


--
-- TOC entry 3376 (class 2606 OID 16772)
-- Name: products product_productdiscount_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT product_productdiscount_fk FOREIGN KEY (product_discount_id) REFERENCES public.product_discounts(id) NOT VALID;


--
-- TOC entry 3403 (class 2606 OID 16866)
-- Name: product_colors productcolors_color_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_colors
    ADD CONSTRAINT productcolors_color_fk FOREIGN KEY (color_id) REFERENCES public.colors(id);


--
-- TOC entry 3404 (class 2606 OID 16861)
-- Name: product_colors productcolors_product_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_colors
    ADD CONSTRAINT productcolors_product_fk FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 3407 (class 2606 OID 16893)
-- Name: product_sellers productseller_product_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_sellers
    ADD CONSTRAINT productseller_product_fk FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 3408 (class 2606 OID 16898)
-- Name: product_sellers productseller_seller_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_sellers
    ADD CONSTRAINT productseller_seller_fk FOREIGN KEY (seller_id) REFERENCES public.sellers(id);


--
-- TOC entry 3409 (class 2606 OID 16910)
-- Name: product_sizes productsize_product_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_sizes
    ADD CONSTRAINT productsize_product_id FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 3410 (class 2606 OID 16915)
-- Name: product_sizes productsize_size_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_sizes
    ADD CONSTRAINT productsize_size_id FOREIGN KEY (size_id) REFERENCES public.sizes(id);


--
-- TOC entry 3396 (class 2606 OID 16787)
-- Name: refunds refund_order_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.refunds
    ADD CONSTRAINT refund_order_fk FOREIGN KEY (order_id) REFERENCES public.orders(id) NOT VALID;


--
-- TOC entry 3392 (class 2606 OID 16777)
-- Name: refund_products refundproducts_orderproduct_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.refund_products
    ADD CONSTRAINT refundproducts_orderproduct_fk FOREIGN KEY (order_product_id) REFERENCES public.order_products(id) NOT VALID;


--
-- TOC entry 3393 (class 2606 OID 16782)
-- Name: refund_products refundproducts_refund_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.refund_products
    ADD CONSTRAINT refundproducts_refund_fk FOREIGN KEY (refund_id) REFERENCES public.refunds(id) NOT VALID;


--
-- TOC entry 3381 (class 2606 OID 16792)
-- Name: sellers seller_city_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sellers
    ADD CONSTRAINT seller_city_fk FOREIGN KEY (location_id) REFERENCES public.cities(id) NOT VALID;


--
-- TOC entry 3378 (class 2606 OID 16802)
-- Name: shipments shipment_shipmentbrand_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shipments
    ADD CONSTRAINT shipment_shipmentbrand_fk FOREIGN KEY (shipment_brand_id) REFERENCES public.shipment_brands(id) NOT VALID;


--
-- TOC entry 3377 (class 2606 OID 16797)
-- Name: shipment_brands shipmentbrand_district_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shipment_brands
    ADD CONSTRAINT shipmentbrand_district_id FOREIGN KEY (service_region_id) REFERENCES public.districts(id) NOT VALID;


-- Completed on 2022-11-28 11:23:46

--
-- PostgreSQL database dump complete
--

