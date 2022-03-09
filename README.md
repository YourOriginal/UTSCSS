# My Kickstarter Analysis for U of T SCS Data Analytics

## Overview of Project

   Fundraising projects through kickstarter has become a popularized outlet for creators to attract the attention of fans while also generating funds to help assist in creating their goal. However, not all goals are reached. 
    
   In the case of Louise's play *Fever*, she was just shy of reaching her goal. Now, she's curious if there is a trend amongst kickstarter campaigns and their success rate in relation to the launch date and goal. In this project, we will analyze the data acquired from thousands of kickstarter campaigns and see if there are any trends in the data by using excel while primarily looking at the subcategory of theatre projects.

## Analysis and Challenges

### Analysis of Outcomes Based on Launch Date

We first analyzed the data and compiled a pivot table containing the filters "Parent Category" and "Years" with our results in the columns and months of the year in rows as shown in the image below to the left.


<p align="right">
  <img width="460" height="300" src="https://user-images.githubusercontent.com/100324759/157339212-5e6658fd-c291-4778-859e-8d929e6bb178.PNG"
       align="left">
  <img width="460" height="300" src="https://user-images.githubusercontent.com/100324759/157339427-0e59cf00-4ed5-4b97-95b2-f29e018ca4ac.png"
</p>

This pivot table provides a clean and organized set of data that summarizes our results for theatrical based Kickstarters based on the month of release which we then plotted onto a line graph as seen on the right.

  
### Analysis of Outcomes Based on Goals
   
   The next data set we wanted to analyze was the success rate of plays and their kickstarter campaigns based on their initial goals to see if there is an identifiable trend. 
     
   To get the neccessary numbers, we had to create a table that relates a range of values for goals and the number of campaigns that were successful/failed/canceled within a given range as shown in the table below.
   
<p align="center">
  <img src="https://user-images.githubusercontent.com/100324759/157353168-08d675f1-4366-4414-b329-6b571a461dfc.PNG"
</p>
   
   The data needed several formulas to extract the correct information. 
   
   Formula for: Number successful/failed/canceled - =COUNTIFS(Kickstarter!F:F, "x", Kickstarter!D:D,"<1000",Kickstarter!R:R,"plays")
      
      where x is the criteria for our search
   
### Challenges and Difficulties Encountered


   
## Results

- What are two conclusions you can draw about the Outcomes based on Launch Date?

- What can you conclude about the Outcomes based on Goals?

- What are some limitations of this dataset?

- What are some other possible tables and/or graphs that we could create?
