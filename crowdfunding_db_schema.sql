-- Create tables, import tables and set primary and foreign keys

-- Table: public.category
DROP TABLE IF EXISTS public.category;

CREATE TABLE public.category
(
	category_id character varying(255) NOT NULL PRIMARY KEY,
	category character varying(255) NOT NULL
)

SELECT * FROM public.category

-- Table: public.subcategory
DROP TABLE IF EXISTS public.subcategory;

CREATE TABLE public.subcategory
(
	subcategory_id character varying(255) NOT NULL PRIMARY KEY,
	subcategory character varying(255) NOT NULL
)

SELECT * FROM public.subcategory

-- Table: public.contacts
DROP TABLE IF EXISTS public.contacts;

CREATE TABLE public.contacts
(
	contact_id INTEGER NOT NULL PRIMARY KEY,
	first_name character varying(255) NOT NULL,
	last_name character varying(255) NOT NULL,
	email character varying(255) NOT NULL
)

SELECT * FROM public.contacts

-- Table: public.campaign
DROP TABLE IF EXISTS public.campaign;

CREATE TABLE public.campaign
(
    cf_id int PRIMARY KEY, 
    contact_id int NOT NULL,
	company_name character varying(255) NOT NULL,
	description character varying(255) NOT NULL,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome character varying(255) NOT NULL,
	backers_count character varying(255) NOT NULL,
	country character varying(255) NOT NULL,
	currency varchar(255) NOT NULL,
	launch_date varchar(255) NOT NULL,
	end_date  varchar(255) NOT NULL,
	category_id varchar(255) NOT NULL,
	subcategory_id varchar(255) NOT NULL,
    CONSTRAINT contact_id FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	CONSTRAINT category_id FOREIGN KEY (category_id) REFERENCES category(category_id),
	CONSTRAINT subcategory_id FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
)

SELECT * FROM public.campaign




