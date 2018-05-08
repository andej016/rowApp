rowApp_Tab_UsefulLinks <-
  tabItem(
    tabName = "usefulLinks",
      div(
        class = "view-split-content view-split-block",
        
        div(
          class="page-header",
          h1(
            HTML("<i class='fa fa-ship text-muted'></i>"),
            "Useful Links"
          )
        ),
        
        div(
          class="row",
          
          div(
            class="col-md-6",
            
            
            div(
              class="panel-default panel",
              div(
                class="panel-heading",
                "General Sites:"
              ),
              div(
                class="panel-body",
                uiOutput("link_RowingAdverts"),
                uiOutput("link_BritishRowing"),
                uiOutput("link_DavidBidulph"),
                uiOutput("link_FatSculler"),
                uiOutput("link_WeRow"),
                uiOutput("link_TidewayBulletin"),
                uiOutput("link_JuniorRowingNews")
              )
            )
          ),
          div(
            class="col-md-6",
            
            
            div(
              class="panel-default panel",
              div(
                class="panel-heading",
                "Parts and Accesories:"
              ),
              div(
                class="panel-body",
                uiOutput("link_EURow"),
                uiOutput("link_Concept2"),
                uiOutput("link_Croker"),
                uiOutput("link_DurhamBoatWorks"),
                uiOutput("link_SimsRowingServices"),
                uiOutput("link_Oarsport"),
                uiOutput("link_NKSports")
              )
            )
          )
        ),
        
        div(
          class="row",
          div(
            class="col-md-6",
            
            
            div(
              class="panel-default panel",
              div(
                class="panel-heading",
                "Boat Makers:"
              ),
              div(
                class="panel-body",
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
          ),
          div(
            class="col-md-6",
            
            
            div(
              class="panel-default panel",
              div(
                class="panel-heading",
                "Rowing Photographers:"
              ),
              div(
                class="panel-body",
                uiOutput("link_RowingPhotography"),
                uiOutput("link_BenRodford"),
                uiOutput("link_BigBladePhotography"),
                uiOutput("link_AlCragiePhotography")
              )
            )
          )
        )
      )
    )