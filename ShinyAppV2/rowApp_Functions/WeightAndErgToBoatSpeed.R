ErgToBoatSpeedCalculator <- function(AthleteWeight,BoatType,Gender,ErgScore2k){

  #Inputs:  Average crew erg score in seconds
  #         Average crew weight in kg
  #         Boat type being assessed (1x, 2x, 2-, 4x, 4- or 8+)
  #         Gender of the crew (M or F)
  #Output:  Water 2k time of crew in [HH]:[MM]:[SS]
  
  if(Gender == 'M'){
    if (BoatType == '1x'){
      BoatSpeed2k <- ErgScore2k + 28 + (AthleteWeight / 3)
    }
    if (BoatType == '2x'){
      BoatSpeed2k <- ErgScore2k - 36 + (AthleteWeight * 0.6)
    }
    if (BoatType == '4x'){
      BoatSpeed2k <- ErgScore2k - 60 + (AthleteWeight * 0.6)
    }
    if (BoatType == '2-'){
      BoatSpeed2k <- ErgScore2k - 6 + (AthleteWeight * 0.4)
    }
    if (BoatType == '4-'){
      BoatSpeed2k <- ErgScore2k - 52 + (AthleteWeight * 0.55)
    }
    if (BoatType == '8+'){
      BoatSpeed2k <- ErgScore2k - 58 + (AthleteWeight * 0.4)
    }
  }
  
  BoatSpeed2k <- seconds.to.hms(BoatSpeed2k)
  
  return(BoatSpeed2k)
}