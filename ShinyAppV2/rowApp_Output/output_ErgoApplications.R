## Ergo Applications Server Output

values <- reactiveValues(variable = NA)

observe({
  if(input$submit_CalculateErgDistance > 0){
    values$ergDuration_D <- isolate(input$ergDuration_D)
    values$ergSplit_D <- isolate(input$ergSplit_D)
  }
})
output$ergAppDistance_D <- renderText({
  paste(
    "The distance covered in the ergo is ",
    ErgDistanceCalculator(values$ergDuration_D,values$ergSplit_D)
  )
})

observe({
  if(input$submit_CalculateErgTime > 0){
    values$ergDistance_T <- isolate(input$ergDistance_T)
    values$ergSplit_T <- isolate(input$ergSplit_T)
  }
})
output$ergAppDuration_T <- renderText({
  paste(
    "The duration of the ergo is ",
    ErgDurationCalculator(values$ergDistance_T,values$ergSplit_T)
  )
})

observe({
  if(input$submit_CalculateErgSplit > 0){
    values$ergDistance_S <- isolate(input$ergDistance_S)
    values$ergDuration_S <- isolate(input$ergDuration_S)
  }
})
output$ergAppSplit_S <- renderText({
  paste(
    "The split pulled for the ergo is ",
    ErgSplitCalculator(values$ergDistance_S,values$ergDuration_S)
  )
})

observe({
  if(input$submit_CalculateErgWeight > 0){
    values$ergSplit_A <- isolate(input$ergSplit_A)
    values$athleteWeight_A <- isolate(input$athleteWeight_A)
  }
})
output$ergWeightAddaptedSplit_A <- renderText({
  paste(
    "The Weight adjusted split for the athlete is ",
    ergSplitWeightAdjuster(values$ergSplit_A,values$athleteWeight_A)
  )
})