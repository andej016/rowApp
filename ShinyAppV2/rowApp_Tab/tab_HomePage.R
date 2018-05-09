##Home page

rowApp_Tab_Home <-
  tabItem(
    tabName= "home",
    div(
      class = "view-split-content view-split-block",
      
      div(
        class="page-header",
        h1(
          HTML("<i class='fa fa-ship text-muted'></i>"),
          "RowApp: The Coaches Best Friend"
        )
      ),
      hr(),
      div(
        class = "row",
        img(src = "rowingFinalSideOn.png",align = "center", height = "200px", width = "600px")
      ),
      hr(),
      p("This site is developed to aid both coaches and athletes in analysing, assesing and improving performance."),
      p("It aims to include as many useful functions for coaches as possible in an attempt to encompass all a coaches technical needs."),
      p("Current Functionality includes:"),
      div(
        class="row",
      div(
        class="col-md-4",
      div(
        class="panel-default panel",
        div(
          class="panel-body",
          em("    Boat and weight speed adjustments"),
          br(),
          em("    Ergo Speed, Disatnce and Time Calculators"),
          br(),
          em("    Seat racing schedulers and calculators for all boat types"),
          br(),
          em("    A revolutionary program for finding results for specific crews"),
          br(),
          em("    Technical guidance")
        )
      )
      )
      ),
      p("The site is new and under constant development- please provide us with any feedback or ideas for other functionality you wish the site would do."),
      p("Also note that this site is financially limited and has only 50 hours of use between all users in a month. If you find it useful do please inform us and we will look at extending this."),
      br(),
      p(paste("Please email any ideas or queries to",
            emailAddress,
            sep = " "))
    )
  )