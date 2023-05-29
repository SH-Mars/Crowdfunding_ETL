--DROP TABLE contacts;
CREATE TABLE contacts (
    contact_id	INT	NOT NULL PRIMARY KEY,
    first_name	VARCHAR(20)	NOT NULL,
    last_name	VARCHAR(20)	NOT NULL,
    email	VARCHAR(50)	NOT NULL
);

--DROP TABLE category;
CREATE TABLE category (
    category_id	VARCHAR(4)	NOT NULL PRIMARY KEY,
    category	VARCHAR(20)	NOT NULL
);

--DROP TABLE subcategory;
CREATE TABLE subcategory (
    subcategory_id	VARCHAR(8)	NOT NULL PRIMARY KEY,
    subcategory	VARCHAR(20)	NOT NULL
);

-- DROP TABLE campaign;
CREATE TABLE campaign (
    cf_id	INT	NOT NULL PRIMARY KEY,
    contact_id	INT	REFERENCES contacts(contact_id)	NOT NULL,
    company_name	VARCHAR(225)	NOT NULL,
    description	VARCHAR(225)	NOT NULL,
    goal	FLOAT	NOT NULL,
    pledged	FLOAT   NOT NULL,
    outcome	VARCHAR(10)	NOT NULL,
    backers_count	INT	NOT NULL,
    country	VARCHAR(2)	NOT NULL,
    currency	VARCHAR(3)	NOT NULL,
    launched_date	DATE	NOT NULL,
    end_date	DATE	NOT NULL,
    category_id	VARCHAR(4)	REFERENCES category(category_id)	NOT NULL,
    subcategory_id	VARCHAR(8)	REFERENCES subcategory(subcategory_id)	NOT NULL
);

-- verify tables
SELECT * FROM campaign;
SELECT * FROM category;
SELECT * FROM contacts;
SELECT * FROM subcategory;

-- import csv files and rerun the SELECT statements above

