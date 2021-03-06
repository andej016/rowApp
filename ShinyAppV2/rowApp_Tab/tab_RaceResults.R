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
        h4("2017/2018 Results"),
        div(
          class = "row",
          div(
            class = "col-md-6",
            downloadButton("HORR2018.xlsx", "HORR", class = "butt"),
            br(),
            downloadButton("WeHORR2018.xlsx","WeHORR", class = "butt"),
            br(),
            downloadButton("HOR42018.xlsx", "Fours Head", class = "butt"),
            br(),
            downloadButton("PairsHead2018.xlsx","Pairs Head", class = "butt"),
            br(),
            downloadButton("ScullersHead2018.xlsx","Scullers Head", class = "butt"),
            br(),
            downloadButton("SHORR2018.xlsx","Schools Head", class = "butt"),
            br(),
            downloadButton("BUCSHead.xlsx","BUCS Head", class = "butt"),
            br(),
            downloadButton("WallingfordRegatta.xlsx","Wallingford Regatta", class = "butt"),
            br(),
            downloadButton("JuniorScullingHead.xlsx","Junior Sculling Head", class = "butt"),
            br(),
            downloadButton("JuniorScullingRegattaTimeTrial2018.xlsx","Junior Sculling Regatta", class = "butt")
          ),
          div(
            class = "col-md-6",
            downloadButton("HeadOfTheTrent.xlsx","Head of the Trent", class = "butt"),
            br(),
            downloadButton("WallingfordHead2018.xlsx","Wallingford Head", class = "butt"),
            br(),
            downloadButton("StrathclydeParkRegatta2018.xlsx","Strathclyde Park Regatta", class = "butt"),
            br(),
            downloadButton("QuintinHead2018.xlsx","Quintin Head", class = "butt"),
            br(),
            downloadButton("Rutherford2017.xlsx","Rutherford Head", class = "butt"),
            br(),
            downloadButton("ChesterLDS2018.xlsx","Chester LDS", class = "butt"),
            br(),
            downloadButton("Henley4sAnd8sHead2017.xlsx","Henley 4s and 8s Head", class = "butt"),
            br(),
            downloadButton("YorkSmallBoatsHead2017.xlsx","York Small Boats Head", class = "butt"),
            br(),
            downloadButton("HenleyLongDistanceSculls2017.xlsx","Henley Long Distance Sculls", class = "butt"),
            br(),
            downloadButton("NovemberTrialsGB.xlsx","GB November Trials", class = "butt")
          )
        ),
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
