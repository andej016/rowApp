## Erg App- Erg Distance calculator Tab Output 

rowApp_Tab_ErgApp_ErgDistanceCalculator <-
  tabItem(tabName = "ergDistanceCalculator",
           
           sidebarPanel(
             
             tags$style(".well {background-color: #CDF7D9;}"),
             
             actionButton("edc_ReportExplanation","Explanation"),
             
             timeInput("ergDuration_D","Erg Duration (Hours:Minutes:Seconds):",
                       value = NULL,
                       seconds = TRUE),
             
             timeInput("ergSplit_D","Split- 500m (Hours:Minutes:Seconds):",
                       value = NULL,
                       seconds = TRUE),
             actionButton("submit_CalculateErgDistance", "Calculate"),
             # submitButton("Update", icon("refresh")),
             
             br(),
             br(),
             paste("For more information or assistance email",
                   emailAddress,
                   sep = " ")
             
           ),
           
           mainPanel(
             h1("Estimation of Distance Completed During the Erg"),
             br(),
             strong(textOutput("ergAppDistance_D")),
             br(),
             em("Note: Splits are rounded to the nearest second, not to decimals.")
           )
           
  )