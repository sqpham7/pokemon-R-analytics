library(data.table)
library(dplyr)
dat =fread("pokemon_dataset.csv")

View(dat)


#1
legendary_count <- dat %>%
  filter(Legendary == TRUE) %>%
  summarize(count = n())
print(legendary_count)
#2
avghp <- dat %>%
  filter(Type1 == "Grass") %>%
  summarize(avghp = mean(HP, na.rm = TRUE))

print(avghp)


#3
#What is the type (Type1) of the strongest Pokémon with the highest Attack stat?
highatk <- dat %>%
  filter(Attack==max(Attack, na.rm = TRUE)) %>%
  select(Type1)
print(highatk)


#4
#How many Water-type (Type1) Pokémon do we have in the first generation?
watertype_count <- dat %>%
  filter(Generation == 1, Type1 == "Water") %>%
  summarize(count = n())
print(watertype_count)

#5
#How many Pokémon has Defense point greater than Avalugg?

avalugg_defense <- dat %>%
  filter(Name =="Avalugg") %>%
  pull(Defense)


strongdefense <- dat %>%
  filter(Defense > avalugg_defense) %>%
  select(Name)

num_strong_defense <- nrow(strongdefense)
print(num_strong_defense)


#6
#Which Pokémon type (Type1) is the slowest (based on the average Speed)?
  

slowest <- dat %>%
  group_by(Type1) %>%
  summarize(avgspd = mean(Speed, na.rm = TRUE)) %>%
  filter(avgspd==min(avgspd, na.rm = TRUE)) 
print(slowest)


#7
#Find the maximum HP among legendary Pokémon and also find the maximum HP among non-legendary Pokémon.
#What is the absolute difference between those two maximum HPs?

#legendary maxhp
maxhp_legendary <- dat %>%
  filter(Legendary==TRUE) %>%
  summarize(max_hp=max(HP, na.rm = TRUE)) 
print(maxhp_legendary)
  
#non-legenadry maxhp
maxhp_nonlegendary <- dat %>%
  filter(Legendary==FALSE) %>%
  summarize(max_hp=max(HP, na.rm = TRUE)) 
print(maxhp_nonlegendary)

print(maxhp_legendary-maxhp_nonlegendary)
  
#8
#Suppose the overall value of a Pokémon can be determined by the following formula:
#Pokémon Value = HP + 2*Attack + 1.5*Speed + 1.1*Defense
#What is the lowest Pokémon value based on the above scoring scheme?

value <- dat %>%
  mutate(Pokemon_Value = HP + 2 * Attack + 1.5 * Speed + 1.1 *Defense) %>%
  summarize(low_pvalue = min(Pokemon_Value,na.rm=TRUE))
print(value)

#9
#How many Pokémon have two types?

two_types <- dat %>%
  filter(Type2 !="",) %>%
  summarize(n.count = n())
print(two_types)

#10
#I want a Water-type Pokémon that has HP > 150, Attack >30, Defense > 50, and Speed >30.
#Which Pokémon should I catch?

catch <- dat %>%
  mutate(P_value = HP > 150 & Attack >30 & Defense > 50 & Speed > 30) %>%
  filter(P_value==TRUE)
print(catch)
  



