
pollutantmean <- function(directory, pollutant = "sulfate", id = 1:332) {

    setwd("G:/Data Set for R/R programming")
    # Create empty data frame
    data <- data.frame(Date = as.Date(character()), sulfate=character(), nitrate=character(), ID=character())
    # Join all the selected csv files into one dataframe
    for (i in id) {
        filename <- sprintf("%03d.csv", i)
        filepath <- paste(getwd(), directory, filename, sep="/")
        temp_data <- read.csv(filepath)
        data <- rbind(data, temp_data)
    } 
    
    
    # Compute the mean
    return(round(mean(data[,pollutant], na.rm = TRUE),3))
}

