## Seat Race- Double Matrix

rowApp_Tab_SeatRace_QuadSeatRacing <-
  tabItem(tabName = "quadSeatRacing",
          sidebarPanel(
            id="sidebar",
            div(
              class = "view-split-nav view-split-block",
              div(
                class = "page-header",
                h1("Quad Seat Racing")
              ),
              downloadButton("quadSeatRacingDownload.xlsx", label = "Quad Seat Racing Download",class= "butt"),
              br(),
              br(),
              paste("For more information or assistance email",
                    emailAddress,
                    sep = " ")
            )
          ),
          mainPanel(
            div(
              class = "view-split-content view-split-block",
              div(
                class="page-header",
                h1(
                  HTML("<i class='fa fa-anchor text-muted'></i>"),
                  "Instructions"
                )
              ),
              strong("The download to the left is an excel sheet that provides a fully functioning Quad Seat Racing scheduler and calculator."),
              br(),
              br(),
              "1: ",
              em("Download the Spreadsheet."),
              br(),
              "2: ",
              em("Enter the athletes names in the top left corner of the spreadsheet where it says 'Athlete 1', 'Athlete 2' etc."),
              br(),
              "3: ",
              em("Follow the boat combinations and schedule given in the timetable on the sheet."),
              br(),
              "4: ",
              em("Enter the start and finish times for each boat in each run in the designated cells in the excel sheet."),
              br(),
              "5: ",
              em("The sheet will then calculate the times and provide you with the resulting ranking."),
              br(),
              br(),
              em("This works for 8 athletese (2 quads) over 7 runs."),
              br(),
              em("You can take a break after a particular run and pick up later on as long as you break after both boats have finished that particular run."),
              br(),
              em("This break can be over multiple days.")
            )
          )
  )