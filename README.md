#ODI-Project

## Introduction

Leading up to the ODI World Cup 2023, I was interested in finding data about One Day Internationals and how cricket teams around the world faired in past ODI world cups and regular ODI's played against one another. I obtained a dataset from Kaggle, which supplied me with data of ODI's played from April 2002 till September 2023, right before the world cup commenced. 

## Data Cleaning

Firstly after obtaining the dataset, I notice errors and discrepancies which needed to be addressed. To address these issues, I utilised Microsoft Excel as upon first inspection of the dataset, the errors didn't seem to be of great significance and would be relatively simple to solve. Alternatively, the data could have be cleaned using Python or R if desired. 

In Excel, We first checked for any dulpicate values and adressed blank cells by adding a "NA" value to them. Next we made quality of life changes such as reordering the excel file for better understanding and to be able to better visualize data later on in R. We also looked to address spelling mistakes and syntax errors in the dataset. Lastly, we altered the "Venue" column and removed the city associated to the ground where the match was played as the dataset already has a seperate "City" column. This left the "Venue" column with just the key information of the venue name where the match has taken place and also us the simplify our data hence making it more easier accessible.

## Data Transforming and Visualization

After cleaning the data, I moved on with transforming the data and attempting to visualize what was occuring in our data. To do this, I utilised R. 

In R, after reading in our new cleaned dataset, I utilised the "tidyverse" and "lubridate" package libraries to assist in my analysis. Tidyverse in particular has "dplyr" and "ggplot2" embedded in the library which were of particular interest to me while conducting this analysis. 

We first looked at the number of matches each team had won over the span of the 21 years of data provided to us by the dataset and then refined our search to just include teams which had won 100 or more matches. We then used ggplot to visulize our outputs and made minor improvements such as tilting our x labels slightly to account for longer country names and to improve the overall appearance of the graphics.

![image](https://github.com/AdvaitABhide/ODI-Project/assets/152935633/2da745be-8ecb-4ab7-8a7d-847cd98f6a42)

![image](https://github.com/AdvaitABhide/ODI-Project/assets/152935633/49c2f623-1375-4a7d-96fa-80dc292bee67)

We next looked at the cities in which these matches took place and then looked at which cities hosted a large number of matches compared to other cities. For this we extracted distinct city names and counted the number of matches each city hosted. To obtain our top cities, we sliced the results to obtain the top 10 cities by the number of matches they hosted. 

![image](https://github.com/AdvaitABhide/ODI-Project/assets/152935633/6b3608ee-cfb2-49e1-b2f8-d4066ea9e225)

Next we looked at the toss. We focused on how teams faired in the match after winning the toss, did they win or lose?

![image](https://github.com/AdvaitABhide/ODI-Project/assets/152935633/24c67836-80e6-400e-965e-0cdb49125f13)

Finally, we are interested in further exploring the condition where a team wins the toss and wins the match. We generated a plot to make an estimation as to whether a given team wins more matches when the choose to bat first or field first. 

![image](https://github.com/AdvaitABhide/ODI-Project/assets/152935633/12dc3afd-f200-4c6d-9105-d74b3c25b272)

We generated another plot here, a percentage stacked bar chart to show the percentage a given team wins a game depending on whether they elected to bat or bowl first.

![image](https://github.com/AdvaitABhide/ODI-Project/assets/152935633/cb6836ef-633e-4dbe-b220-3a97ec31bc11)

## Findings and Future Exploration

### Findings
- We found that only 9 teams had won more than 100 matches out of a possible 27 teans and that only 5 of those 9 had won at least 200 matches. India tops the countries on wins with 290 wins and Australia trail slightly behind at 275 wins. 
- In total there was 145 different venues in which matches had occurred and we ended up seeing that a large majority of venues only hosted 1 match while the top 10 venues hosted 34 or more. The top 3 venues hosted 89, 87 and 83 respective matches. 
- Teams seemed to win more games if they elected to field first but some teams didn't seem to follow the pattern. A few teams did fair better batting first including some of the world's best teams over the last 21 years such as Australia, Pakistan or South Africa.
- Australia in particuarly only got 27% of their wins from fielding first with the rest 73% coming from matches were they elected to bat first. 

### Future Exploration
It is important to note that the game of cricket is vast in nature and modern cricket can provide us with a myriad of statistics we can use to analyse and further improve on the game. 

- The dataset as well, we could have looked at the umpires and seen who umpired the most games and possibly used the output to determine if there was any sort of human error or bias affecting the matches.
- The dataset also contains information on the player of the match for each match which could show the best players in cricket in the ODI format. This could potentially open the door for research on what makes them so good and how coaches, teams, players could use their techniques, lifestyles, etc in their own play.

## Dependencies

- For this analysis I utilised Microsoft Excel and RStudio running on R version 4.2.2. One may also use Python if they so wish.

## How To Use

- In this github repository, you will find the Cleaned excel file and .R file I utilised. The .R file has comments throughout the script which will help any user navigate through the file script with relative ease.
- Please make sure you read in the libraries with the codes given at the top. If you don't have the tidyverse package installed, please make sure to do so prior to reading in the library code.
- Make sure to set the working directory the same as the folder in which you have the cleaned excel file.   

## Contributing

- Any contributions to this dataset and analysis is welcomed and greatly appericated.
- As a suggestion for anyone up to the task, one may look at the other formats of cricket, T20 and Test cricket and analysis data for those formats if they wished. This can be done for either International or Regional/National level cricket.

## 
