## Boat Speed Calculator tab output

rowApp_Tab_BoatSpeedCalculator <- 
  tabItem(tabName = "boatSpeedCalculator",
           sidebarPanel(
             selectInput("boatType","Boat Type:",
                         list("Single"="1x",
                              "Double" = "2x",
                              "Pair" = "2-",
                              "Quad" = "4x",
                              "Four" = "4-",
                              "Eight" = "8+")),
             radioButtons("gender","Gender:",
                          list("Male" = "M",
                               "Female" = "F")),
             sliderInput("strokeweight", "Stroke Weight (kg):",
                         min = 40, max = 120, value = 80),
             
             timeInput("stroke2k","Stroke 2k Erg (Hours:Minutes:Seconds):",
                       value = NULL,
                       seconds = TRUE),
             conditionalPanel(
               condition = "input.boatType == '8+'",
               timeInput("seven2k","7 2k Erg (Hours:Minutes:Seconds):",
                         value = NULL,
                         seconds = TRUE)
             ),
             
             conditionalPanel(
               condition = "input.boatType == '8+'",
               sliderInput("sixweight", "6 Weight:",
                           min = 40, max = 120, value = 80)
             ),
             
             conditionalPanel(
               condition = "input.boatType == '8+'",
               timeInput("six2k","6 2k Erg (Hours:Minutes:Seconds):",
                         value = NULL,
                         seconds = TRUE)
             ),
             
             conditionalPanel(
               condition = "input.boatType == '8+'",
               sliderInput("fiveweight", "5 Weight:",
                           min = 40, max = 120, value = 80)
             ),
             
             conditionalPanel(
               condition = "input.boatType == '8+'",
               timeInput("five2k","5 2k Erg (Hours:Minutes:Seconds):",
                         value = NULL,
                         seconds = TRUE)
             ),
             
             conditionalPanel(
               condition = "input.boatType == '8+'",
               sliderInput("fourweight", "4 Weight:",
                           min = 40, max = 120, value = 80)
             ),
             
             conditionalPanel(
               condition = "input.boatType == '8+'",
               timeInput("four2k","4 2k Erg (Hours:Minutes:Seconds):",
                         value = NULL,
                         seconds = TRUE)
             ),
             
             conditionalPanel(
               condition = "input.boatType == '4x' | input.boatType == '4-'",
               sliderInput("threeweight", "3 Weight:",
                           min = 40, max = 120, value = 80)
             ),
             
             conditionalPanel(
               condition = "input.boatType == '4x' | input.boatType == '4-'",
               timeInput("three2k","3 2k Erg (Hours:Minutes:Seconds):",
                         value = NULL,
                         seconds = TRUE)
             ),
             
             conditionalPanel(
               condition = "input.boatType == '4x' | input.boatType == '4-'",
               sliderInput("twoweight", "2 Weight:",
                           min = 40, max = 120, value = 80)
             ),
             
             conditionalPanel(
               condition = "input.boatType == '4x' | input.boatType == '4-'",
               timeInput("two2k","2 2k Erg (Hours:Minutes:Seconds):",
                         value = NULL,
                         seconds = TRUE)
             ),
             
             conditionalPanel(
               condition = "input.boatType == '2x' | input.boatType == '2-'",
               sliderInput("bowweight", "Bow Weight:",
                           min = 40, max = 120, value = 80)
             ),
             
             conditionalPanel(
               condition = "input.boatType == '2x' | input.boatType == '2-'",
               timeInput("bow2k","Bow 2k Erg (Hours:Minutes:Seconds):",
                         value = NULL,
                         seconds = TRUE)
             ),
             br(),
             br(),
             paste("For more information or assistance email",
                   emailAddress,
                   sep = " ")
           ),
           
           mainPanel(
             h1("2k Race Time Prediction"),
             br(),
             tabPanel("Text",strong(textOutput("text"))),
             br(),
             h2("Useful crew data"),
             br(),
             tabPanel("Average Ergo",em(textOutput("averageErg"))),
             tabPanel("Average Crew Weight", em(textOutput("averageCrewWeight")))
           )
  )