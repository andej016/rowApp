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