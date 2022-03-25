# Election Audit Analysis via Python

Elections play a pivotol role in community engagement and management, thus accurate audits are vital to understanding both the outcome and the demographics of the elections. In this project, Python is used to write a script and save it to an external file, to track county/candidate votes and percentages a long with their overall standing in the election to get a summary of the results.

## Analysis

### Code, Structure, and format

*Since the structure of the codes for both candidate and county are similar, I will discuss the general format.*

Prior to beginning the analysis, we initialized the candidate and county lists/dictionaries for names and votes respectively along with initializing the variables for those respective counts. **_Please note candidate/county will be generalized as C where applicable._**

After loading in the file, a for loop was created to loop through each row to extract the candidate and county name and added a vote to the counter variable while doing so using the general format:`C_name = row[]`

The **_C_** was then added into the list if the name did not exist by using an if statement and if it did, a vote was added instead.

            if candidate_name not in candidate_options:

                        # Add the name to the list.
                        candidate_options.append(candidate_name)

                        # set count to 0 in C_votes dictionary.
                        C_votes[C_name] = 0

            # Add a vote to that count
            C_votes[C_name] += 1
            
This code gave the following counts:

Candidates: {'Charles Casper Stockham': 85213, 'Diana DeGette': 272892, 'Raymon Anthony Doane': 11606}
Counties: {'Jefferson': 39855, 'Denver': 306055, 'Arapahoe: 24801}

The data was then saved into a new file but with was formatted using F-String notation and was printed in a more organized manner.

First, the count for each **_C_** was used to calculate the percent and was then formatted as: `f'{C_name}: {C_percent:.1f}% ({votes_C:,})\n')` and was saved with the format for county:

            f'-------------------------\n'
            f'Largest County Turnout: {winning_county}\n'
            f'-------------------------\n')
            
For candidate:

            f"-------------------------\n"
            f"Winner: {winning_candidate}\n"
            f"Winning Vote Count: {winning_count:,}\n"
            f"Winning Percentage: {winning_percentage:.1f}%\n"
            f"-------------------------\n")
            
This formatting provides any readers with a clean summary as pictured below

<p align="center">
  <img src="https://user-images.githubusercontent.com/100324759/160145508-eced43f7-2fc1-400d-8227-2af9dcb3648d.PNG"
</p>

### Results
            
The overall results of the election was very decisive and one sided for both the candidate and county data. As noted in the image above, Denver had the largest representative turnout for their county with over 82.8% of the total votes while Diana DeGette held 73.8% of all votes. Quite a sweep. A break down is provided below.

Total Votes: 369,711
            
County Standings:
1st place: Denver with 82.8% (306,055/369,711)
2nd place: Jefferson with 10.5% (38,855/369,711)
3rd place: Arapahoe with 6.7% (24,801/369,711)
            
Candidate Standings:
1st place: Diana DeGette with 73.8% (272,892/369,711)
2nd place: Charles Casper Stockham with 23.0% (85,213/369,711)
3rd place: Raymond Anthony Doane with 3.1% (11,606/369,711)   
            
            
## Audit Summary  

Overall, the script for the election audit provided both a clean answer a long with an export that is well organized. The format for the code can be refactored to be used in a wide array of other election audits. As noted above candidate and county can be interchanged to what variables you need. The general structure is as follows:
            
  `         initialize dependencies
            
            add variables for load and save location
            
            initalize variables such as list and dictionary to keep track of names and vote count respectively
            
            variables to track winning count, %, and name
            
            create for loop to add to total vote and get candidate/county name
            
            add to name to list and a +1 to vote count in dicitionary to corresponding name
            
            print results in f-string format `
            
            
            
            
            
