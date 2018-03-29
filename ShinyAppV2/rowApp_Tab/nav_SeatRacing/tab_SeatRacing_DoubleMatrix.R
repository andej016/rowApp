## Seat Race- Double Matrix

rowApp_Tab_SeatRace_DoubleMatrix <-
  tabPanel(title = "Double Matrix",
           sidebarPanel(
             downloadLink("doubleMatrixDownload.xlsx", "Double Matrix Download"),
             br(),
             br(),
             paste("For more information or assistance email",
                   emailAddress,
                   sep = " ")
           ),
           mainPanel(
             h3("The download to the right is an excel sheet that provides a fully functioning double matrix scheduler and calculator."),
             br(),
             em("All you need to do is download it, enter the athletes names in the top left corner where it says 'Athlete 1', 'Athlete 2' etc."),
             em("and then follow the boat combinations and schedule given to you in the excel sheet."),
             br(),
             em("You then just have to enter the start and finish times for each boat in each run in the designated entries and the sheet will calculate your ranking and times for you."),
             br(),
             br(),
             em("This works for any number of athletes up to 8- beyond which seat racing becomes irrelevant as the athletes would be doing over 7 runs.")
           )
  )