//
//  Decathlon.swift
//  DecathlonPointsCalcukator
//
//  Created by Paweł Basałygo on 22/08/2022.
//

import Foundation

struct Decathlon{
    var points100m=0,pointsLJ=0,pointsSP=0,pointsHJ=0,points400m=0,pointsHurdles=0,pointsDT=0,pointsPV=0,pointsJT=0,points1500m=0,pointsDay1=0,pointsDay2=0,pointsTotal=0
    
    mutating func calculate100M(_ performance:String)->String{
         let aCoeff100M = 25.4347
         let bCoeff100M  = 18.0
         let cCoeff100M = 1.81
        points100m = Int(aCoeff100M * (pow(bCoeff100M - Double(performance)!, cCoeff100M)))
        calculateTotals()
        return String(points100m)
    }
    mutating func calculateLJ(_ performance:String)->String{
        let aCoeffLJ = 0.14354
        let bCoeffLJ = 220.0
        let cCoeffLJ = 1.4
        pointsLJ = Int(aCoeffLJ * (pow( (Double(performance)!*100) - bCoeffLJ , cCoeffLJ)))
        calculateTotals()
        return String(pointsLJ)
    }
    mutating func calculateSP(_ performance:String)->String{
        let aCoeffSP = 51.39
        let bCoeffSP = 1.5
        let cCoeffSP = 1.05
        pointsSP = Int(aCoeffSP * (pow( Double(performance)! - bCoeffSP , cCoeffSP)))
        calculateTotals()
        return String(pointsSP)
    }
    mutating func calculateHJ(_ performance:String)->String{
        let aCoeffHJ = 0.8465
        let bCoeffHJ = 75.0
        let cCoeffHJ = 1.42
        pointsHJ = Int(aCoeffHJ * (pow( (Double(performance)!*100) - bCoeffHJ , cCoeffHJ)))
        calculateTotals()
        return String(pointsHJ)
    }
    mutating func calculate400M(_ performance:String)->String{
        let aCoeff400M = 1.53775
        let bCoeff400M  = 82.0
        let cCoeff400M = 1.81
        points400m = Int(aCoeff400M * (pow(bCoeff400M - Double(performance)!, cCoeff400M)))
        calculateTotals()
        return String(points400m)
    }
    mutating func calculateTotals(){
        pointsDay1 = points100m+pointsLJ+pointsSP+pointsHJ+points400m
        pointsDay2 = pointsHurdles+pointsDT+pointsPV+pointsJT+points1500m
        pointsTotal = pointsDay1+pointsDay2
    }
    mutating func calculateHurdles(_ performance:String)->String{
        let aCoeffHurdles = 5.74352
        let bCoeffHurdles  = 28.5
         let cCoeffHurdles = 1.92
        pointsHurdles = Int(aCoeffHurdles * (pow(bCoeffHurdles - Double(performance)!, cCoeffHurdles)))
        calculateTotals()
        return String(pointsHurdles)
    }
    mutating func calculateDT(_ performance:String)->String{
        let aCoeffDT = 12.91
        let bCoeffDT = 4.0
        let cCoeffDT = 1.10
        pointsDT = Int(aCoeffDT * (pow( Double(performance)! - bCoeffDT , cCoeffDT)))
        calculateTotals()
        return String(pointsDT)
    }
    mutating func calculatePV(_ performance:String)->String{
        let aCoeffPV = 0.2797
        let bCoeffPV = 100.0
        let cCoeffPV = 1.35
        pointsPV = Int(aCoeffPV * (pow( (Double(performance)!*100) - bCoeffPV , cCoeffPV)))
        calculateTotals()
        return String(pointsPV)
    }
    mutating func calculateJT(_ performance:String)->String{
        let aCoeffJT = 10.14
        let bCoeffJT = 7.0
        let cCoeffJT = 1.08
        pointsJT = Int(aCoeffJT * (pow( Double(performance)! - bCoeffJT , cCoeffJT)))
        calculateTotals()
        return String(pointsJT)
    }
    mutating func calculate1500M(_ performance:String,_ hundreds:String)->String{
        let aCoeff1500M = 0.03768
        let bCoeff1500M  = 480.0
        let cCoeff1500M = 1.85
        let Performance = Double(performance)
        var remainder = Performance?.truncatingRemainder(dividingBy: 1)
        remainder = remainder!*100
        let minutes = Int(Performance!)
        let Hundreds = Double(hundreds)!/100
        let performanceInSeconds = (Double(minutes)*60)+remainder!+Hundreds
        points1500m = Int(aCoeff1500M * (pow(bCoeff1500M - performanceInSeconds, cCoeff1500M)))
        calculateTotals()
        return String(points1500m)
    }
    
}
