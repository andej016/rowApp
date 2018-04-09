##Rowing App
##ui.R
#runApp("C:/Users/joe.anderson/Documents/Rowing/RowingApp/ShinyAppV2")

source("rowApp_ScriptSourcing/source_TabOutputs.R",local=TRUE)

shinyUI(navbarPage(
  
  "RowApp",
  
  id = "page-nav",
  
  rowApp_Tab_Home,
  rowApp_Tab_BoatSpeedCalculator,
  navbarMenu("Ergo Applications",
             rowApp_Tab_ErgApp_ErgDistanceCalculator,
             rowApp_Tab_ErgApp_ErgTimeCalculator,
             rowApp_Tab_ErgApp_ErgSplitCalculator,
             rowApp_Tab_ErgApp_ErgToWeightAdjuster
             ),
  navbarMenu("Seat Racing Applications",
             rowApp_Tab_SeatRace_DoubleMatrix,
             rowApp_Tab_SeatRace_QuadSeatRacing,
             rowApp_Tab_SeatRace_FourSeatRacing,
             rowApp_Tab_SeatRace_PairsMatrix
             ),
  navbarMenu("Technical Guidance",
             rowApp_Tab_TechnicalGuidance_Overview),
  rowApp_UsefulLinks
  
)
)