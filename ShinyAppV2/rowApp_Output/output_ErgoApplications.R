## Ergo Applications Server Output

output$ergAppDistance_D <- renderText({
    ErgDistanceCalculator(input$ergDuration_D,input$ergSplit_D)
})

output$ergAppDuration_T <- renderText({
  paste(
    "The duration of the ergo is ",
    ErgDurationCalculator(input$ergDistance_T,input$ergSplit_T)
  )
})

output$ergAppSplit_S <- renderText({
  paste(
    "The split pulled for the ergo is ",
    ErgSplitCalculator(input$ergDistance_S,input$ergDuration_S)
  )
})

output$ergWeightAddaptedSplit_A <- renderText({
  paste(
    "The Weight adjusted split for the athlete is ",
    ergSplitWeightAdjuster(input$ergSplit_A,input$athleteWeight_A)
  )
})

observeEvent(input$ewa_ReportExplanation,{
  showModal(modalDialog(
    title = "Explanation: Boat Speed Calculator",
    "This calculator gives an estimate of the boat speed of crews based upon the athlete ergo scores and weights ",
    "based upon historic scores and athlete aggregation.",
    br(),
    "To run the report, select the boat type, update the input panel and then input the gender, weights and erg scores of all athletes in the boat.",
    br(),
    "Finally, press the update button and the 2k time of the boat will be calculated.",
    easyClose = TRUE
  ))
})

observeEvent(input$etc_ReportExplanation,{
  showModal(modalDialog(
    title = "Explanation: Boat Speed Calculator",
    "This calculator gives an estimate of the boat speed of crews based upon the athlete ergo scores and weights ",
    "based upon historic scores and athlete aggregation.",
    br(),
    "To run the report, select the boat type, update the input panel and then input the gender, weights and erg scores of all athletes in the boat.",
    br(),
    "Finally, press the update button and the 2k time of the boat will be calculated.",
    easyClose = TRUE
  ))
})

observeEvent(input$esc_ReportExplanation,{
  showModal(modalDialog(
    title = "Explanation: Boat Speed Calculator",
    "This calculator gives an estimate of the boat speed of crews based upon the athlete ergo scores and weights ",
    "based upon historic scores and athlete aggregation.",
    br(),
    "To run the report, select the boat type, update the input panel and then input the gender, weights and erg scores of all athletes in the boat.",
    br(),
    "Finally, press the update button and the 2k time of the boat will be calculated.",
    easyClose = TRUE
  ))
})

observeEvent(input$edc_ReportExplanation,{
  showModal(modalDialog(
    title = "Explanation: Boat Speed Calculator",
    "This calculator gives an estimate of the boat speed of crews based upon the athlete ergo scores and weights ",
    "based upon historic scores and athlete aggregation.",
    br(),
    "To run the report, select the boat type, update the input panel and then input the gender, weights and erg scores of all athletes in the boat.",
    br(),
    "Finally, press the update button and the 2k time of the boat will be calculated.",
    easyClose = TRUE
  ))
})