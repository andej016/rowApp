#Calculate Erg Distance

ErgDistanceCalculator <- function(ergDuration, ergSplit){
  
  #Inputs:  duration is strptime
  #         split in strptime
  #Outputs: distance in meters.
  
  durationSec <- hms.to.seconds(strftime(ergDuration,"%H:%M:%S"))
  splitSec <- hms.to.seconds(strftime(ergSplit,"%H:%M:%S"))
  ergDistance <- (durationSec / splitSec) * 500
  return (ergDistance)
}

ErgDurationCalculator <- function(ergDistance,ergSplit){
  
  #Inputs:  Erg Distance (meters)
  #         Erg Split [HH]:[MM]:[SS]
  #Outputs: Erg Duration [HH]:[MM]:[SS]
  
  splitSecs <- (hms.to.seconds(strftime(ergSplit,"%H:%M:%S")))
  count500Meters <- (ergDistance/500)
  ergDuration <- seconds.to.hms(count500Meters*splitSecs)
  
  return(ergDuration)
}

ErgSplitCalculator <- function(ergDistance,ergDuration){
  
  #Inputs:  Erg Distance (meters)
  #         Erg Duration [HH]:[MM]:[SS]
  #Outputs: Erg Split [HH]:[MM]:[SS]
  
  durationSecs <- (hms.to.seconds(strftime(ergDuration,"%H:%M:%S")))
  count500Meters <- (ergDistance/500)
  ergSplit <- seconds.to.hms(durationSecs / count500Meters)
  
  return(ergSplit)
}

ergSplitWeightAdjuster <- function(actualErgSplit,AthleteWeight){
  
  #Inputs:  Erg Split [HH]:[MM]:[SS]
  #         Athletes Weight (kg)
  #Outputs: Adjusted erg split [HH]:[MM]:[SS]
  
  ergSplitSeconds <- hms.to.seconds(strftime(actualErgSplit,"%H:%M:%S"))#/(((15 + 75)/(15+AthleteWeight))^0.1)
  Divisor <- (15 + 75)/(15 + AthleteWeight)
  adjustedSplit <- ergSplitSeconds/(Divisor^0.1)
  adjustedSplit <- seconds.to.hms(adjustedSplit)
  
  return(adjustedSplit)
  
}

