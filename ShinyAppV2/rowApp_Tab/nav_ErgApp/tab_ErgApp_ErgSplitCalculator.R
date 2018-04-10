## erg split calculator tab output

rowApp_Tab_ErgApp_ErgSplitCalculator <- 
  tabItem(tabName = "ergSplitCalculator",
           
           sidebarPanel(
             
             timeInput("ergDuration_S","Erg Duration (Hours:Minutes:Seconds):",
                       value = NULL,
                       seconds = TRUE),
             
             numericInput("ergDistance_S", "Distance Covered in the Ergo (meters):",
                          min = 250, max = 500000, value = 2000),
             
             br(),
             br(),
             paste("For more information or assistance email",
                   emailAddress,
                   sep = " ")
             
           ),
           
           mainPanel(
             h1("Estimation of the Split (Ave 500m) of the the Erg"),
             br(),
             strong(textOutput("ergAppSplit_S")),
             br(),
             em("Note: Splits are rounded to the nearest second, not to decimals.")
           )
           
  )