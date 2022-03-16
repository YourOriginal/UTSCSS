# Stocks Analysis Using VBA

## Overview of Project

  Stock analysis plays a pivotol role in many investors decision making. Trends and patterns can be visualized and thus informs the investor, allowing them to make informed decisions. While this analysis can be done in many ways such as excel for formulas and calculations, the manual and labour intensive process is also prone to mistakes. The use of code to create an automated analysis through VBA allows the user to reduce the time it takes and mistakes in one process.
  
  Given a set of data, we aim to analyze thousands of stock's performance over 2 years for *Steve's Parents* in an effort to improve their investment opportunities while also assessing our refactored VBA script to determine the efficacy.
## Results

### Stock Performance

The performance of the listed stocks showed contrasting returns in the years of 2017 and 2018. In 2017, almost all stocks showed a great degree of return (+67.3%) with TERP being the only stock to perform negatively. When change analysis over to the 2018 year, we can see a drastic change in performance from positive to negative with the stocks performaning at an average return of -8.5% with the only stocks netting a positive return being ENPH, and RUN.



### Script Performance

  Overall, the refactored script proved very handy as it provided a well structured and organized code that we know will serve the intended purpose. However, amongst the pros of refactoring, the cons of refactoring code can not be disregarded. Reusing code can introduce new bugs and errors that I would usually not catch and is true for most codes as every time it's changed, there is potential for a bug. In my case, the time displayed for how long the script ran was not accurate in the original module sheet where as my assignment had a correctly displayed time - as shown below for **MODULE WORK**.
  
  
  <p align = "center">
  <img width="370" height="300" src="https://user-images.githubusercontent.com/100324759/158685633-777bbf85-404d-418f-80e6-bba9b5309068.PNG">
 </p>

Intuitively, this makes no sense as the code ran near instantaneously and compared to the **ASSIGNMENT** code run time:


<p align = "center">
  <img width="370" height="300" src="https://user-images.githubusercontent.com/100324759/158686448-942f4c28-a042-495f-a1cb-9dff066b3a82.PNG"
 </p>

  After reviewing with my study group and a helper, we were unable to determine the cause of such error after restarting, and copy pasting. The code was then changed from:
  
  ```
    Dim startTime As Single
    Dim endTime  As Single

    yearValue = InputBox("What year would you like to run the analysis on?")

    startTime = Timer
    .
    .
    endTime = Timer
    MsgBox "This code ran in " & (endTime - startTime) & " seconds for the year " & (yearValue)

  ```
  
 to
    
  ```
    Dim startTime As Single
    Dim endTime  As Single

    yearValue = InputBox("What year would you like to run the analysis on?")

    startTime = Timer
    .
    .
    endTime = Timer
    MsgBox "This code ran in " & ((endTime - startTime)/100000) & " seconds for the year " & (yearValue)
  ```
