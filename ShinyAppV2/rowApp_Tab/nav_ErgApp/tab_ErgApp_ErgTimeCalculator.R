## erg time calculator tab output

rowApp_Tab_ErgApp_ErgTimeCalculator <- 
  tabItem(tabName = "ergTimeCalculator",
           
           sidebarPanel(
             actionButton("etc_ReportExplanation","Explanation"),
             
             timeInput("ergSplit_T","Split- 500m (Hours:Minutes:Seconds):",
                       value = NULL,
                       seconds = TRUE),
             
             numericInput("ergDistance_T", "Distance Covered in the Ergo (meters):",
                          min = 250, max = 500000, value = 2000),
             actionButton("submit_CalculateErgTime", "Calculate"),
             # submitButton("Update", icon("refresh")),
             br(),
             br(),
             paste("For more information or assistance email",
                   emailAddress,
                   sep = " ")
             
           ),
           
           mainPanel(
             h1("Estimation of the Duration of the the Erg"),
             br(),
             strong(textOutput("ergAppDuration_T")),
             br(),
             em("Note: Splits are rounded to the nearest second, not to decimals.")
           )
  )