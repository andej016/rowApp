## Seat Racing server output

output$doubleMatrixDownload.xlsx <- downloadHandler(
  filename <- function(){
    paste("SeatRacing","xlsx",sep=".")
  },
  content <- function(file){
    myfile <- scrpath <- 'rowApp_Spreadsheets/SeatRacing.xlsx'
    file.copy(myfile,file)
  }
)

output$quadSeatRacingDownload.xlsx <- downloadHandler(
  filename <- function(){
    paste("quadSeatRacing","xlsx",sep=".")
  },
  content <- function(file){
    myfile <- scrpath <- 'rowApp_Spreadsheets/quadSeatRacing.xlsx'
    file.copy(myfile,file)
  }
)

output$fourSeatRacingDownload.xlsx <- downloadHandler(
  filename <- function(){
    paste("fourSeatRacing","xlsx",sep=".")
  },
  content <- function(file){
    myfile <- scrpath <- 'rowApp_Spreadsheets/fourSeatRacing.xlsx'
    file.copy(myfile,file)
  }
)