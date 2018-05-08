#Functions For race results

rr_RaceResultsFilterFunction <- function(gender,BoatType,ClubName){

  name <- c('Single','Double','Coxed Quad','Quad','Octuple','Pair','Coxed Pair','Four','Coxed Four','Eight')
  boatTypeDecode <- c('1x','2x','4x+','4x','8x+','2-','2+','4-','4+','8+')
  
  boatTypeDecodeTable <- data.frame(
    name,
    boatTypeDecode
  )
  
  boatType <- factor(boatTypeDecodeTable$boatTypeDecode[boatTypeDecodeTable$name == BoatType])
  boatType <- as.character(boatType)
  
  ResultsTable <- read.csv.sql(paste("C:/Users/joe.anderson/Documents/GitHub/rowApp/ShinyAppV2/rowApp_Spreadsheets/RaceResults/Summaries/",
                                      gender,
                                     "Results.csv",
                                     sep=''),
                               sql = paste("
                                           
                                           SELECT 
                                           [Club],
                                           [Boat.Type],
                                           [Sub.Category],
                                           [Rank],
                                           [Event] 
                                           FROM
                                           file
                                           WHERE
                                           [Boat.Type] = '",
                                           boatType,
                                           "'
                                           AND (  ('",
                                           ClubName,
                                           "'!='All' AND [Club] LIKE '%",
                                           ClubName,
                                           "%')
                                           OR
                                           ('",
                                           ClubName,
                                           "'='All')
                                           )",
                                             sep=''
                                           )
                                           )
  
  return(ResultsTable)
  
}

# rr_RaceResultsFilterFunction(gender <- "Male",
#                              BoatType <- 'Eight',
#                              ClubName <- 'Brookes')