#Calculate Erg Distance

ErgDistanceCalculator <- function(ergDuration, ergSplit){
  
  #Inputs:  duration is strptime
  #         split in strptime
  #Outputs: distance in meters.
  
  durationSec <- period_to_seconds(hms(strftime(ergDuration,format = "%H:%M:%S")))
  splitSec <- period_to_seconds(hms(strftime(ergSplit,format = "%H:%M:%S")))
  ergDistance <- (durationSec / splitSec) * 500
  return (ergDistance)
}

ErgDurationCalculator <- function(ergDistance,ergSplit){
  
  #Inputs:  Erg Distance (meters)
  #         Erg Split [HH]:[MM]:[SS]
  #Outputs: Erg Duration [HH]:[MM]:[SS]
  
  splitSecs <- (period_to_seconds(hms(strftime(ergSplit,format ="%H:%M:%S"))))
  count500Meters <- (ergDistance/500)
  ergDuration <- seconds_to_period(count500Meters*splitSecs)
  
  return(ergDuration)
}

ErgSplitCalculator <- function(ergDistance,ergDuration){
  
  #Inputs:  Erg Distance (meters)
  #         Erg Duration [HH]:[MM]:[SS]
  #Outputs: Erg Split [HH]:[MM]:[SS]
  
  durationSecs <- (period_to_seconds(hms(strftime(ergDuration,"%H:%M:%S"))))
  count500Meters <- (ergDistance/500)
  ergSplit <- seconds_to_period(durationSecs / count500Meters)
  
  return(ergSplit)
}

ergSplitWeightAdjuster <- function(actualErgSplit,AthleteWeight){
  
  #Inputs:  Erg Split [HH]:[MM]:[SS]
  #         Athletes Weight (kg)
  #Outputs: Adjusted erg split [HH]:[MM]:[SS]
  
  ergSplitSeconds <- period_to_seconds(hms(strftime(actualErgSplit,"%H:%M:%S")))#/(((15 + 75)/(15+AthleteWeight))^0.1)
  Divisor <- (15 + 75)/(15 + AthleteWeight)
  adjustedSplit <- ergSplitSeconds/(Divisor^0.1)
  adjustedSplit <- seconds_to_period(adjustedSplit)
  
  # adjustedSplit <- sprintf('%02d:%02d', minute(adjustedSplit), second(adjustedSplit))
  
  return(adjustedSplit)
  
}

