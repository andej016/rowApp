#Compliance Packages

list.of.packages <- c(
  "shiny",
  "XLConnect",
  "xlsx",
  "kimisc",
  "lubridate",
  "shinyTime",
  "shinythemes"
)

new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]

if(length(new.packages)){
  install.packages(new.packages)
}

lapply(list.of.packages,require,character.only = TRUE)