
complete <- function(directory, id = 1:332) {
    setwd("G:/Data Set for R/R programming")
    # Create empty data frame
    output_data <- data.frame(id = numeric(), nobs = numeric())
    # Join all the selected csv files into one dataframe
    for (i in id) {
        filename <- sprintf("%03d.csv", i)
        filepath <- paste(getwd(), directory, filename, sep="/")
        data <- read.csv(filepath)
        # use na.omit or complete.cases to remove NA rows
        #complete_data<-data[complete.cases(data),]
        complete_data <- na.omit(data)
    
        # rbind is slow
        output_data <- rbind(output_data, data.frame(id=i, nobs=nrow(complete_data)))

    } 
    return (output_data)

}



