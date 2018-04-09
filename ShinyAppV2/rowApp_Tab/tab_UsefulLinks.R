rowApp_UsefulLinks <-
  tabPanel(
    title = "Useful Links",
      fluidRow(
        column(
          4,
          h3("General Sites:"),
          uiOutput("link_RowingAdverts"),
          uiOutput("link_BritishRowing"),
          uiOutput("link_DavidBidulph"),
          uiOutput("link_FatSculler"),
          uiOutput("link_WeRow"),
          uiOutput("link_TidewayBulletin")
          ),
        column(
          4,
          h3("Parts and Accesories:"),
          uiOutput("link_EURow"),
          uiOutput("link_Concept2"),
          uiOutput("link_Croker"),
          uiOutput("link_DurhamBoatWorks"),
          uiOutput("link_SimsRowingServices"),
          uiOutput("link_Oarsport"),
          uiOutput("link_NKSports")
        ),
        column(
          4,
          h3("Boat Makers:"),
          uiOutput("link_Empacher"),
          uiOutput("link_Filippi"),
          uiOutput("link_CarlDouglas"),
          uiOutput("link_Hudson"),
          uiOutput("link_Fluidesign"),
          uiOutput("link_JanousekAndStampfli"),
          uiOutput("link_Kanghua"),
          uiOutput("link_Aylings"),
          uiOutput("link_Burgashell"),
          uiOutput("link_Swift")
        )
      )
    )