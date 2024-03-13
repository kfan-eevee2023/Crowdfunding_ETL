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


--3 contacts
CREATE TABLE IF NOT EXISTS contacts (
   contact_id     INTEGER PRIMARY KEY,
   first_name     VARCHAR(100),
   last_name      VARCHAR(100),
   email          VARCHAR(200)
);


--4 campaign
CREATE TABLE IF NOT EXISTS campaign (
  cf_id             INTEGER,
  contact_id        INTEGER REFERENCES contacts (contact_id),
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
  category_id       VARCHAR(20) REFERENCES category (category_id),
  subcategory_id    VARCHAR(20) REFERENCES subcategory (subcategory_id)
);
