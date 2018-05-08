rowApp_Tab_RaceResults <-
  tabItem(
    tags$head(tags$style(
      HTML('
           #sidebar {
           background-color: #CDF7D9;
           }
           
           body, label, input, button, select { 
           font-family: "Arial";
           }')
  )),
    tabName = "raceResults",
    sidebarPanel(
      id="sidebar",
      div(
        class = "view-split-nav view-split-block",
        div(
          class = "page-header",
          h1("Race Results")
        ),
        
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
        textInput("rr_ClubName","Club Name:",
                  value = 'All'),
        "If you leave this club name filter as 'All' then it will find all results for the gender and boat type you requested.",
        br(),
        h3(" All Race Result Links"),
        h4("2018 Results"),
        downloadButton("HORR2018.xlsx", "HORR"),
        br(),
        downloadButton("HOR42018.xlsx", "Fours Head"),
        br(),
        downloadButton("PairsHead2018.xlsx","Pairs Head"),
        br(),
        downloadButton("ScullersHead2018.xlsx","Scullers Head"),
        br(),
        downloadButton("SHORR2018.xlsx","Schools Head"),
        br(),
        downloadButton("HeadOfTheTrent.xlsx","Head of the Trent"),
        br(),
        br(),
        br(),
        paste("For more information or assistance email",
              emailAddress,
              sep = " "),
        br(),
        br()
      )
      ),
      mainPanel(
        div(
          class = "view-split-content view-split-block",
          div(
            class="page-header",
            h1(
              HTML("<i class='fa fa-ship text-muted'></i>"),
              "Filtered Results"
            )
          ),
          div(
            class="panel panel-default",
            div(
              class="panel-heading",
              "Race Results for crews meeting filter soecifications"
            ),
            dataTableOutput("rr_FilteredRaceResults")
            #,downloadButton("fr_IntraFleetRankingReport.csv", "Download Data")
          )
        )
      )
    )
