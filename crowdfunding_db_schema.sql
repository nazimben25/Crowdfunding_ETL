DROP TABLE IF EXISTS crowfunding CASCADE;
DROP TABLE IF EXISTS category CASCADE;
DROP TABLE IF EXISTS subcategory CASCADE;
DROP TABLE IF EXISTS contact CASCADE;



-- 1) Create tables


		--  Drop table if exists
		DROP TABLE IF EXISTS category;
		
		-- Create new table	

		CREATE TABLE category (
		
				category_id             char(4)  not null primary key , 
				category                VARCHAR(20) not null 
	
				) ;
	
		select * from category ;	


		--  Drop table if exists
		DROP TABLE IF EXISTS  subcategory;
		
		-- Create new table	

		CREATE TABLE subcategory (
		
				subcategory_id             varchar(8)  not null primary key , 
				subcategory                VARCHAR(20) not null 
	
				) ;
	
		select * from subcategory ;

		--  Drop table if exists
		DROP TABLE IF EXISTS contact;
		
		-- Create new table	

		CREATE TABLE contact (

				contact_id     int not null primary key ,
				first_name    VARCHAR(30) ,
				last_name     VARCHAR(30) ,
				email         VARCHAR(50)	 
				) ;
		select * from contact ;		


		--  Drop table if exists
		DROP TABLE IF EXISTS  campaign;
		
		-- Create new table		
		CREATE TABLE campaign (
		
				cf_id                     int  not null primary key , 
				contact_id                int not null ,
				company_name             VARCHAR(40) ,
				description              VARCHAR(60) ,
				goal                     float ,
				pledged                  float ,
				outcome                  VARCHAR(10) ,
				backers_count            int ,
				country                  CHAR(2) ,
				currency                 CHAR(3) ,
				launch_date      		 DATE ,
				end_date         		 DATE ,
				category_id                 CHAR(4) not null ,
				subcategory_id              VARCHAR(8) not null,

				FOREIGN KEY (contact_id) REFERENCES contact(contact_id),
				FOREIGN KEY (category_id) REFERENCES category(category_id),
				FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
				) ;
	
		select * from campaign ;


