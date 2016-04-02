pollutantmean <- function( directory, pollutant, id = 1:332) {
 
  #Re-format id to 3 digt format
  id_fmt <- sprintf("%03d", id)
  
  #generate a path to file using input string
  path <- paste("/Users/abhischo/documents/R_programming/", directory, "/", id_fmt, ".csv", sep = "")
  
  # read each file and store pollutant data in a vector
  for (i in 1:length(id)){
  
    data <- read.csv(path[i])
    pol_read <- data[ , pollutant]
    data
  }
}
