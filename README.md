# Porject 2 - Crowdfunding_ETL

## Create the Category and Subcategory DataFrames 

- Category DataFrames with two columns 'category_id' & 'category' and saved as 'category.csv'

- Subcategory DataFrames with two columns 'subcategory_id' & 'subcategory' and saved as 'subcategory.csv'


## Create the Campaign DataFrame - exported as 'campaign.csv'

- The "blurb" column, renamed to "description"
- The "goal" column, converted to the float data type
- The "pledged" column, converted to the float data type
- The "launched_at" column, renamed to "launch_date" and with the UTC times converted to the datetime format
- The "deadline" column, renamed to "end_date" and with the UTC times converted to the datetime format
- A "category_id" column that contains the unique identification numbers matching those in the "category_id" column of the category DataFrame
- A "subcategory_id" column that contains the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame

## Create a Contacts DataFrame - exported as 'contacts.csv'

## Create a Crowdfunding Database - save as 'crowdfunding_db_schema.sql'

- create 4 tables 'category', 'subcategory', 'campaign', 'contacts'
