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



# 
output$PairsMatrixDownload.xlsx <- downloadHandler(
  filename <- function(){
    "PairsMatrixDownload.xlsx"
    },
  content = function(file){
    
    allStrokeSiderInputs <- c(input$pairmat_stroke1,
                              input$pairmat_stroke2,
                              input$pairmat_stroke3,
                              input$pairmat_stroke4,
                              input$pairmat_stroke5,
                              input$pairmat_stroke6,
                              input$pairmat_stroke7,
                              input$pairmat_stroke8,
                              input$pairmat_stroke9,
                              input$pairmat_stroke10,
                              input$pairmat_stroke11,
                              input$pairmat_stroke12)
    
    strokeSiders <- allStrokeSiderInputs[1:input$pairmat_NumberOfStrokeSiders]
    
    allBowSiderInputs <- c(input$pairmat_bow1,
                           input$pairmat_bow2,
                           input$pairmat_bow3,
                           input$pairmat_bow4,
                           input$pairmat_bow5,
                           input$pairmat_bow6,
                           input$pairmat_bow7,
                           input$pairmat_bow8,
                           input$pairmat_bow9,
                           input$pairmat_bow10,
                           input$pairmat_bow11,
                           input$pairmat_bow12
                           )
    
    bowSiders <- allBowSiderInputs[1:input$pairmat_NumberOfBowSiders]
    
    allPairNames <- c(input$pairmat_pair1,
                      input$pairmat_pair2,
                      input$pairmat_pair3,
                      input$pairmat_pair4,
                      input$pairmat_pair5,
                      input$pairmat_pair6,
                      input$pairmat_pair7,
                      input$pairmat_pair8,
                      input$pairmat_pair9,
                      input$pairmat_pair10,
                      input$pairmat_pair11,
                      input$pairmat_pair12)
    
    pairnames <- c(input$pairmat_pair1,
                   input$pairmat_pair2,
                   input$pairmat_pair3,
                   input$pairmat_pair4,
                   input$pairmat_pair5,
                   input$pairmat_pair6,
                   input$pairmat_pair7,
                   input$pairmat_pair8,
                   input$pairmat_pair9,
                   input$pairmat_pair10,
                   input$pairmat_pair11,
                   input$pairmat_pair12)
    
    if(length(strokeSiders) >= length(bowSiders)){
      
      numberOfRuns <- length(strokeSiders)
      numberOfPairs <- length(bowSiders)
      
      scheduleMatrix <- matrix(nrow = 2 * numberOfRuns,
                               ncol = 2 * numberOfPairs)
      
      for(run in 1:numberOfRuns){
        for(athlete in 1: numberOfPairs){
          scheduleMatrix[(2*run - 1),athlete] <- bowSiders[athlete]
        }
      }
      for(athlete in 1:numberOfRuns){
        for(run in 1:numberOfRuns){
          if((athlete+run -1) %% numberOfRuns != 0){
            scheduleMatrix[2*run,(athlete + run -1) %% numberOfRuns] <- strokeSiders[athlete]
          }
          if((athlete+run -1) %% numberOfRuns == 0){
            scheduleMatrix[2*run,numberOfRuns] <- strokeSiders[athlete]
          }
        }
      }
      
      columnNames <- c()
      for(boat in 1:numberOfPairs){
        columnNames <- append(columnNames,
                              paste("pairNumber", boat, sep =""))
      }
      
      racingSchedule <- data.frame(scheduleMatrix[,(1:numberOfPairs)])
      names(racingSchedule) <- columnNames
      
      rowNames <- c()
      for (run in 1:numberOfRuns){
        rowNames <- append(rowNames,c(paste('StrokeSide',run,sep=""),paste('BowSide',run,sep="")))
      }
      
      row.names(racingSchedule) <- rowNames
      NamesColumn <- data.frame("PairsMatrix"= c('Bow Sider','Stroke Sider', 'Start Time', 'End Time', 'Time'))
      
    }
    
    if(length(bowSiders) > length(strokeSiders)){
      
      numberOfRuns <- length(bowSiders)
      numberOfPairs <- length(strokeSiders)
      
      scheduleMatrix <- matrix(nrow = 2 * numberOfRuns,
                               ncol = 2 * numberOfPairs)
      
      for(run in 1:numberOfRuns){
        for(athlete in 1: numberOfPairs){
          scheduleMatrix[(2*run - 1),athlete] <- strokeSiders[athlete]
        }
      }
      for(athlete in 1:numberOfRuns){
        for(run in 1:numberOfRuns){
          if((athlete+run -1) %% numberOfRuns != 0){
            scheduleMatrix[2*run,(athlete + run -1) %% numberOfRuns] <- bowSiders[athlete]
          }
          if((athlete+run -1) %% numberOfRuns == 0){
            scheduleMatrix[2*run,numberOfRuns] <- bowSiders[athlete]
          }
        }
      }
      
      columnNames <- c()
      for(boat in 1:numberOfPairs){
        columnNames <- append(columnNames,
                              paste("pair Number ", boat, sep =""))
      }
      
      racingSchedule <- data.frame(scheduleMatrix[,(1:numberOfPairs)])
      names(racingSchedule) <- columnNames
      
      rowNames <- c()
      for (run in 1:numberOfRuns){
        rowNames <- append(rowNames,c(paste('StrokeSide',run,sep=""),paste('BowSide',run,sep="")))
      }
      
      row.names(racingSchedule) <- rowNames
      NamesColumn <- data.frame("PairsMatrix"= c('Stroke Sider','Bow Sider', 'Start Time', 'End Time', 'Time'))
      
    }
    
    FormattedSchedule <- racingSchedule[c(1,2),]
    
    for(run in 1:(numberOfRuns - 1)){
      FormattedSchedule <- cbind(FormattedSchedule,racingSchedule[c(((2*run) -1),(2*run)),])
    }
    
    columnRunNames <- c()
    for(run in 1: numberOfRuns){
      for(boat in 1:numberOfPairs){
        columnRunNames <- append(columnRunNames,
                                 paste(pairnames[boat],
                                       'Run',
                                       run,
                                       sep = " "))
      }
    }
    
    names(FormattedSchedule) <- columnRunNames
    timeVec <- data.frame(c(rep.POSIXlt("00:00.00",ncol(FormattedSchedule))))
    
    
    
    
    fname <- paste(file,"xlsx",sep=".")
    wb <- XLConnect::loadWorkbook(fname, create = TRUE)
    XLConnect::createSheet(wb, name ="PairsMatrix")
    
    
    # writeWorksheet(wb,c(1:3),sheet = "PairsMatrix")
    writeWorksheet(wb,FormattedSchedule,sheet="PairsMatrix",startRow = 1,startCol = 2)
    writeWorksheet(wb,NamesColumn,sheet = "PairsMatrix", startRow = 1,startCol = 1)
    writeWorksheet(wb,t(timeVec),sheet="PairsMatrix",startRow = 4,startCol = 2, header = FALSE)
    writeWorksheet(wb,t(timeVec),sheet="PairsMatrix",startRow = 5,startCol = 2, header = FALSE)
    writeWorksheet(wb,t(c('Bow Sider','Total Time','Rank')),sheet="PairsMatrix",startRow = 10,startCol = 1, header = FALSE)
    writeWorksheet(wb,bowSiders,sheet="PairsMatrix",startRow = 11,startCol = 1, header = FALSE)
    writeWorksheet(wb,t(c('Stroke Sider','Total Time','Rank')),sheet="PairsMatrix",startRow = 10,startCol = 6, header = FALSE)
    writeWorksheet(wb,bowSiders,sheet="PairsMatrix",startRow = 11,startCol = 6, header = FALSE)
    for(col in 1:ncol(FormattedSchedule)){
      if(col <= 25){
        timediffFormula <- paste('(',
                                 letters[col+1],
                                 '5',
                                 '-',
                                 letters[col+1],
                                 '4',
                                 ')*86400',
                                 sep = '')
        setCellFormula(wb,sheet='PairsMatrix',row = 6, col = (col + 1), timediffFormula)
        
      }
      if(col > 25 && col <= 51){
        timediffFormula <- paste('(',
                                 letters[1],
                                 letters[(col+1)-26],
                                 '5',
                                 '-',
                                 letters[1],
                                 letters[(col+1)-26],
                                 '4',
                                 ')*86400',
                                 sep = '')
        setCellFormula(wb,sheet='PairsMatrix',row = 6, col = (col + 1), timediffFormula)
        
      }
      if(col > 51 && col <= 77){
        timediffFormula <- paste('(',
                                 letters[2],
                                 letters[(col+1)-52],
                                 '5',
                                 '-',
                                 letters[2],
                                 letters[(col+1)-52],
                                 '4',
                                 ')*86400',
                                 sep = '')
        setCellFormula(wb,sheet='PairsMatrix',row = 6, col = (col + 1), timediffFormula)
        
      }
      if(col > 77 && col <= 103){
        timediffFormula <- paste('(',
                                 letters[3],
                                 letters[(col+1)-78],
                                 '5',
                                 '-',
                                 letters[3],
                                 letters[(col+1)-78],
                                 '4',
                                 ')*86400',
                                 sep = '')
        setCellFormula(wb,sheet='PairsMatrix',row = 6, col = (col + 1), timediffFormula)
        
      }
    }
    
    minColIndexBow <- 11
    maxColIndexBow <- 10 + length(bowSiders)
    
    for(ath in 1:length(bowSiders)){
      timeSumFormula <- paste('SUMIF(B2:CZ2,',
                              'A',
                              (10+ath),
                              ',B6:CZ6)',
                              '+',
                              'SUMIF(B3:CZ3,',
                              'A',
                              (10+ath),
                              ',B6:CZ6)',
                              sep='')
      setCellFormula(wb,sheet='PairsMatrix', row = (10 + ath), col = 2, timeSumFormula)
      
      rankTimeFunction <- paste('RANK(',
                                'B',
                                (10+ath),
                                ',',
                                'B',
                                minColIndexBow,
                                ':B',
                                maxColIndexBow,
                                ')',
                                sep='')
      setCellFormula(wb,sheet='PairsMatrix', row = (10 + ath), col = 3, rankTimeFunction)
    }
    
    minColIndexStroke <- 11
    maxColIndexStroke <- 10 + length(strokeSiders)
    
    for(ath in 1:length(strokeSiders)){
      timeSumFormula <- paste('SUMIF(B2:CZ2,',
                              'F',
                              (10+ath),
                              ',B6:CZ6)',
                              '+',
                              'SUMIF(B3:CZ3,',
                              'F',
                              (10+ath),
                              ',B6:CZ6)',
                              sep='')
      setCellFormula(wb,sheet='PairsMatrix', row = (10 + ath), col = 7, timeSumFormula)
      
      rankTimeFunction <- paste('RANK(',
                                'G',
                                (10+ath),
                                ',',
                                'G',
                                minColIndexStroke,
                                ':G',
                                maxColIndexStroke,
                                ')',
                                sep='')
      setCellFormula(wb,sheet='PairsMatrix', row = (10 + ath), col = 8, rankTimeFunction)
    }
    
    fillCell <- createCellStyle(wb)
    setFillForegroundColor(fillCell, color = XLC$"COLOR.LIGHT_BLUE")
    setFillPattern(fillCell, fill = XLC$FILL.SOLID_FOREGROUND)
    setWrapText(fillCell,wrap=TRUE)
    setBorder(fillCell, 
              side = "all",
              type = XLC$"BORDER.THIN", 
              color = XLC$"COLOR.BLACK")
    XLConnect::setCellStyle(wb,sheet = "PairsMatrix", row = 10, col = c(1,2,3,6,7,8), cellstyle = fillCell)
    
    rankingTableCellStyle <- createCellStyle(wb)
    setBorder(rankingTableCellStyle,
              side = "all",
              type = XLC$"BORDER.THIN", 
              color = XLC$"COLOR.BLACK")
    XLConnect::setCellStyle(wb,sheet = "PairsMatrix", row = rep(seq(minColIndexBow,maxColIndexBow),3), col = 1, cellstyle = rankingTableCellStyle)
    XLConnect::setCellStyle(wb,sheet = "PairsMatrix", row = rep(seq(minColIndexBow,maxColIndexBow),3), col = 2, cellstyle = rankingTableCellStyle)
    XLConnect::setCellStyle(wb,sheet = "PairsMatrix", row = rep(seq(minColIndexBow,maxColIndexBow),3), col = 3, cellstyle = rankingTableCellStyle)
    XLConnect::setCellStyle(wb,sheet = "PairsMatrix", row = rep(seq(minColIndexStroke,maxColIndexStroke),3), col = 6, cellstyle = rankingTableCellStyle)
    XLConnect::setCellStyle(wb,sheet = "PairsMatrix", row = rep(seq(minColIndexStroke,maxColIndexStroke),3), col = 7, cellstyle = rankingTableCellStyle)
    XLConnect::setCellStyle(wb,sheet = "PairsMatrix", row = rep(seq(minColIndexStroke,maxColIndexStroke),3), col = 8, cellstyle = rankingTableCellStyle)
    XLConnect::setCellStyle(wb,sheet = "PairsMatrix", row = 1, col = seq(1,(1+numberOfPairs*numberOfRuns)), cellstyle = fillCell)
    XLConnect::setCellStyle(wb,sheet = "PairsMatrix", row = 2, col = seq(1,(1+numberOfPairs*numberOfRuns)), cellstyle = rankingTableCellStyle)
    XLConnect::setCellStyle(wb,sheet = "PairsMatrix", row = 3, col = seq(1,(1+numberOfPairs*numberOfRuns)), cellstyle = rankingTableCellStyle)
    XLConnect::setCellStyle(wb,sheet = "PairsMatrix", row = 4, col = seq(1,(1+numberOfPairs*numberOfRuns)), cellstyle = rankingTableCellStyle)
    XLConnect::setCellStyle(wb,sheet = "PairsMatrix", row = 5, col = seq(1,(1+numberOfPairs*numberOfRuns)), cellstyle = rankingTableCellStyle)
    XLConnect::setCellStyle(wb,sheet = "PairsMatrix", row = 6, col = seq(1,(1+numberOfPairs*numberOfRuns)), cellstyle = rankingTableCellStyle)
    
    emptyCellFill <- createCellStyle(wb)
    setFillForegroundColor(emptyCellFill, 
                           color = XLC$"COLOR.GREEN")
    setFillPattern(emptyCellFill, 
                   fill = XLC$FILL.SOLID_FOREGROUND)
    emptyMatrix <- expand.grid(row = (max(c(maxColIndexBow,maxColIndexStroke))+1):100, col = 1:(1+numberOfPairs*numberOfRuns))
    emptyMatrix2 <- expand.grid(row =7:9,col = 1:(1+numberOfPairs*numberOfRuns))
    emptyMatrix3 <-  expand.grid(row =10:max(c(maxColIndexBow,maxColIndexStroke)),col = 9:(1+numberOfPairs*numberOfRuns))
    emptyMatrix4 <- expand.grid(row =10:max(c(maxColIndexBow,maxColIndexStroke)),col = 4:5)
    XLConnect::setCellStyle(wb,sheet = "PairsMatrix",row=emptyMatrix$row,col=emptyMatrix$col, cellstyle = emptyCellFill)
    XLConnect::setCellStyle(wb,sheet = "PairsMatrix",row=emptyMatrix2$row,col=emptyMatrix2$col, cellstyle = emptyCellFill)
    XLConnect::setCellStyle(wb,sheet = "PairsMatrix",row=emptyMatrix3$row,col=emptyMatrix3$col, cellstyle = emptyCellFill)
    XLConnect::setCellStyle(wb,sheet = "PairsMatrix",row=emptyMatrix4$row,col=emptyMatrix4$col, cellstyle = emptyCellFill)
    
    
    
    
    
    XLConnect::saveWorkbook(wb)
    
    
    
    ###############
    wb <- xlsx::loadWorkbook(fname)
    sh <- wb$getSheet("PairsMatrix")
    lockCellsStyle <- xlsx::CellStyle(wb,cellProtection = CellProtection(locked=F))
    rows <- getRows(sh,rowIndex = 4:5)
    cells <- getCells(rows,colIndex = 2:(1+(numberOfPairs*numberOfRuns)))
    lapply(names(cells), function(ii)setCellStyle(cells[[ii]],lockCellsStyle))
    
    sh$protectSheet("Password")
    
    xlsx::saveWorkbook(wb,file=fname)
    ################################
    
    
    
    
    file.rename(fname,file)


  }
)
