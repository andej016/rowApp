
output$HORR2018.xlsx <- downloadHandler(
  filename <- function(){
    paste("HORR2018","xlsx",sep=".")
  },
  content <- function(file){
    myfile <- scrpath <- 'rowApp_Spreadsheets/RaceResults/2018/HORR2018.xlsx'
    file.copy(myfile,file)
  }
)

output$HOR42018.xlsx <- downloadHandler(
  filename <- function(){
    paste("HOR42018","xlsx",sep=".")
  },
  content <- function(file){
    myfile <- scrpath <- 'rowApp_Spreadsheets/RaceResults/2018/HOR42018.xlsx'
    file.copy(myfile,file)
  }
)

output$PairsHead2018.xlsx <- downloadHandler(
  filename <- function(){
    paste("PairsHead2018","xlsx",sep=".")
  },
  content <- function(file){
    myfile <- scrpath <- 'rowApp_Spreadsheets/RaceResults/2018/PairsHead2018.xlsx'
    file.copy(myfile,file)
  }
)

output$ScullersHead2018.xlsx <- downloadHandler(
  filename <- function(){
    paste("ScullersHead2018","xlsx",sep=".")
  },
  content <- function(file){
    myfile <- scrpath <- 'rowApp_Spreadsheets/RaceResults/2018/ScullersHead2018.xlsx'
    file.copy(myfile,file)
  }
)

output$SHORR2018.xlsx <- downloadHandler(
  filename <- function(){
    paste("SHORR2018","xlsx",sep=".")
  },
  content <- function(file){
    myfile <- scrpath <- 'rowApp_Spreadsheets/RaceResults/2018/SHORR2018.xlsx'
    file.copy(myfile,file)
  }
)

output$HeadOfTheTrent.xlsx <- downloadHandler(
  filename <- function(){
    paste("HeadOfTheTrent","xlsx",sep=".")
  },
  content <- function(file){
    myfile <- scrpath <- 'rowApp_Spreadsheets/RaceResults/2018/HeadOfTheTrent.xlsx'
    file.copy(myfile,file)
  }
)

output$WallingfordRegatta.xlsx <- downloadHandler(
  filename <- function(){
    paste("WallingfordRegatta","xlsx",sep=".")
  },
  content <- function(file){
    myfile <- scrpath <- 'rowApp_Spreadsheets/RaceResults/2018/WallingfordRegatta2018.xlsx'
    file.copy(myfile,file)
  }
)

output$JuniorScullingHead.xlsx <- downloadHandler(
  filename <- function(){
    paste("JuniorScullingHead","xlsx",sep=".")
  },
  content <- function(file){
    myfile <- scrpath <- 'rowApp_Spreadsheets/RaceResults/2018/JuniorScullingHead2018.xlsx'
    file.copy(myfile,file)
  }
)

output$BUCSHead.xlsx <- downloadHandler(
  filename <- function(){
    paste("BUCSHead","xlsx",sep=".")
  },
  content <- function(file){
    myfile <- scrpath <- 'rowApp_Spreadsheets/RaceResults/2018/BUCSHead2018.xlsx'
    file.copy(myfile,file)
  }
)

output$WeHORR2018.xlsx <- downloadHandler(
  filename <- function(){
    paste("WeHORR","xlsx",sep=".")
  },
  content <- function(file){
    myfile <- scrpath <- 'rowApp_Spreadsheets/RaceResults/2018/WeHORR2018.xlsx'
    file.copy(myfile,file)
  }
)

output$ChesterLDS2018.xlsx <- downloadHandler(
  filename <- function(){
    paste("ChesterLDS","xlsx",sep=".")
  },
  content <- function(file){
    myfile <- scrpath <- 'rowApp_Spreadsheets/RaceResults/2018/ChesterLDS2018.xlsx'
    file.copy(myfile,file)
  }
)

output$WallingfordHead2018.xlsx <- downloadHandler(
  filename <- function(){
    paste("WallingfordHead","xlsx",sep=".")
  },
  content <- function(file){
    myfile <- scrpath <- 'rowApp_Spreadsheets/RaceResults/2018/WallingfordHead2018.xlsx'
    file.copy(myfile,file)
  }
)

output$Henley4sAnd8sHead2017.xlsx <- downloadHandler(
  filename <- function(){
    paste("Henley4sAnd8sHead","xlsx",sep=".")
  },
  content <- function(file){
    myfile <- scrpath <- 'rowApp_Spreadsheets/RaceResults/2018/Henley4sAnd8sHead2017.xlsx'
    file.copy(myfile,file)
  }
)

output$Rutherford2017.xlsx <- downloadHandler(
  filename <- function(){
    paste("RutherfordHead","xlsx",sep=".")
  },
  content <- function(file){
    myfile <- scrpath <- 'rowApp_Spreadsheets/RaceResults/2018/RutherfordHead2017.xlsx'
    file.copy(myfile,file)
  }
)

output$StrathclydeParkRegatta2018.xlsx <- downloadHandler(
  filename <- function(){
    paste("StrathclydeParkRegatta","xlsx",sep=".")
  },
  content <- function(file){
    myfile <- scrpath <- 'rowApp_Spreadsheets/RaceResults/2018/StrathclydeParkRegatta.xlsx'
    file.copy(myfile,file)
  }
)

output$YorkSmallBoatsHead2017.xlsx <- downloadHandler(
  filename <- function(){
    paste("YorkSmallBoatsHead","xlsx",sep=".")
  },
  content <- function(file){
    myfile <- scrpath <- 'rowApp_Spreadsheets/RaceResults/2018/YorkSmallBoatsHead2017.xlsx'
    file.copy(myfile,file)
  }
)

output$QuintinHead2018.xlsx <- downloadHandler(
  filename <- function(){
    paste("QuintinHead","xlsx",sep=".")
  },
  content <- function(file){
    myfile <- scrpath <- 'rowApp_Spreadsheets/RaceResults/2018/QuintinHead2018.xlsx'
    file.copy(myfile,file)
  }
)

output$HenleyLongDistanceSculls2017.xlsx <- downloadHandler(
  filename <- function(){
    paste("HenleyLongDistanceSculls","xlsx",sep=".")
  },
  content <- function(file){
    myfile <- scrpath <- 'rowApp_Spreadsheets/RaceResults/2018/HenleyLongDistanceSculls2017.xlsx'
    file.copy(myfile,file)
  }
)

output$JuniorScullingRegattaTimeTrial2018.xlsx <- downloadHandler(
  filename <- function(){
    paste("JuniorScullingRegattaTimeTrial","xlsx",sep=".")
  },
  content <- function(file){
    myfile <- scrpath <- 'rowApp_Spreadsheets/RaceResults/2018/JuniorScullingRegattaTimeTrial2018.xlsx'
    file.copy(myfile,file)
  }
)

output$NovemberTrialsGB.xlsx <- downloadHandler(
  filename <- function(){
    paste("NovemberTrialsGB","xlsx",sep=".")
  },
  content <- function(file){
    myfile <- scrpath <- 'rowApp_Spreadsheets/RaceResults/2018/Trials/NovemberTrialsGB.xlsx'
    file.copy(myfile,file)
  }
)

output$rr_FilteredRaceResults <- renderDataTable({
  rr_RaceResultsFilterFunction(
    gender = input$rr_Gender,
    BoatType = input$rr_BoatType,
    ClubName = input$rr_ClubName
  )
}
)