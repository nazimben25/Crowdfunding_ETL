-- crowdfunding_db_schema.sql
-- 
DROP TABLE IF EXISTS category ;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS compaign;

CREATE TABLE   category   (
      category_id   varchar(6)   NOT NULL,
      category   varchar(20)   NOT NULL,
    CONSTRAINT   pk_category   PRIMARY KEY (
          category_id  
     )
);

CREATE TABLE   subcategory   (
      subcategory_id   varchar(10)   NOT NULL,
      subcategory   varchar(30)   NOT NULL,
    CONSTRAINT   pk_subcategory   PRIMARY KEY (
          subcategory_id  
     )
);

CREATE TABLE   contacts   (
      contact_id   int   NOT NULL,
      first_name   varchar(20)   NOT NULL,
      last_name   varchar(20)   NOT NULL,
      email   varchar(60)   NOT NULL,
    CONSTRAINT   pk_contacts   PRIMARY KEY (
          contact_id  
     )
);

CREATE TABLE   compaign   (
      cf_id   int   NOT NULL,
      contact_id   int NOT NULL,
      company_name   varchar(50)   NOT NULL,
      description   varchar(60)   NOT NULL,
      goal   float   NOT NULL,
      pledged   float   NOT NULL,
      outcome   varchar(20)   NOT NULL,
      backers_count   int   NOT NULL,
      country   varchar(5)   NOT NULL,
      currency   varchar(5)   NOT NULL,
      launch_date   date   NOT NULL,
      end_date   date   NOT NULL,
      category_id   varchar(6)  NOT NULL,
      subcategory_id   varchar(10)  NOT NULL,
    CONSTRAINT   pk_compaign   PRIMARY KEY (
          cf_id  
     )
);

ALTER TABLE  compaign  ADD CONSTRAINT  fk_compaign_contact_id  FOREIGN KEY( contact_id )
REFERENCES  contacts  ( contact_id );

ALTER TABLE  compaign  ADD CONSTRAINT  fk_compaign_category_id  FOREIGN KEY( category_id )
REFERENCES  category  ( category_id );

ALTER TABLE  compaign  ADD CONSTRAINT  fk_compaign_subcategory_id  FOREIGN KEY( subcategory_id )
REFERENCES  subcategory  ( subcategory_id );



SELECT * FROM category

SELECT * FROM subcategory

SELECT * FROM contacts

SELECT * FROM compaign

