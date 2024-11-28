-- add column to table
ALTER TABLE companies
ADD COLUMN employee_count INT NOT NULL DEFAULT 1;

-- drop column from table
ALTER TABLE companies DROP COLUMN phone;

-- rename
RENAME TABLE companies to suppliers;


ALTER TABLE suppliers RENAME TO companies;


ALTER TABLE companies
RENAME COLUMN name TO company_name;


-- modify column
ALTER TABLE suppliers
CHANGE business biz_name VARCHAR(50);

ALTER TABLE houses 
ADD CONSTRAINT positive_pprice CHECK (purchase_price >= 0);

ALTER TABLE houses DROP CONSTRAINT positive_pprice;