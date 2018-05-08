## Erg App- Erg Distance calculator Tab Output 

rowApp_Tab_ErgApp_ErgDistanceCalculator <-
  tabItem(tabName = "ergDistanceCalculator",
          sidebarPanel(
            div(
              class = "view-split-nav view-split-block",
              div(
                class = "page-header",
                actionLink(
                  "edc_ReportExplanation",
                  span("", class="fa fa-info-circle fa-lg"),
                  class="pull-right",
                  title = "Report Explanation"
                ),
                h1("Erg Distance Calculator")
              ),
              timeInput("ergDuration_D","Erg Duration (Hours:Minutes:Seconds):",
                        value = strptime("00:30:00",format = "%H:%M:%S"),
                        seconds = TRUE),

              timeInput("ergSplit_D","Split- 500m (Hours:Minutes:Seconds):",
                        value = strptime("00:02:00",format = "%H:%M:%S"),
                        seconds = TRUE),
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
                  h3("Distance Completed (meters):"),
                  div(
                    class = "text-display-2",
                    h2(textOutput("ergAppDistance_D", inline=TRUE)), HTML("&nbsp;")
                  )
                )
              )
            )
          )
  )