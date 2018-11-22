getwd()

#   "getwd()" displays the working directory for this project
# If you have a .csv file on your local machine you would like to 
# import into this project, move the .csv file into the working 
# directory specified by "getwd()" and uncomment the line below 
# and comment out the other read.csv line immediated after it

#To read a .csv file from a local machine **read above**
#====================================================================================================================
#====================================================================================================================
# Uncomment the line below this ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
# imported_Data <- read.csv("FinalProject.csv", TRUE, ",")
# comment out the line below this ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓ 
imported_Data <- read.csv("https://raw.githubusercontent.com/N03097188/StatisticalFinal/master/FinalProject.csv", TRUE, ",")
#====================================================================================================================
#====================================================================================================================



#====================================================================================================================
#====================================================================================================================
# This section cleans out the NEUTRO column
imported_Data$NEUTRO <- as.numeric(as.character(imported_Data$NEUTRO))  # Ensures NEUTRO column is of type numeric
NEUTRO_screened <- imported_Data$NEUTRO[!(is.na(imported_Data$NEUTRO))] # Filters out NA elements of the NEUTRO column and places it into 
                                                                        # a new vector called NEUTRO_screened
NEUTRO_mean <- mean(NEUTRO_screened)                                    # get the NEUTRO column's mean and stores it into NEUTRO_mean
imported_Data$NEUTRO[(is.na(imported_Data$NEUTRO))] <- NEUTRO_mean      # Replaces NA elements in the imported NEUTRO column with the mean  
imported_Data$NEUTRO                                                    # Displays "imported_Data$NEUTRO" for debugging purposes
#====================================================================================================================
#====================================================================================================================