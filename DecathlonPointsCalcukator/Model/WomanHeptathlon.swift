//
//  WomanHeptathlon.swift
//  DecathlonPointsCalcukator
//
//  Created by Paweł Basałygo on 26/08/2022.
//

import Foundation
struct WomanHeptathlon{
    var pointsHurdles=0,pointsHJ=0,pointsSP=0,points200M=0,pointsLJ=0,pointsJT=0,points800M=0,pointsDay1=0,pointsDay2=0,pointsTotal=0
    mutating func calculateTotals(){
        pointsDay1 = pointsHurdles+pointsHJ+pointsSP+points200M
        pointsDay2 = pointsLJ+pointsJT+points800M
        pointsTotal = pointsDay1+pointsDay2
    }
    mutating func calculateHurdles(_ performance:String)->String{
        let aCoeff = 9.23076
        let bCoeff  = 26.7
        let cCoeff = 1.835
        pointsHurdles = Int(aCoeff * (pow(bCoeff - Double(performance)!, cCoeff)))
        calculateTotals()
        return String(pointsHurdles)
    }
    mutating func calculateHJ(_ performance:String)->String{
        let aCoeff = 1.84523
        let bCoeff = 75.00
        let cCoeff = 1.348
        pointsHJ = Int(aCoeff * (pow( (Double(performance)!*100) - bCoeff , cCoeff)))
        calculateTotals()
        return String(pointsHJ)
    }
    mutating func calculateSP(_ performance:String)->String{
        let aCoeff = 56.0211
        let bCoeff = 1.5
        let cCoeff = 1.05
        pointsSP = Int(aCoeff * (pow( Double(performance)! - bCoeff , cCoeff)))
        calculateTotals()
        return String(pointsSP)
    }
    mutating func calculate200M(_ performance:String)->String{
        let aCoeff = 4.99087
        let bCoeff = 42.5
        let cCoeff = 1.81
        points200M = Int(aCoeff * (pow(bCoeff - Double(performance)!, cCoeff)))
        calculateTotals()
        return String(points200M)
    }
    mutating func calculateLJ(_ performance:String)->String{
        let aCoeff = 0.188807
        let bCoeff  = 210.0
        let cCoeff = 1.41
        pointsLJ = Int(aCoeff * (pow( (Double(performance)!*100) - bCoeff , cCoeff)))
        calculateTotals()
        return String(pointsLJ)
    }
    mutating func calculateJT(_ performance:String)->String{
        let aCoeff = 15.9803
        let bCoeff = 3.80
        let cCoeff = 1.04
        pointsJT = Int(aCoeff * (pow( Double(performance)! - bCoeff , cCoeff)))
        calculateTotals()
        return String(pointsJT)
    }
    mutating func calculate800M(_ performance:String)->String{
        let aCoeff = 0.11193
        let bCoeff  = 254.0
        let cCoeff = 1.88
        let Performance = Double(performance)
        var remainder = Performance?.truncatingRemainder(dividingBy: 1)
        remainder = remainder!*100
        let minutes = Int(Performance!)
        let performanceInSeconds = (minutes*60)+Int(remainder!)
        points800M = Int(aCoeff * (pow(bCoeff - Double(performanceInSeconds), cCoeff)))
        calculateTotals()
        return String(points800M)
    }
}
