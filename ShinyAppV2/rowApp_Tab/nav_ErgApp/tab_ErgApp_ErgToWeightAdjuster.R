## erg to weight adjuster tab output

rowApp_Tab_ErgApp_ErgToWeightAdjuster <- 
  tabItem(tabName = "ergToWeightSplitAdjuster",
           
           sidebarPanel(
             
             actionButton("ewa_ReportExplanation","Explanation"),
             
             timeInput("ergSplit_A","Split- 500m (Hours:Minutes:Seconds):",
                       value = NULL,
                       seconds = TRUE),
             
             sliderInput("athleteWeight_A","Athletes weight (kg):",
                         min= 40, max= 120, value= 75),
             actionButton("submit_CalculateErgWeight", "Calculate"),
             # submitButton("Update", icon("refresh")),
             br(),
             br(),
             paste("For more information or assistance email",
                   emailAddress,
                   sep = " ")
           ),
           
           mainPanel(
             tags$style(type="text/css",
                        ".shiny-output-error { visibility: hidden; }",
                        ".shiny-output-error:before { visibility: hidden; }"
             ),
             h1("Erg split adapted according to athlete weight"),
             br(),
             strong(textOutput("ergWeightAddaptedSplit_A")),
             br(),
             em("Note: Splits are rounded to the nearest second, not to decimals.")
           )
           
  )