##Rowing App
##ui.R
#runApp("C:/Users/joe.anderson/Documents/Rowing/RowingApp/ShinyAppV2")

source("rowApp_ScriptSourcing/source_TabOutputs.R",local=TRUE)

shinyUI(dashboardPage(
  
  dashboardHeader(title="RowApp"),
  dashboardSidebar(
    sidebarMenu(
      menuItem("Home",tabName="home",icon=icon("home")),
      menuItem("Boat Speed Calculator",tabName = "boatSpeedCalculator"),

      menuItem("Ergo Applications",
               menuItem("Erg Distance Calculator",
                        tabName = 'ergDistanceCalculator'),
               menuItem('Erg Time Calculator',
                        tabName = "ergTimeCalculator"),
               menuItem("Erg Split Calculator",
                        tabName = "ergSplitCalculator"),
               menuItem("Erg to Weight adjustment",
                        tabName = "ergToWeightSplitAdjuster")
               ),
      menuItem("Seat Racing Applications",
               menuItem("Double Matrix",
                        tabName = "doubleMatrix"),
               menuItem("Quad Seat Racing",
                        tabName = "quadSeatRacing"),
               menuItem("Four Seat Racing",
                        tabName = "fourSeatRacing"),
               menuItem("Pairs Matrix",
                        tabName = "pairsMatrix")
               ),
      menuItem("Technical Guidance",
               menuItem("Overview",
                        tabName = "overview")),
      menuItem("Useful Links",tabName="usefulLinks")
    )
  ),
  dashboardBody(
    tabItems(
      rowApp_Tab_Home,
      rowApp_Tab_BoatSpeedCalculator,
      rowApp_Tab_ErgApp_ErgDistanceCalculator,
      rowApp_Tab_ErgApp_ErgTimeCalculator,
      rowApp_Tab_ErgApp_ErgSplitCalculator,
      rowApp_Tab_ErgApp_ErgToWeightAdjuster,
      rowApp_Tab_SeatRace_DoubleMatrix,
      rowApp_Tab_SeatRace_QuadSeatRacing,
      rowApp_Tab_SeatRace_FourSeatRacing,
      rowApp_Tab_SeatRace_PairsMatrix,
      rowApp_Tab_TechnicalGuidance_Overview,
      rowApp_UsefulLinks
    )
  )
)
)