# PyBer Fare Analysis

Matplotlib library allows users to create a visual representation of data in a clean and concise manner. In this challenge, a multiple line graph will be created to show how weekly fares differ depending on the type of city the data comes from (Rural, Urban, Suburban).

## Analysis and Code

The overall code is relatively straight forward and involved mostly getting totals and splitting data frames. Totals were acquired for each city type for: total rides, drivers, fares, average fare, and average fare per driver. All done by using the .groupby function and the corresponding function to get the totals (sum/mean/count) and then was formatted to give us the following data frame.

<p align="center">
  <img width="700" height="150" src="https://user-images.githubusercontent.com/100324759/162583544-b70542ee-4b42-43c4-a7d5-5d6df05ff0bd.PNG">
</p>

Following this, the data was grouped by the type and date so we can calculate the sum of the fares for the given parameters. This allows us to create a new pivot table with index as date, the city types as the columns and the values are the fares for a specific date and type. To create a chart for our data, we also filtered for the months Jan-April and then resampled the data so that we can use the object-oriented interface method to plot.

<p align="center">
  <img width="900" height="330" src="https://user-images.githubusercontent.com/100324759/162585663-8925880c-0d40-450d-9005-71afa4824009.PNG">
</p>

## Results

The results show a consistent trend, of Urban > Suburban > Rural for price independent factors and vice versa for price dependent. This is fairly predictable and expected. Urban locations are much denser and have higher population (generally) than country side places such as Rural types and is also supported by the total rides which follows the same pattern. Interestingly, the average fare per ride and per driver was the opposite with Rural having the highest in both categories. 

## Conclusion and Solutions

After reviewing the data, several improvements could be made to the system to improve revenue. Firstly, Rural locations are not nearly as dense which implies people need to travel further on average to reach their destinations which would hike the price up and ontop of longer waits due to less drivers (which may increase price as it does with other companies). These dont provide incentives to customers and in an effort to fix this we can make 3 possible changes: prices should be decreased considerably based on distance travelled, drivers should receive a sign up bonus or some 'reward' for joining, and lastly, reduce driver count in Urban locations.

While this may decrease profit/ride, the increase in revenue with more customers due to lower costs and increase in availability will allow a higher net overall profit in Rural locations. Furthermore the reduction in excessive driver numbers in Urban locations will also improve profit due to reduction in loss of wasted resources. 
