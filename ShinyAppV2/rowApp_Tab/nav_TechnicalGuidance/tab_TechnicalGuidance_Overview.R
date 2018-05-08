## Technical Guidance- Overview

rowApp_Tab_TechnicalGuidance_Overview <-
  tabItem(tabName = "overview",
           sidebarPanel(
             id="sidebar",
             div(
               class = "view-split-nav view-split-block",
               div(
                 class = "page-header",
                 h1("Technical Guidance Overview")
               ),
               br(),
               br(),
               paste("For more information or assistance email",
                     emailAddress,
                     sep = " ")
             )
           ),
           mainPanel(
           )
  )