getwd()

#   "getwd()" displays the working directory for this project
# If you have a .csv file on your local machine that you would like to 
# import into this project, move the .csv file into the working 
# directory specified by "getwd()" and uncomment the line below 
# and comment out the other read.csv line immediated after it



#====================================================================================================================
#====================================================================================================================
# To read a target .csv file from a local machine **read above**
# Uncomment the line below this ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
# imported_Data <- read.csv("FinalProject.csv", TRUE, ",")
# comment out the line below this ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓ 
imported_Data <- read.csv("https://raw.githubusercontent.com/N03097188/StatisticalFinal/master/FinalProject.csv", TRUE, ",")
#====================================================================================================================
#====================================================================================================================



#====================================================================================================================
#====================================================================================================================
# This section screens out the NEUTRO column for emtpy cells, and outliers that are not between the data set's IQR 
imported_Data$NEUTRO <- as.numeric(as.character(imported_Data$NEUTRO))              # Ensures the NEUTRO column is of type numeric 
NEUTRO_screened <- imported_Data$NEUTRO[!is.na(imported_Data$NEUTRO)]               # Screens out NA values in the NEUTRO column and stores remaining values in NEUTRO_screened
NEUTRO_screened <- NEUTRO_screened[NEUTRO_screened<quantile(NEUTRO_screened, 0.75)] # Screens out values above third quartile mark in the NEUTRO column and stores remaining values in NEUTRO_screened
NEUTRO_screened <- NEUTRO_screened[NEUTRO_screened>quantile(NEUTRO_screened, 0.25)] # Screens out values below first quartile mark in the NEUTRO column and stores remaining values in NEUTRO_screened
NEUTRO_screened                                                                     # Print to see final filtered vector 
#====================================================================================================================
#====================================================================================================================



#====================================================================================================================
#====================================================================================================================
# This section screens out the PLATE column for emtpy cells, and outliers that are not between the data set's IQR 
imported_Data$PLATE <- as.numeric(as.character(imported_Data$PLATE))                # Ensures the PLATE column is of type numeric 
PLATE_screened <- imported_Data$PLATE[!is.na(imported_Data$PLATE)]                  # Screens out NA values in the PLATE column and stores remaining values in PLATE_screened
PLATE_screened <- PLATE_screened[PLATE_screened<quantile(PLATE_screened, 0.75)]     # Screens out values above third quartile mark in the PLATE column and stores remaining values in PLATE_screened
PLATE_screened <- PLATE_screened[PLATE_screened>quantile(PLATE_screened, 0.25)]     # Screens out values below first quartile mark in the PLATE column and stores remaining values in PLATE_screened
PLATE_screened                                                                      # Print to see final filtered vector 
#====================================================================================================================
#====================================================================================================================



#====================================================================================================================
#====================================================================================================================
# This section screens out the survival column for emtpy cells, and outliers that are not between the data set's IQR 
imported_Data$survival <- as.numeric(as.character(imported_Data$survival))                  # Ensures the survival column is of type numeric 
survival_screened <- imported_Data$survival[!is.na(imported_Data$survival)]                 # Screens out NA values in the survival column and stores remaining values in survival_screened
survival_screened <- survival_screened[survival_screened<quantile(survival_screened, 0.75)] # Screens out values above third quartile mark in the survival column and stores remaining values into survival_screened
survival_screened <- survival_screened[survival_screened>quantile(survival_screened, 0.25)] # Screens out values below first quartile mark in the survival column and stores remaining values into survival_screened
survival_screened                                                                           # Print to see final filtered vector 
#====================================================================================================================
#====================================================================================================================



#====================================================================================================================
#====================================================================================================================
# This section screens out the AMLTIME column for emtpy cells, and outliers that are not between the data set's IQR 
imported_Data$AMLTIME <- as.numeric(as.character(imported_Data$AMLTIME))                # Ensures the AMLTIME column is of type numeric 
AMLTIME_screened <- imported_Data$AMLTIME[!is.na(imported_Data$AMLTIME)]                # Screens out NA values in the AMLTIME column and stores remaining values in ALMTIME_screened
AMLTIME_screened <- AMLTIME_screened[AMLTIME_screened<quantile(AMLTIME_screened, 0.75)] # Screens out values above third quartile mark in the AMLTIME column and stores remaining values in AMLTIME_screened
AMLTIME_screened <- AMLTIME_screened[AMLTIME_screened>quantile(AMLTIME_screened, 0.25)] # Screens out values below first quartile mark in the AMLTIME column and stores remaining values in AMLTIME_screened
AMLTIME_screened                                                                        # Print to see final filtered vector 
#====================================================================================================================
#====================================================================================================================



#====================================================================================================================
#====================================================================================================================
# This section cleans out the NEUTRO column
#imported_Data$NEUTRO <- as.numeric(as.character(imported_Data$NEUTRO))  # Ensures NEUTRO column is of type numeric
#NEUTRO_screened <- imported_Data$NEUTRO[!(is.na(imported_Data$NEUTRO))] # Filters out NA elements of the NEUTRO column and places it into 
                                                                         # a new vector called NEUTRO_screened
#NEUTRO_mean <- mean(NEUTRO_screened)                                    # get the NEUTRO column's mean and stores it into NEUTRO_mean
#imported_Data$NEUTRO[(is.na(imported_Data$NEUTRO))] <- NEUTRO_mean      # Replaces NA elements in the imported NEUTRO column with the mean  
#imported_Data$NEUTRO                                                    # Displays "imported_Data$NEUTRO" for debugging purposes
#====================================================================================================================
#====================================================================================================================