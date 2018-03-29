## Ergo Applications Server Output

output$ergAppDistance_D <- renderText({
  paste(
    "The distance covered in the ergo is ",
    ErgDistanceCalculator(input$ergDuration_D,input$ergSplit_D)
  )
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