##Import files
library(readr)
Central_Falls_11_02_2021 <- read_csv("Downloads/2021 Special Generals/Westerly - 05-04-2021.csv")
Westerly_05_04_2021 <- read_csv("Downloads/2021 Special Generals/Westerly - 05-04-2021.csv")
Lincoln_09_07_2021 <- read_csv("Downloads/2021 Special Generals/Lincoln - 09-07-2021.csv")
South_Kingstown_05_04_2021 <- read_csv("Downloads/2021 Special Generals/South Kingstown - 05-04-2021.csv")
Senate_03_11_02_2021 <- read_csv("Downloads/2021 Special Generals/Senate 03 - 11-02-2021.csv")
Voters_East_Greenwich_10_05_2021 <- read_csv("Downloads/2021 Special Generals/Voters - East Greenwich - 10-05-2021.csv")
Westerly_05_04_2021 <- read_csv("Downloads/2021 Special Generals/Westerly - 05-04-2021.csv")
Portsmouth_11_02_2021 <- read_csv("Downloads/2021 Special Generals/Portsmouth - 11-02-2021.csv")

##Join Special Generals files
specialgenerals <- rbind(Central_Falls_11_02_2021,
                 Lincoln_09_07_2021,
                 Portsmouth_11_02_2021,
                 Senate_03_11_02_2021,
                 South_Kingstown_05_04_2021,
                 Voters_East_Greenwich_10_05_2021,
                 Westerly_05_04_2021)

specialgenerals %>%
  write.csv("2021_special_generals.csv")


#Import Primaries files
library(readr)
Pawtucket_Ward_06_Primary_11_02_2021 <- read_csv("Downloads/2021 Special Primaries/Pawtucket - Ward 06 Primary - 11-02-2021.csv")
Providence_Ward15Primary_06_08_2021 <- read_csv("Downloads/2021 Special Primaries/Providence-Ward15Primary-06-08-2021.csv")
Voters_Senate03_10_05_2021 <- read_csv("Downloads/2021 Special Primaries/Voters-Senate03-10-05-2021.csv")

##Join Special Primaries files, create dataframe, export as .csv
specialprimaries <- rbind(Pawtucket_Ward_06_Primary_11_02_2021,
      Providence_Ward15Primary_06_08_2021,
      Voters_Senate03_10_05_2021) 

specialprimaries %>%
  write.csv("2021_special_primaries.csv")


##Examine existing dataframes for duplicate rows, return a dataframe containing the duplicates
commonrowsgeneral <- subset(specialgenerals, duplicated(specialgenerals))
##returned a dataframe with 0 rows indicating no duplicate voters in the generals file

commonrowsprimary <- subset(specialprimaries, duplicated(specialprimaries))
##returned a dataframe with 0 rows indicating no duplicate voters in the primaries file

