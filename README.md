# Election Audit Analysis via Python

Elections play a pivotol role in community engagement and management, thus accurate audits are vital to understanding both the outcome and the demographics of the elections. In this project, Python is used to write a script and save it to an external file, to track county/candidate votes and percentages a long with their overall standing in the election to get a summary of the results.

## Analysis

*Since the structure of the codes for both candidate and county are similar, I will discuss the general format.*

Prior to beginning the analysis, we initialized the candidate and county lists/dictionaries for names and votes respectively along with initializing the variables for those respective counts. **_Please note candidate/county will be generalized as C where applicable._**

After loading in the file, a for loop was created to loop through each row to extract the candidate and county name and added a vote to the counter variable while doing so using the general format:`C_name = row[]`

The **_C_** was then added into the list if the name did not exist by using an if statement. 


``if candidate_name not in candidate_options:

            # Add the candidate name to the candidate list.
            
            candidate_options.append(candidate_name)
            
            # And begin tracking that candidate's voter count.
            
            candidate_votes[candidate_name] = 0``
            


