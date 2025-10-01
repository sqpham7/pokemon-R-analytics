```R
library(data.table)
library(dplyr)
dat =fread("pokemon_dataset.csv")
```


```R
View(dat)
```


<table class="dataframe">
<caption>A data.table: 800 × 9</caption>
<thead>
	<tr><th scope=col>Name</th><th scope=col>Type1</th><th scope=col>Type2</th><th scope=col>HP</th><th scope=col>Attack</th><th scope=col>Defense</th><th scope=col>Speed</th><th scope=col>Generation</th><th scope=col>Legendary</th></tr>
	<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;lgl&gt;</th></tr>
</thead>
<tbody>
	<tr><td>Bulbasaur                </td><td>Grass </td><td>Poison</td><td>45</td><td> 49</td><td> 49</td><td> 45</td><td>1</td><td>FALSE</td></tr>
	<tr><td>Ivysaur                  </td><td>Grass </td><td>Poison</td><td>60</td><td> 62</td><td> 63</td><td> 60</td><td>1</td><td>FALSE</td></tr>
	<tr><td>Venusaur                 </td><td>Grass </td><td>Poison</td><td>80</td><td> 82</td><td> 83</td><td> 80</td><td>1</td><td>FALSE</td></tr>
	<tr><td>VenusaurMega Venusaur    </td><td>Grass </td><td>Poison</td><td>80</td><td>100</td><td>123</td><td> 80</td><td>1</td><td>FALSE</td></tr>
	<tr><td>Charmander               </td><td>Fire  </td><td>      </td><td>39</td><td> 52</td><td> 43</td><td> 65</td><td>1</td><td>FALSE</td></tr>
	<tr><td>Charmeleon               </td><td>Fire  </td><td>      </td><td>58</td><td> 64</td><td> 58</td><td> 80</td><td>1</td><td>FALSE</td></tr>
	<tr><td>Charizard                </td><td>Fire  </td><td>Flying</td><td>78</td><td> 84</td><td> 78</td><td>100</td><td>1</td><td>FALSE</td></tr>
	<tr><td>CharizardMega Charizard X</td><td>Fire  </td><td>Dragon</td><td>78</td><td>130</td><td>111</td><td>100</td><td>1</td><td>FALSE</td></tr>
	<tr><td>CharizardMega Charizard Y</td><td>Fire  </td><td>Flying</td><td>78</td><td>104</td><td> 78</td><td>100</td><td>1</td><td>FALSE</td></tr>
	<tr><td>Squirtle                 </td><td>Water </td><td>      </td><td>44</td><td> 48</td><td> 65</td><td> 43</td><td>1</td><td>FALSE</td></tr>
	<tr><td>Wartortle                </td><td>Water </td><td>      </td><td>59</td><td> 63</td><td> 80</td><td> 58</td><td>1</td><td>FALSE</td></tr>
	<tr><td>Blastoise                </td><td>Water </td><td>      </td><td>79</td><td> 83</td><td>100</td><td> 78</td><td>1</td><td>FALSE</td></tr>
	<tr><td>BlastoiseMega Blastoise  </td><td>Water </td><td>      </td><td>79</td><td>103</td><td>120</td><td> 78</td><td>1</td><td>FALSE</td></tr>
	<tr><td>Caterpie                 </td><td>Bug   </td><td>      </td><td>45</td><td> 30</td><td> 35</td><td> 45</td><td>1</td><td>FALSE</td></tr>
	<tr><td>Metapod                  </td><td>Bug   </td><td>      </td><td>50</td><td> 20</td><td> 55</td><td> 30</td><td>1</td><td>FALSE</td></tr>
	<tr><td>Butterfree               </td><td>Bug   </td><td>Flying</td><td>60</td><td> 45</td><td> 50</td><td> 70</td><td>1</td><td>FALSE</td></tr>
	<tr><td>Weedle                   </td><td>Bug   </td><td>Poison</td><td>40</td><td> 35</td><td> 30</td><td> 50</td><td>1</td><td>FALSE</td></tr>
	<tr><td>Kakuna                   </td><td>Bug   </td><td>Poison</td><td>45</td><td> 25</td><td> 50</td><td> 35</td><td>1</td><td>FALSE</td></tr>
	<tr><td>Beedrill                 </td><td>Bug   </td><td>Poison</td><td>65</td><td> 90</td><td> 40</td><td> 75</td><td>1</td><td>FALSE</td></tr>
	<tr><td>BeedrillMega Beedrill    </td><td>Bug   </td><td>Poison</td><td>65</td><td>150</td><td> 40</td><td>145</td><td>1</td><td>FALSE</td></tr>
	<tr><td>Pidgey                   </td><td>Normal</td><td>Flying</td><td>40</td><td> 45</td><td> 40</td><td> 56</td><td>1</td><td>FALSE</td></tr>
	<tr><td>Pidgeotto                </td><td>Normal</td><td>Flying</td><td>63</td><td> 60</td><td> 55</td><td> 71</td><td>1</td><td>FALSE</td></tr>
	<tr><td>Pidgeot                  </td><td>Normal</td><td>Flying</td><td>83</td><td> 80</td><td> 75</td><td>101</td><td>1</td><td>FALSE</td></tr>
	<tr><td>PidgeotMega Pidgeot      </td><td>Normal</td><td>Flying</td><td>83</td><td> 80</td><td> 80</td><td>121</td><td>1</td><td>FALSE</td></tr>
	<tr><td>Rattata                  </td><td>Normal</td><td>      </td><td>30</td><td> 56</td><td> 35</td><td> 72</td><td>1</td><td>FALSE</td></tr>
	<tr><td>Raticate                 </td><td>Normal</td><td>      </td><td>55</td><td> 81</td><td> 60</td><td> 97</td><td>1</td><td>FALSE</td></tr>
	<tr><td>Spearow                  </td><td>Normal</td><td>Flying</td><td>40</td><td> 60</td><td> 30</td><td> 70</td><td>1</td><td>FALSE</td></tr>
	<tr><td>Fearow                   </td><td>Normal</td><td>Flying</td><td>65</td><td> 90</td><td> 65</td><td>100</td><td>1</td><td>FALSE</td></tr>
	<tr><td>Ekans                    </td><td>Poison</td><td>      </td><td>35</td><td> 60</td><td> 44</td><td> 55</td><td>1</td><td>FALSE</td></tr>
	<tr><td>Arbok                    </td><td>Poison</td><td>      </td><td>60</td><td> 85</td><td> 69</td><td> 80</td><td>1</td><td>FALSE</td></tr>
	<tr><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td></tr>
	<tr><td>Sylveon              </td><td>Fairy   </td><td>      </td><td> 95</td><td> 65</td><td> 65</td><td> 60</td><td>6</td><td>FALSE</td></tr>
	<tr><td>Hawlucha             </td><td>Fighting</td><td>Flying</td><td> 78</td><td> 92</td><td> 75</td><td>118</td><td>6</td><td>FALSE</td></tr>
	<tr><td>Dedenne              </td><td>Electric</td><td>Fairy </td><td> 67</td><td> 58</td><td> 57</td><td>101</td><td>6</td><td>FALSE</td></tr>
	<tr><td>Carbink              </td><td>Rock    </td><td>Fairy </td><td> 50</td><td> 50</td><td>150</td><td> 50</td><td>6</td><td>FALSE</td></tr>
	<tr><td>Goomy                </td><td>Dragon  </td><td>      </td><td> 45</td><td> 50</td><td> 35</td><td> 40</td><td>6</td><td>FALSE</td></tr>
	<tr><td>Sliggoo              </td><td>Dragon  </td><td>      </td><td> 68</td><td> 75</td><td> 53</td><td> 60</td><td>6</td><td>FALSE</td></tr>
	<tr><td>Goodra               </td><td>Dragon  </td><td>      </td><td> 90</td><td>100</td><td> 70</td><td> 80</td><td>6</td><td>FALSE</td></tr>
	<tr><td>Klefki               </td><td>Steel   </td><td>Fairy </td><td> 57</td><td> 80</td><td> 91</td><td> 75</td><td>6</td><td>FALSE</td></tr>
	<tr><td>Phantump             </td><td>Ghost   </td><td>Grass </td><td> 43</td><td> 70</td><td> 48</td><td> 38</td><td>6</td><td>FALSE</td></tr>
	<tr><td>Trevenant            </td><td>Ghost   </td><td>Grass </td><td> 85</td><td>110</td><td> 76</td><td> 56</td><td>6</td><td>FALSE</td></tr>
	<tr><td>PumpkabooAverage Size</td><td>Ghost   </td><td>Grass </td><td> 49</td><td> 66</td><td> 70</td><td> 51</td><td>6</td><td>FALSE</td></tr>
	<tr><td>PumpkabooSmall Size  </td><td>Ghost   </td><td>Grass </td><td> 44</td><td> 66</td><td> 70</td><td> 56</td><td>6</td><td>FALSE</td></tr>
	<tr><td>PumpkabooLarge Size  </td><td>Ghost   </td><td>Grass </td><td> 54</td><td> 66</td><td> 70</td><td> 46</td><td>6</td><td>FALSE</td></tr>
	<tr><td>PumpkabooSuper Size  </td><td>Ghost   </td><td>Grass </td><td> 59</td><td> 66</td><td> 70</td><td> 41</td><td>6</td><td>FALSE</td></tr>
	<tr><td>GourgeistAverage Size</td><td>Ghost   </td><td>Grass </td><td> 65</td><td> 90</td><td>122</td><td> 84</td><td>6</td><td>FALSE</td></tr>
	<tr><td>GourgeistSmall Size  </td><td>Ghost   </td><td>Grass </td><td> 55</td><td> 85</td><td>122</td><td> 99</td><td>6</td><td>FALSE</td></tr>
	<tr><td>GourgeistLarge Size  </td><td>Ghost   </td><td>Grass </td><td> 75</td><td> 95</td><td>122</td><td> 69</td><td>6</td><td>FALSE</td></tr>
	<tr><td>GourgeistSuper Size  </td><td>Ghost   </td><td>Grass </td><td> 85</td><td>100</td><td>122</td><td> 54</td><td>6</td><td>FALSE</td></tr>
	<tr><td>Bergmite             </td><td>Ice     </td><td>      </td><td> 55</td><td> 69</td><td> 85</td><td> 28</td><td>6</td><td>FALSE</td></tr>
	<tr><td>Avalugg              </td><td>Ice     </td><td>      </td><td> 95</td><td>117</td><td>184</td><td> 28</td><td>6</td><td>FALSE</td></tr>
	<tr><td>Noibat               </td><td>Flying  </td><td>Dragon</td><td> 40</td><td> 30</td><td> 35</td><td> 55</td><td>6</td><td>FALSE</td></tr>
	<tr><td>Noivern              </td><td>Flying  </td><td>Dragon</td><td> 85</td><td> 70</td><td> 80</td><td>123</td><td>6</td><td>FALSE</td></tr>
	<tr><td>Xerneas              </td><td>Fairy   </td><td>      </td><td>126</td><td>131</td><td> 95</td><td> 99</td><td>6</td><td> TRUE</td></tr>
	<tr><td>Yveltal              </td><td>Dark    </td><td>Flying</td><td>126</td><td>131</td><td> 95</td><td> 99</td><td>6</td><td> TRUE</td></tr>
	<tr><td>Zygarde50% Forme     </td><td>Dragon  </td><td>Ground</td><td>108</td><td>100</td><td>121</td><td> 95</td><td>6</td><td> TRUE</td></tr>
	<tr><td>Diancie              </td><td>Rock    </td><td>Fairy </td><td> 50</td><td>100</td><td>150</td><td> 50</td><td>6</td><td> TRUE</td></tr>
	<tr><td>DiancieMega Diancie  </td><td>Rock    </td><td>Fairy </td><td> 50</td><td>160</td><td>110</td><td>110</td><td>6</td><td> TRUE</td></tr>
	<tr><td>HoopaHoopa Confined  </td><td>Psychic </td><td>Ghost </td><td> 80</td><td>110</td><td> 60</td><td> 70</td><td>6</td><td> TRUE</td></tr>
	<tr><td>HoopaHoopa Unbound   </td><td>Psychic </td><td>Dark  </td><td> 80</td><td>160</td><td> 60</td><td> 80</td><td>6</td><td> TRUE</td></tr>
	<tr><td>Volcanion            </td><td>Fire    </td><td>Water </td><td> 80</td><td>110</td><td>120</td><td> 70</td><td>6</td><td> TRUE</td></tr>
