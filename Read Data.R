## Load in packages needed
require(tidyverse)
require(readxl)


# Read in the raw data as a tibble not using the row names
# because they contain non-ascii characters
# Assign NA to all relevant strings
as_tibble(read_excel("Survey 6:17:19.xlsx", 
                     col_names = FALSE,
                     na = c("N/A", "n/a", "NA", "na", "Na", "N/a", "Not applicable", "",
                            "Not applicable; my family member does not attend a Down syndrome specialty clinic",
                            "Not sure why this came up and I can't go back and see what answer this is referring to."))) -> 
  DSSurveyraw