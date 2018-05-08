## erg split calculator tab output

rowApp_Tab_ErgApp_ErgSplitCalculator <-
  tabItem(tabName = "ergSplitCalculator",
          sidebarPanel(
            div(
              class = "view-split-nav view-split-block",
              div(
                class = "page-header",
                actionLink(
                  "esc_ReportExplanation",
                  span("", class="fa fa-info-circle fa-lg"),
                  class="pull-right",
                  title = "Report Explanation"
                ),
                h1("Erg Split Calculator")
              ),
              timeInput("ergDuration_S","Erg Duration (Hours:Minutes:Seconds):",
                        value = strptime("00:08:00",format = "%H:%M:%S"),
                        seconds = TRUE),
              
              numericInput("ergDistance_S", "Distance Covered in the Ergo (meters):",
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
                  h3("Erg Split (Ave 500):"),
                  div(
                    class = "text-display-2",
                    h2(textOutput("ergAppSplit_S", inline=TRUE)), HTML("&nbsp;")
                  )
                )
              )
            )
          )
  )