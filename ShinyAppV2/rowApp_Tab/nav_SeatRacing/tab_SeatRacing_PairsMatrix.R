## Seat Race- Double Matrix

rowApp_Tab_SeatRace_PairsMatrix <-
  tabPanel(title = "Pairs Matrix",
           sidebarPanel(
            h3('Instructions'),
            br(),
            "1: Enter the numbers of bow and stroke siders with the sliders (right).",
            br(),
            "2: Update the page with the button to the right of these sliders.",
            br(),
            "3: Enter the athlete names in boxes (Right).",
            br(),
            "4: Enter the boat names to be used (far right).",
            br(),
            "5: Press Update button at the bottem.",
            br(),
            "6: Download the excel sheet for the pair matrix with the link below.",
            br(),
            br(),
            downloadButton("PairsMatrixDownload.xlsx","Download Pair Matrix Excel"),
            br(),
            br(),
            paste("For more information or assistance email",
                  emailAddress,
                  sep = " ")
           ),
           mainPanel(
             br(),
             fluidRow(
               column(
                 4,
                 sliderInput("pairmat_NumberOfStrokeSiders","Number of Stroke Siders:",
                             min = 1, max = 12, value = 4)
               ),
               column(
                 4,
                 sliderInput("pairmat_NumberOfBowSiders","Number of Bow Siders:",
                             min = 1, max = 12, value = 4)
               ),
               column(
                 4,
                 br(),
                 submitButton("Submit Athlete Numbers", icon("refresh"))
               )
             ),
             br(),
             br(),
             fluidRow(
               column(
                 4,
                 textInput('pairmat_stroke1',"1st Stroke Sider:",value = "Stroke 1"),
                 conditionalPanel(
                   condition = "input.pairmat_NumberOfStrokeSiders > 1",
                   textInput('pairmat_stroke2',"2nd Stroke Sider:", value = 'Stroke 2')
                 ),
                 conditionalPanel(
                   condition = "input.pairmat_NumberOfStrokeSiders > 2",
                   textInput('pairmat_stroke3',"3rd Stroke Sider:", value = 'Stroke 3')
                 ),
                 conditionalPanel(
                   condition = "input.pairmat_NumberOfStrokeSiders > 3",
                   textInput('pairmat_stroke4',"4th Stroke Sider:", value = 'Stroke 4')
                 ),
                 conditionalPanel(
                   condition = "input.pairmat_NumberOfStrokeSiders > 4",
                   textInput('pairmat_stroke5',"5th Stroke Sider:", value = 'Stroke 5')
                 ),
                 conditionalPanel(
                   condition = "input.pairmat_NumberOfStrokeSiders > 5",
                   textInput('pairmat_stroke6',"6th Stroke Sider:", value = 'Stroke 6')
                 ),
                 conditionalPanel(
                   condition = "input.pairmat_NumberOfStrokeSiders > 6",
                   textInput('pairmat_stroke7',"7th Stroke Sider:", value = 'Stroke 7')
                 ),
                 conditionalPanel(
                   condition = "input.pairmat_NumberOfStrokeSiders > 7",
                   textInput('pairmat_stroke8',"8th Stroke Sider:", value = 'Stroke 8')
                 ),
                 conditionalPanel(
                   condition = "input.pairmat_NumberOfStrokeSiders > 8",
                   textInput('pairmat_stroke9',"9th Stroke Sider:", value = 'Stroke 9')
                 ),
                 conditionalPanel(
                   condition = "input.pairmat_NumberOfStrokeSiders > 9",
                   textInput('pairmat_stroke10',"10th Stroke Sider:", value = 'Stroke 10')
                 ),
                 conditionalPanel(
                   condition = "input.pairmat_NumberOfStrokeSiders > 10",
                   textInput('pairmat_stroke11',"11th Stroke Sider:", value = 'Stroke 11')
                 ),
                 conditionalPanel(
                   condition = "input.pairmat_NumberOfStrokeSiders > 11",
                   textInput('pairmat_stroke12',"12th Stroke Sider:", value = 'Stroke 12')
                 )
                 ),
               column(
                 4,
                 textInput('pairmat_bow1',"1st Bow Sider:",value = "Bow Sider"),
                 conditionalPanel(
                   condition = "input.pairmat_NumberOfBowSiders > 1",
                   textInput('pairmat_bow2',"2nd Bow Sider:",value = "Bow Sider")
                 ),
                 conditionalPanel(
                   condition = "input.pairmat_NumberOfBowSiders > 2",
                   textInput('pairmat_bow3',"3rd Bow Sider:",value = "Bow Sider")
                 ),
                 conditionalPanel(
                   condition = "input.pairmat_NumberOfBowSiders > 3",
                   textInput('pairmat_bow4',"4th Bow Sider:",value = "Bow Sider")
                 ),
                 conditionalPanel(
                   condition = "input.pairmat_NumberOfBowSiders > 4",
                   textInput('pairmat_bow5',"5th Bow Sider:",value = "Bow Sider")
                 ),
                 conditionalPanel(
                   condition = "input.pairmat_NumberOfBowSiders > 5",
                   textInput('pairmat_bow6',"6th Bow Sider:",value = "Bow Sider")
                 ),
                 conditionalPanel(
                   condition = "input.pairmat_NumberOfBowSiders > 6",
                   textInput('pairmat_bow7',"7th Bow Sider:",value = "Bow Sider")
                 ),
                 conditionalPanel(
                   condition = "input.pairmat_NumberOfBowSiders > 7",
                   textInput('pairmat_bow8',"8th Bow Sider:",value = "Bow Sider")
                 ),
                 conditionalPanel(
                   condition = "input.pairmat_NumberOfBowSiders > 8",
                   textInput('pairmat_bow9',"9th Bow Sider:",value = "Bow Sider")
                 ),
                 conditionalPanel(
                   condition = "input.pairmat_NumberOfBowSiders > 9",
                   textInput('pairmat_bow10',"10th Bow Sider:",value = "Bow Sider")
                 ),
                 conditionalPanel(
                   condition = "input.pairmat_NumberOfBowSiders > 10",
                   textInput('pairmat_bow11',"11th Bow Sider:",value = "Bow Sider")
                 ),
                 conditionalPanel(
                   condition = "input.pairmat_NumberOfBowSiders > 11",
                   textInput('pairmat_bow12',"12th Bow Sider:",value = "Bow Sider")
                 )
               ),
               column(
                 4,
                 textInput('pairmat_pair1','1st Pair Name:',value= 'Boat Name'),
                 conditionalPanel(
                   condition = "input.pairmat_NumberOfStrokeSiders > 1 && input.pairmat_NumberOfBowSiders > 1",
                   textInput('pairmat_pair2','2nd Pair Name:',value= 'Boat Name')
                 ),
                 conditionalPanel(
                   condition = "input.pairmat_NumberOfStrokeSiders > 2 && input.pairmat_NumberOfBowSiders > 2",
                   textInput('pairmat_pair3','3rd Pair Name:',value= 'Boat Name')
                 ),
                 conditionalPanel(
                   condition = "input.pairmat_NumberOfStrokeSiders > 3 && input.pairmat_NumberOfBowSiders > 3",
                   textInput('pairmat_pair4','4th Pair Name:',value= 'Boat Name')
                 ),
                 conditionalPanel(
                   condition = "input.pairmat_NumberOfStrokeSiders > 4 && input.pairmat_NumberOfBowSiders > 4",
                   textInput('pairmat_pair5','5th Pair Name:',value= 'Boat Name')
                 ),
                 conditionalPanel(
                   condition = "input.pairmat_NumberOfStrokeSiders > 5 && input.pairmat_NumberOfBowSiders > 5",
                   textInput('pairmat_pair6','6th Pair Name:',value= 'Boat Name')
                 ),
                 conditionalPanel(
                   condition = "input.pairmat_NumberOfStrokeSiders > 6 && input.pairmat_NumberOfBowSiders > 6",
                   textInput('pairmat_pair7','7th Pair Name:',value= 'Boat Name')
                 ),
                 conditionalPanel(
                   condition = "input.pairmat_NumberOfStrokeSiders > 7 && input.pairmat_NumberOfBowSiders > 7",
                   textInput('pairmat_pair8','8th Pair Name:',value= 'Boat Name')
                 ),
                 conditionalPanel(
                   condition = "input.pairmat_NumberOfStrokeSiders > 8 && input.pairmat_NumberOfBowSiders > 8",
                   textInput('pairmat_pair9','9th Pair Name:',value= 'Boat Name')
                 ),
                 conditionalPanel(
                   condition = "input.pairmat_NumberOfStrokeSiders > 9 && input.pairmat_NumberOfBowSiders > 9",
                   textInput('pairmat_pair10','10th Pair Name:',value= 'Boat Name')
                 ),
                 conditionalPanel(
                   condition = "input.pairmat_NumberOfStrokeSiders > 10 && input.pairmat_NumberOfBowSiders > 10",
                   textInput('pairmat_pair11','11th Pair Name:',value= 'Boat Name')
                 ),
                 conditionalPanel(
                   condition = "input.pairmat_NumberOfStrokeSiders > 11 && input.pairmat_NumberOfBowSiders > 11",
                   textInput('pairmat_pair12','12th Pair Name:',value= 'Boat Name')
                 )
               )
             ),
            
             submitButton("Produce Excel Sheet", icon("refresh"))
           )
  )