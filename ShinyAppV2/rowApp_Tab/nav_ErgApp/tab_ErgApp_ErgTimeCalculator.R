## erg time calculator tab output

rowApp_Tab_ErgApp_ErgTimeCalculator <-
  tabItem(tabName = "ergTimeCalculator",
          sidebarPanel(
            div(
              class = "view-split-nav view-split-block",
              div(
                class = "page-header",
                actionLink(
                  "etc_ReportExplanation",
                  span("", class="fa fa-info-circle fa-lg"),
                  class="pull-right",
                  title = "Report Explanation"
                ),
                h1("Erg Time Calculator")
              ),
              timeInput("ergSplit_T","Split- 500m (Hours:Minutes:Seconds):",
                        value = strptime("00:02:00",format = "%H:%M:%S"),
                        seconds = TRUE),
              
              numericInput("ergDistance_T", "Distance Covered in the Ergo (meters):",
                           min = 250, max = 500000, value = 2000),
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
                  h3("Erg Duration:"),
                  div(
                    class = "text-display-2",
                    h2(textOutput("ergAppDuration_T", inline=TRUE)), HTML("&nbsp;")
                  )
                )
              )
            )
          )
  )