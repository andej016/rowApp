## erg to weight adjuster tab output

rowApp_Tab_ErgApp_ErgToWeightAdjuster <-
  tabItem(tabName = "ergToWeightSplitAdjuster",
          sidebarPanel(
            id="sidebar",
            div(
              class = "view-split-nav view-split-block",
              div(
                class = "page-header",
                actionLink(
                  "ewa_ReportExplanation",
                  span("", class="fa fa-info-circle fa-lg"),
                  class="pull-right",
                  title = "Report Explanation"
                ),
                h1("Erg Split Weight Adjuster")
              ),
              timeInput("ergSplit_A","Split- 500m (Hours:Minutes:Seconds):",
                        value = strptime("00:02:00",format = "%H:%M:%S"),
                        seconds = TRUE),
              
              sliderInput("athleteWeight_A","Athletes weight (kg):",
                          min= 40, max= 120, value= 75),
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
                  h3("Weight Adjusted Split (Ave 500):"),
                  div(
                    class = "text-display-2",
                    h2(textOutput("ergWeightAddaptedSplit_A", inline=TRUE)), HTML("&nbsp;")
                  )
                )
              )
            )
          )
  )