</tbody>
</table>




```R
#1 - Count the number of Legendary Pokémon.
legendary_count <- dat %>%
  filter(Legendary == TRUE) %>%
  summarize(count = n())
print(legendary_count)
```

      count
    1    65



```R
#2 - Find the average HP of Grass-type Pokémon.
avghp <- dat %>%
  filter(Type1 == "Grass") %>%
  summarize(avghp = mean(HP, na.rm = TRUE))
print(avghp)
```

         avghp
    1 67.27143



```R
#3 - What is the type (Type1) of the strongest Pokémon with the highest Attack stat?
highatk <- dat %>%
  filter(Attack==max(Attack, na.rm = TRUE)) %>%
  select(Type1)
print(highatk)
```

         Type1
        <char>
    1: Psychic



```R
#4 - How many Water-type (Type1) Pokémon do we have in the first generation?
watertype_count <- dat %>%
  filter(Generation == 1, Type1 == "Water") %>%
  summarize(count = n())
print(watertype_count)
```

      count
    1    31



```R
#5 - How many Pokémon has Defense point greater than Avalugg?
avalugg_defense <- dat %>%
  filter(Name =="Avalugg") %>%
  pull(Defense)


strongdefense <- dat %>%
  filter(Defense > avalugg_defense) %>%
  select(Name)

num_strong_defense <- nrow(strongdefense)
print(num_strong_defense)
```

    [1] 5



