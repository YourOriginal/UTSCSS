# IMDB Movie Analysis - ETL

Reviews and ratings play important roles not just for the consumers, but also to the producer of the product. Consumers can better understand a product through the reivew of other consumers and the producer can use the feedback to better improve their product. In the film industry, these reviews can be a powerful tool in marketing and as a predictor for commercial success. However, different sites, and users can create very messy data that needs to be cleaned, organized and sorted so that only the appropriate and important information is present. In this module, we will extract movie review data from IMDB and Kaggle to produce a final cleaner data set for analysis.

## Analysis and Code

The majority of the code is within a defined function we created to filter through the data. For our code, it includes the following: 

- An initial function to rename columns
- And a main function that:
    -  reads the neccessary files as CSV and filters our data
    -  remove columns that have too many null values or are not needed 
    -  convert columns to the correct data type along with formatting certain columns such as strings to have a standard format
    -  fill in certain null values
    -  and merge 2 dataframes to create 1 master dataframe and export into an SQL server

The majority of the data had to be processed in a similar manner as they were mostly strings. To convert this data into appropriate dtypes such as integers for costs, we first concatenated a number of columns by using a lambda function and joining on ' '. This then allows us to use REGEX to define certain forms we wanted and loop through the rows in a specified column so that any matches will be turned into an integer. Similarly, this process is used with converting dates (albeit not integers) as we created a REGEX form and then extracted the data so we can convert to date time. This process was performed on both the wiki movie data and the kaggle data to create cleaner data frames.

Once cleaning was done, a merge was then performed on 'imdb_id'. Following this, several columns were renamed filtered, and then finally loaded into a SQL server.
Below is a screenshot of a chunk of the code used for cleaning.

<p align="center">
  <img src="https://user-images.githubusercontent.com/100324759/166082633-d4299f1a-ff72-471f-ac19-9de3db8822c2.png">
 <p/>

## Results 

After expoerting the data, the merged dataframe with ratings and cleaned columns had a total of 6052 rows while the ratings data frame had a total of 26024289 rows. While the process is tedious, it is neccessary due to the sheer number of errors we will get due to improper data types, varying string/date formats and unnecessary data.



