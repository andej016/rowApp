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
             HTML(
             "Rowing Techinique takes many forms. In this app we have attempted to 
             subset the rowing stroke to provide technical insight 
             on each element of the stroke.<br>
             There are many articles available in the menu expressing opinions about 
             these different elements.<br>
             It should be noted that every coach and athelete has a different opinion 
             about what the correct or most effective technique is. This site is intended 
             to aid, advise and potentionally confuse athletes and coaches. Please read over 
             the material and utilise the information as you see fit.<br>
             <br>
             Finally, if you have anything to add or further technical guidance to give please 
             email this to us."
             )
           )
  )