# School District Analysis via Pandas

Understanding the dynamics of education and their impact on student performance is vital to creating plans to further improve the students experience. Information such as student count, budget, and type may impact the overall grade and passing percentages of students in standardized tests. In this analysis, we will use a set of data that contains such metrics on a number of different schools and identify trends in student performance. However, due to suspicious academic records amongst the 9th Graders in Thomas High School (THS), the data must be cleaned prior to the analysis as it may skew the information. Getting this data will allow school boards to make informed decisions to make improvements to any identifiable weaknesses.

## Analysis and Code

The analysis was done in jupyter notebook with pandas and numpy dependencies. After importing the neccessary csv files, cleaning the THS data is the first task on the list. To void the grade 9 scores, a data frame was created using the .loc method that contains all math and reading scores in THS and then replaced the values with NaN using the general format 

                          student_data_df.loc[(student_data_df['grade'] == '9th') 
                                   & (student_data_df['school_name'] == 'Thomas High School'),
                                   ['math_score']] = np.nan``
                                   
Several other pieces of information were then found such as total students, number of Gr9 students (NaN count and was then removed from any other related student counts), along with math/reading scores and passing percentages on a left merged on 'school_name' database. These counts and averages all had similar formulas such as:
                          
                          metric = merged_db['Column_name'].(function_ifneeded)
                          
                          i.e THS_math_score = school_data_complete_df[(school_data_complete_df["math_score"] >= 70)].count()["student_name"]

After getting the counts, several things were changed in the data for THS due to the removal of the Gr9 student's grades and are summarized in the table below.

| Metric  | Old | New |
| ------------- | ------------- | ------------- |
| Student Count | 1635  | 1635  |
| Math Score Avg  | 83.42% | 83.35%  |
| Reading Score Avg  | 83.8%  | 83.9%  |
| % Pass Math | 93.3%  | 93.2%  |
| % Pass Reading | 97.3% | 97.0%  |
| % Overall Pass | 90.9%  | 90.6%  |
| Total School Budget | 1043130 | 1043130 |

As we can see the several changes can be observed: Overall pass, and students passing math/reading decreased along with their average scores with the exception of reading score while the other metrics remain unchanged. This is expected (except reading) since the removal of students that are suspected for dishonest academic performance will remove high grades thus will reduce averages overall. 

Other metrics remain unchanged such as budget and student count since we are only removing the marks, the student nonetheless still exists at the school even if their grade is omitted. Also should be noted: this will also affect OVERALL percentages that calculates ALL schools although to a much lesser degree. THS also remained unchanged in their standing and retains their #2 spot in overall standings. Other measures as seen below also had some changes while others remain unchanged. This is most likely due to some metrics having a very large count resulting in a very minor change that is not seen after rounding.

### OLD (With Gr9 Scores)

<p align="center"> 
  <img src="https://user-images.githubusercontent.com/100324759/161390754-0a1ebe75-2a0a-4584-9e43-a58534336a57.png">  
</p>


### NEW (Gr9 Scores Removed)

<p align="center">
  <img src="https://user-images.githubusercontent.com/100324759/161390874-cabb294c-ae11-4cc7-bf49-41f63185e0cb.PNG">  
</p>


## Conclusion

In conclusion, the removal of suspicious Gr9 scores resulted in several changes in our data. Decreases in the passing percentages and average math scores are most likely the result of inflated grades due to cheating, although interesting to note that the reading score average went up after NaN replacement. We can also see the rippling effect it has with overall data as outlined in the OLD and NEW sections of the analysis. While the data showed notable trends, future projects can also look to analyze other trends such as budget per student and student performance.
