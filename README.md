# Hewlett-Packard (HP) SQL Analysis

Managing thousands of employees is a time consuming task if it has to be done by hand. The use of SQL databases and queries allows a user to perform a wide array of operations to find what you need. In this analysis, we will use this powerful tool to determine retiring employees and their respective titles of the company given a set of paramaters. We will also determine which employees are eligible for the mentorship program and then export both datasets for further use by the company. 

## Analysis and Code

Prior to any SQL work, a database diagram was created to map out the various tables and other important information such as primary keys in an organized manner as we can see below. 
<p align="center"> 
  <img src="https://user-images.githubusercontent.com/100324759/164355027-44b91353-72bf-4a12-8158-f94bd7cf18bb.png">  
</p>
Here we can see the necessary columns for each table and the primary keys along with how they connect with others. 

With 6 tables and 6 csv files of HP data imported into our tables, we could then begin creating queries for the first task: determining retiring staff members and their respective titles.

### Determining Retiring Employes by Title

Data was first performed an inner join on 2 tables: employee (employee nom, names), and titles (title, dates title was acquired/lost) into a new table called retiring_table on primary key emp_no. We then filitered by the dates 1952 and 1955 to find out whos retiring along with their title. However, this table gave us duplicates since people get promoted or changed roles over the years. To fix this, the DISTINCT ON function can be used on the emp_no in order to remove duplicate rows. Final result looks as following and was exported as uinique_titles.csv.
<p align="center"> 
     <img src='https://user-images.githubusercontent.com/100324759/164747145-435979d7-79a8-489c-9bc0-81aefb4b8b28.PNG'>
</p>

### Employees Eligible for Mentorship

To determine which employees are eligible for the mentorship program, a similar query was created - retrieved data from employees table along with which department they are, then retrieved title from titles table and merged the tables with a DISTINCT ON clause. Employees eligibile are those whos' birthdate is in 1995 so it was filtered as such while leaving to_date to include all current employees (1999-01-01). 