```R
#6
#Which Pokémon type (Type1) is the slowest (based on the average Speed)?


slowest <- dat %>%
  group_by(Type1) %>%
  summarize(avgspd = mean(Speed, na.rm = TRUE)) %>%
  filter(avgspd==min(avgspd, na.rm = TRUE)) 
print(slowest)
```

    [90m# A tibble: 1 × 2[39m
      Type1 avgspd
      [3m[90m<chr>[39m[23m  [3m[90m<dbl>[39m[23m
    [90m1[39m Fairy   48.6



```R
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
```

      max_hp
    1    150
      max_hp
    1    255
      max_hp
    1   -105



```R
#8
#Suppose the overall value of a Pokémon can be determined by the following formula:
#Pokémon Value = HP + 2*Attack + 1.5*Speed + 1.1*Defense
#What is the lowest Pokémon value based on the above scoring scheme?

value <- dat %>%
  mutate(Pokemon_Value = HP + 2 * Attack + 1.5 * Speed + 1.1 *Defense) %>%
  summarize(low_pvalue = min(Pokemon_Value,na.rm=TRUE))
print(value)
```

      low_pvalue
    1      153.3



```R
#9
#How many Pokémon have two types?

two_types <- dat %>%
  filter(Type2 !="",) %>%
  summarize(n.count = n())
print(two_types)
```

      n.count
    1     414



```R
#10
#I want a Water-type Pokémon that has HP > 150, Attack >30, Defense > 50, and Speed >30.
#Which Pokémon should I catch?

catch <- dat %>%
  mutate(P_value = HP > 150 & Attack >30 & Defense > 50 & Speed > 30) %>%
  filter(P_value==TRUE)
print(catch)
```

            Name   Type1  Type2    HP Attack Defense Speed Generation Legendary
          <char>  <char> <char> <int>  <int>   <int> <int>      <int>    <lgcl>
    1: Wobbuffet Psychic          190     33      58    33          2     FALSE
    2: Alomomola   Water          165     75      80    65          5     FALSE
       P_value
        <lgcl>
    1:    TRUE
    2:    TRUE

