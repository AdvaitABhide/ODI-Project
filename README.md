# ODI-Project

## Introduction

Leading up to the ODI World Cup 2023, I was interested in finding data about One Day Internationals and how cricket teams around the world faired in past ODI world cups and regular ODI's played against one another. I obtained a dataset from Kaggle, which supplied me with data of ODI's played from April 2002 till September 2023, right before the world cup commenced. 

## Data Cleaning

Firstly after obtaining the dataset, I notice errors and discrepancies which needed to be addressed. To address these issues, I utilised Microsoft Excel as upon first inspection of the dataset, the errors didn't seem to be of great significance and would be relatively simple to solve. Alternatively, the data could have be cleaned using Python or R if desired. 

In Excel, We first checked for any dulpicate values and adressed blank cells by adding a "NA" value to them. Next we made quality of life changes such as reordering the excel file for better understanding and to be able to better visualize data later on in R. We also looked to address spelling mistakes and syntax errors in the dataset. Lastly, we altered the "Venue" column and removed the city associated to the ground where the match was played as the dataset already has a seperate "City" column. This left the "Venue" column with just the key information of the venue name where the match has taken place and also us the simplify our data hence making it more easier accessible.

## Data Transforming and Visualization

After cleaning the data, I moved on with transforming the data and attempting to visualize what was occuring in our data. To do this, I utilised R. 

In R, after reading in our new cleaned dataset, I utilised the "tidyverse" and "lubridate" package libraries to assist in my analysis. Tidyverse in particular has "dplyr" and "ggplot2" embedded in the library which were of particular interest to me while conducting this analysis. 

We first looked at the number of matches each team had won over the span of the 21 years of data provided to us by the dataset and then refined our search to just include teams which had won 100 or more matches. We then used ggplot to visulize our outputs and made minor improvements such as tilting our x labels slightly to account for longer country names and to improve the overall appearance of the graphics.

![image](https://github.com/AdvaitABhide/ODI-Project/assets/152935633/e88f39ec-8a74-42c2-a0ad-66baef9942ca)

![image](https://github.com/AdvaitABhide/ODI-Project/assets/152935633/d7faccde-f542-43a8-9162-d7405c27bccf)

We next looked at the cities in which these matches took place and then looked at which cities hosted a large number of matches compared to other cities. 

![image](https://github.com/AdvaitABhide/ODI-Project/assets/152935633/fb4ba249-ef12-4e79-8b7c-aed06a8ffcfb)

Finally we looked at the toss. We focused on how teams faired in the match after winning the toss and look at whether teams decided to bat or bowl and how that impacted there performance. 


## Findings and Future Exploration

### Findings
- We found that only 9 teams had won more than 100 matches out of a possible 27 teans and that only 5 of those 9 had won at least 200 matches. India tops the countries on wins with 290 wins and Australia trail slightly behind at 275 wins. 
- In total there was 145 different venues in which matches had occurred and we ended up seeing that a large majority of venues only hosted 1 match while the top 10 venues hosted 34 or more. The top 3 venues hosted 89, 87 and 83 respective matches. 
- 

### Future Exploration
It is important to note that the game of cricket is vast in nature and modern cricket can provide us with a myriad of statistics we can use to analyse and further improve on the game. 

- The dataset as well, we could have looked at the umpires and seen who umpired the most games and possibly used the output to determine if there was any sort of human error or bias affecting the matches.
- The dataset also contains information on the player of the match for each match which could show the best players in cricket in the ODI format. This could potentially open the door for research on what makes them so good and how coaches, teams, players could use their techniques, lifestyles, etc in their own play. 
