## Boat Speed Calculator tab output

rowApp_Tab_BoatSpeedCalculator <- 
  tabItem(tabName = "boatSpeedCalculator",
          sidebarPanel(
            div(
              class = "view-split-nav view-split-block",
              div(
                class = "page-header",
                actionLink(
                  "bsc_ReportExplanation",
                  span("", class="fa fa-info-circle fa-lg"),
                  class="pull-right",
                  title = "Report Explanation"
                ),
                h1("2K Race Time Prediction")
              ),
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
                sliderInput("sevenweight", "7 Weight:",
                            min = 40, max = 120, value = 80)
              ),
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
                condition = "input.boatType == '4x' | input.boatType == '4-' | input.boatType == '8+'",
                sliderInput("threeweight", "3 Weight:",
                            min = 40, max = 120, value = 80)
              ),
              
              conditionalPanel(
                condition = "input.boatType == '4x' | input.boatType == '4-' | input.boatType == '8+'",
                timeInput("three2k","3 2k Erg (Hours:Minutes:Seconds):",
                          value = NULL,
                          seconds = TRUE)
              ),
              
              conditionalPanel(
                condition = "input.boatType == '4x' | input.boatType == '4-' | input.boatType == '8+'",
                sliderInput("twoweight", "2 Weight:",
                            min = 40, max = 120, value = 80)
              ),
              
              conditionalPanel(
                condition = "input.boatType == '4x' | input.boatType == '4-' | input.boatType == '8+'",
                timeInput("two2k","2 2k Erg (Hours:Minutes:Seconds):",
                          value = NULL,
                          seconds = TRUE)
              ),
              
              conditionalPanel(
                condition = "input.boatType == '2x' | input.boatType == '2-' | input.boatType == '4x' | input.boatType == '4-' | input.boatType == '8+'",
                sliderInput("bowweight", "Bow Weight:",
                            min = 40, max = 120, value = 80)
              ),
              
              conditionalPanel(
                condition = "input.boatType == '2x' | input.boatType == '2-' | input.boatType == '4x' | input.boatType == '4-' | input.boatType == '8+'",
                timeInput("bow2k","Bow 2k Erg (Hours:Minutes:Seconds):",
                          value = NULL,
                          seconds = TRUE)
              ),
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
                class="panel panel-primary panel-metric panel-metric-lg",
                div(
                  class="panel-body bg-primary",
                  h3("Predicted 2k Time:"),
                  div(
                    class = "text-display-2",
                    h2(textOutput("text", inline=TRUE)), HTML("&nbsp;")
                  )
                )
              ),
              div(
                class="panel panel-default",
                
                div(
                  class="panel-heading",
                  "Useful Crew Data"
                ),
                
                div(
                  class="list-group",
                  div(
                    class="list-group-item",
                    "Average 2k Erg Score ",
                    span(
                      class="badge",
                      textOutput("averageErg", inline=TRUE)
                    )
                    
                  )
                  ,div(
                    class="list-group-item",
                    "Average Crew Weight (KG) ",
                    span(
                      class="badge",
                      textOutput("averageCrewWeight", inline = TRUE)
                    )
                  )
                )
              )
            )
            )
  )