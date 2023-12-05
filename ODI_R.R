setwd("C:/Users/Advait/Simcity/Coding/Projects/ODI")

library(tidyverse)

data <- read.csv("ODI_Cleaned.csv")

#Filtering out the NA values

data <- data %>% 
  filter(!is.na(Winner))

#Number of matches won by each team 

Winners <- data %>% 
  select(Winner) %>%
  drop_na() %>% 
  count(Winner)

ggplot(Winners, aes(x = Winner, y = n, fill = Winner)) +
  geom_bar(stat = "identity") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1), legend.position = "none") +
  labs(title = "Number of wins by each team", x = "Team", y = "Number of Wins") +
  theme(plot.title = element_text(hjust = 0.5))

#Number of teams who won 100 or more matches

top_teams <- Winners %>% 
  filter(n>=100) %>% 
  arrange(n)

ggplot(top_teams, aes(x = Winner, y = n, fill = Winner)) +
  geom_bar(stat = "identity") +
  labs(title = "Number of teams to win 100 or more matches", x = "Team", y = "Number of Wins") +
  theme(plot.title = element_text(hjust = 0.5))

#City Exploration

City <- data %>% 
  select(City) %>% 
  drop_na() %>% 
  count(City) %>% 
  arrange(desc(n))

Distinct_Cities <- data %>% 
  select(City) %>% 
  drop_na() %>% 
  distinct(City) %>% 
  count(City)

Top_Cities <- City %>% 
  slice_head(n = 10)

ggplot(City, aes(x = City, y = n, fill = City)) +
  geom_bar(stat = "identity") 

ggplot(Top_Cities, aes(x = City, y = n, fill = City)) +
  geom_bar(stat = "identity") +
  labs(title = "The top 10 venues by number of matches hosted", x = "City", y = "Number of Matches") +
  theme(plot.title = element_text(hjust = 0.5))

#Winning the toss

WonToss_Wonmatch <- data %>% 
  filter(Toss_Winner == Winner) %>% 
  count(Toss_Winner)

WonToss_Lostmatch <- data %>% 
  filter(Toss_Winner != Winner) %>% 
  count(Toss_Winner)

combined1 <- bind_rows(
  WonToss_Wonmatch %>% mutate(outcome = "Won Match"),
  WonToss_Lostmatch %>% mutate(outcome = "Lost Match"))

ggplot(combined1, aes(x = Toss_Winner, y = n, fill = outcome)) +
  geom_bar(stat = "identity") +
  geom_text(aes(label = n), position = position_stack(vjust = 0.5), color = "white", size = 3) +
  labs(title = "Number of matches won or lost given the team has won the toss",
       x = "Toss Winner",
       y = "Count") +
  scale_fill_manual(values = c("Won Match" = "coral", "Lost Match" = "darkgrey")) +
  theme_classic() +
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1 ),
    plot.title = element_text(hjust = 0.5))


#Toss Decisions

ChooseBat_Wonmatch <- data %>% 
  filter(Toss_Winner == Winner, Toss_Decision == "Bat") %>% 
  count(Toss_Winner)

ChooseField_Wonmatch <- data %>% 
  filter(Toss_Winner == Winner, Toss_Decision == "Field") %>% 
  count(Toss_Winner)

combined2 <- bind_rows(
  ChooseBat_Wonmatch %>% mutate(outcome = "Batted First"),
  ChooseField_Wonmatch %>% mutate(outcome = "Fielded First"))

ggplot(combined2, aes(x = Toss_Winner, y = n, fill = outcome)) +
  geom_bar(stat = "identity") +
  geom_text(aes(label = n), position = position_stack(vjust = 0.5), color = "white", size = 3) +
  labs(title = "Won the toss and Won the game",
       x = "Toss Winner",
       y = "Count") +
  scale_fill_manual(values = c("Batted First" = "coral", "Fielded First" = "darkgrey")) +
  theme_classic() +
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1 ),
    plot.title = element_text(hjust = 0.5))

combined3 <- combined2 %>% 
  group_by(Toss_Winner) %>%
  mutate(n_sum = sum(n)) %>% 
  ungroup() %>% 
  select(Toss_Winner, n, n_sum, outcome) %>% 
  mutate(Percentage = (100)*n/n_sum)


ggplot(combined3, aes(x = Toss_Winner, y = Percentage, fill = outcome)) +
  geom_bar(stat = "identity") +
  theme_classic() +
  labs(title = "Percentage of Batting first or Fielding first and winning for a given team",
       x = "Team",
       y = "Percentage") +
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1 ),
    plot.title = element_text(hjust = 0.5))
