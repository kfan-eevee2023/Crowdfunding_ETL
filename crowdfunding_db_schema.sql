--1 category
CREATE TABLE IF NOT EXISTS category (
   category_id VARCHAR(20) PRIMARY KEY,
   category    VARCHAR(100)
);

--2 subcategory
CREATE TABLE IF NOT EXISTS subcategory (
   subcategory_id VARCHAR(20) PRIMARY KEY,
   subcategory    VARCHAR(100)
);



Extract the "contact_id", "name", and "email" columns by using regular expressions

--3 campaign
CREATE TABLE IF NOT EXISTS campaign (
  cf_id             INTEGER,
  contact_id        INTEGER,
  company_name      VARCHAR(200),
  description       VARCHAR(500),   
  goal              FLOAT,
  pledged           FLOAT,
  outcome           VARCHAR(20),
  backers_count     INTEGER, 
  country           VARCHAR(20),
  currency          VARCHAR(20),
  launch_date       DATE,
  end_date          DATE,
  category_id       INTEGER REFERENCES category (category_id),
  subcategory_id    INTEGER REFERENCES subcategory (subcategory_id)
);


--4 contacts
CREATE TABLE IF NOT EXISTS contacts (
   contact_id     INTEGER PRIMARY KEY,
   first_name     VARCHAR(100),
   last_name      VARCHAR(100),
   email          VARCHAR(200)
);


