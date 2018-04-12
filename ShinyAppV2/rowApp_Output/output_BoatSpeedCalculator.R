##Boat Speed Calculator server output

output$averageErg <- renderText({
  paste(
    "The average 2k erg time of the crew is: ",
    seconds.to.hms(
      if(input$boatType == '1x'){
        (hour(input$stroke2k)*3600)+(minute(input$stroke2k)*60)+(second(input$stroke2k))
      }
      else if(input$boatType == '2x' | input$boatType == '2-'){
        mean((hour(c(input$stroke2k, input$bow2k))*3600)+(minute(c(input$stroke2k, input$bow2k))*60)+(second(c(input$stroke2k, input$bow2k))))
      }
      else if(input$boatType == '4x' | input$boatType == '4-'){
        mean((hour(c(input$stroke2k, input$bow2k,input$two2k,input$three2k))*3600) +
               (minute(c(input$stroke2k, input$bow2k,input$two2k,input$three2k))*60) +
               (second(c(input$stroke2k, input$bow2k,input$two2k,input$three2k))))
      }
      else if(input$boatType == '8+'){
        mean((hour(c(input$stroke2k, input$bow2k,input$two2k,input$three2k,input$four2k,input$five2k,input$six2k,input$seven2k))*3600) +
               (minute(c(input$stroke2k, input$bow2k,input$two2k,input$three2k,input$four2k,input$five2k,input$six2k,input$seven2k))*60) +
               (second(c(input$stroke2k, input$bow2k,input$two2k,input$three2k,input$four2k,input$five2k,input$six2k,input$seven2k))))
      })
  )
})
output$averageCrewWeight <- renderText({
  paste(
    "The average weight of the crew in kg is: ",
    if(input$boatType == '1x'){as.integer(input$strokeweight)}
    else if(input$boatType %in% c('2x','2-')){mean(as.integer(c(input$strokeweight,
                                                                input$bowweight)))}
    else if(input$boatType %in% c('4x','4-')){mean(as.integer(c(input$strokeweight,
                                                                input$twoweight,
                                                                input$threeweight,
                                                                input$bowweight)))}
    else if(input$boatType == '8+'){mean(as.integer(c(input$strokeweight,
                                                      input$twoweight,
                                                      input$threeweight,
                                                      input$fourweight,
                                                      input$fiveweight,
                                                      input$sixweight,
                                                      input$sevenweight,
                                                      input$bowweight)))},
    " kg."
  )
})

output$text <- renderText({
  paste(
    "The predicted 2k time on the water for this crew is: ",
    ErgToBoatSpeedCalculator(if(input$boatType == '1x'){as.integer(input$strokeweight)}
                             else if(input$boatType %in% c('2x','2-')){mean(as.integer(c(input$strokeweight, input$bowweight)))}
                             else if(input$boatType %in% c('4x','4-')){mean(as.integer(c(input$strokeweight,
                                                                                         input$twoweight,
                                                                                         input$threeweight,
                                                                                         input$bowweight)))}
                             else if(input$boatType == '8+'){mean(as.integer(c(input$strokeweight,
                                                                               input$twoweight,
                                                                               input$threeweight,
                                                                               input$fourweight,
                                                                               input$fiveweight,
                                                                               input$sixweight,
                                                                               input$sevenweight,
                                                                               input$bowweight)))},
                             input$boatType,
                             input$gender,
                             if(input$boatType == '1x'){
                               (hour(input$stroke2k)*3600)+(minute(input$stroke2k)*60)+(second(input$stroke2k))
                             }
                             else if(input$boatType == '2x' | input$boatType == '2-'){
                               mean((hour(c(input$stroke2k, input$bow2k))*3600)+(minute(c(input$stroke2k, input$bow2k))*60)+(second(c(input$stroke2k, input$bow2k))))
                             }
                             else if(input$boatType == '4x' | input$boatType == '4-'){
                               mean((hour(c(input$stroke2k, input$bow2k,input$two2k,input$three2k))*3600) +
                                      (minute(c(input$stroke2k, input$bow2k,input$two2k,input$three2k))*60) +
                                      (second(c(input$stroke2k, input$bow2k,input$two2k,input$three2k))))
                             }
                             else if(input$boatType == '8+'){
                               mean((hour(c(input$stroke2k, input$bow2k,input$two2k,input$three2k,input$four2k,input$five2k,input$six2k,input$seven2k))*3600) +
                                      (minute(c(input$stroke2k, input$bow2k,input$two2k,input$three2k,input$four2k,input$five2k,input$six2k,input$seven2k))*60) +
                                      (second(c(input$stroke2k, input$bow2k,input$two2k,input$three2k,input$four2k,input$five2k,input$six2k,input$seven2k))))
                             }
    )
  )
})

observeEvent(input$bsc_ReportExplanation,{
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