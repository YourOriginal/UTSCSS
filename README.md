# School District Analysis via Pandas

Understanding the dynamics of education and their impact on student performance is vital to creating plans to further improve the students experience. Information such as student count, budget, and type may impact the overall grade and passing percentages of students in standardized tests. In this analysis, we will use a set of data that contains such metrics on a number of different schools and identify trends in student performance. However, due to suspicious academic records amongst the 9th Graders in Thomas High School (THS), the data must be cleaned prior to the analysis as it may skew the information. Getting this data will allow school boards to make informed decisions to make improvements to any identifiable weaknesses.

## Analysis and Code

The analysis was done in jupyter notebook with pandas and numpy dependencies. After importing the neccessary csv files, cleaning the THS data is the first task on the list. To void the grade 9 scores, a data frame was created using the .loc method that contains all math and reading scores in THS and then replaced the values with NaN using the general format 

                          student_data_df.loc[(student_data_df['grade'] == '9th') 
                                   & (student_data_df['school_name'] == 'Thomas High School'),
                                   ['math_score']] = np.nan``
                                   
Several other pieces of information were then found such as total students, number of Gr9 students (NaN count and was then removed from any other related student counts), along with math/reading scores and passing percentages on a left merged on 'school_name' database. These counts and averages all had similar formulas such as:
                          
                          metric = merged_db['Column_name'].function_ifneeded
                          
                          i.e THS_math_score = school_data_complete_df[(school_data_complete_df["math_score"] >= 70)].count()["student_name"]

After getting the counts, several things were changed in the data for THS due to the removal of the Gr9 student's grades and are summarized in the table below.

| Metric  | Old | New |
| ------------- | ------------- | ------------- |
| Student Count | 1635  | 1635  |
| Math Score Avg  | 83.35%  | 83.4%  |
| Reading Score Avg  | 83.8%  | 83.9%  |
| % Pass Math | 93.3%  | 93.2%  |
| % Pass Reading | 97.3% | 97.0%%  |
| % Overall Pass | 90.9%  | 90.6%  |
| Total School Budget | 1043130 | 1043130 |





