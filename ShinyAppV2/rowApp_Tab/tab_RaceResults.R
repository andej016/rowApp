rowApp_Tab_RaceResults <-
  tabItem(
    tabName = "raceResults",
    fluidRow(
      column(
        4,
        h3("Find results for a specific crew:"),
        selectInput("rr_Gender","Crew Gender:",
                    list("Male",
                         "Female",
                         "Mixed")),
        selectInput("rr_BoatType","Boat Type:",
                    list("Single",
                         "Double",
                         "Quad",
                         "Coxed Quad",
                         "Octuple",
                         "Pair",
                         "Coxed Pair",
                         "Four",
                         "Coxed Four",
                         "Eight")),
        "If you leave this club name filter as 'All' then it will find all results for the gender and boat type you requested.",
        textInput("rr_ClubName","Club Name:",
                  value = 'All'),
        br(),
        br(),
        br(),
        paste("For more information or assistance email",
              emailAddress,
              sep = " ")
      ),
      column(
        4,
        h3("Specifc crew Results:"),
        dataTableOutput("rr_FilteredRaceResults")
      ),
      column(
        4,
        h3(" All Race Result Links"),
        downloadButton("HORR2018.xlsx", "HORR 2018")
      )
    )
  )