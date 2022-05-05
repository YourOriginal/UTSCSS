# Surfs Up - Climate database Analysis

Temperature, climates and accurate measurements are important factors when a business's product is directly influenced by those factors, thus, performing adequate analysis prior to selling such products is an important predictor to success. By using the temperature observations of Oahu in June and December over the years, we can determine if their surf and ice cream shop will be a sustainable product year-round. This can be done by using SQLalchemy and linking it to our jupyternotebook to allow manipulation of the database but with python.

## Analysis and Code

The overall code for the project is straight forward and relatively short. In jupyter we imported a host of sqlalchemy modules as the database is store in SQL but we are coding in python. We first created an engine as this provides a base connection and allows us to use SQL based functions, and then reflected the database into a model while also saving certain tables of interest (measurement and station tables) as variables.

To extract a certain date from the data, a query was performed to filter and include all temperatures over time of a certain month in the format:

```
month_temps = session.query(Measurement.tobs).\
filter(extract('month', Measurement.date) == month_number).all()
```

The data was then transferred into a list which then allows us to move it into a dataframe to summarize our final results.

## Conclusions

In summary, our analysis presents us with a description of average temperature observations during the months of June and December which we can then use to predict the success of the surf and ice cream businesss. 

| June  | December |
| ------------- | ------------- |
| <img width="150" alt="June Temps" src="https://user-images.githubusercontent.com/100324759/166977345-016976a4-056f-49ac-9c20-f7c0d3b40811.png">  | <img width="173" alt="Dec Temps" src="https://user-images.githubusercontent.com/100324759/166977400-92d2beae-5803-4699-b43e-0541f2962cc5.png"> |

There are other methods that can be used to achieve the same results. Due to the ever changing effects of global warming, we can also consider finding the trends BETWEEN years for the same month to make predictions for the future (i.e query for june, 2010-2017 seperately and graph). We could also query for each year individually while including all the months to predict which months will be most successful.

Overall, the temperatures of the two months are very close and is a nice warm temperature perfect for summer. Given this, it's the perfect temperature for ice cream. However, there are some notable differences. December on average is slightly cooler with a min of 56 and max of 83 with a higher standard deviation. Nonetheless, the temperature is reflective of summer times when surfing and ice cream is most popular.



