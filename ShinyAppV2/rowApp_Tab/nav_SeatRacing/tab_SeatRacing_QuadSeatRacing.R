## Seat Race- Double Matrix

rowApp_Tab_SeatRace_QuadSeatRacing <-
  tabItem(tabName = "quadSeatRacing",
           sidebarPanel(
             downloadButton("quadSeatRacingDownload.xlsx", "Quad Seat Racing Download"),
             br(),
             br(),
             paste("For more information or assistance email",
                   emailAddress,
                   sep = " ")
           ),
           mainPanel(
             h3("The download to the right is an excel sheet that provides a fully functioning quad seat racing scheduler and calculator."),
             br(),
             em("All you need to do is download it, enter the athletes names in the top left corner where it says 'Athlete 1', 'Athlete 2' etc."),
             em("and then follow the boat combinations and schedule given to you in the excel sheet."),
             br(),
             em("You then just have to enter the start and finish times for each boat in each run in the designated entries and the sheet will calculate your ranking and times for you."),
             br(),
             br(),
             em("This works for 8 athletes and uses 7 runs."),
             br(),
             em("You can take a break after a particular run and pick up later on as long as you break after both boats have finished that particular run."),
             br(),
             em("This break can be over multiple days.")
           )
  )