
output$HORR2018.xlsx <- downloadHandler(
  filename <- function(){
    paste("HORR2018","xlsx",sep=".")
  },
  content <- function(file){
    myfile <- scrpath <- 'rowApp_Spreadsheets/RaceResults/2018/HORR2018.xlsx'
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