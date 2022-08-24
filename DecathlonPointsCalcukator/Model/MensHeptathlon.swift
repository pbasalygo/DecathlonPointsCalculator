//
//  MensHeptathlon.swift
//  DecathlonPointsCalcukator
//
//  Created by Paweł Basałygo on 24/08/2022.
//

import Foundation

struct MensHeptathlon{
    var points60M=0,pointsLJ=0,pointsSP=0,pointsHJ=0,pointsHurdles=0,pointsPV=0,points1000M=0,pointsDay1=0,pointsDay2=0,pointsTotal=0
    mutating func calculateTotals(){
        pointsDay1 = points60M+pointsLJ+pointsSP+pointsHJ
        pointsDay2 = pointsHurdles+pointsPV+points1000M
        pointsTotal = pointsDay1+pointsDay2
    }
    mutating func calculate60M(_ performance:String)->String{
        let aCoeff = 58.0150
        let bCoeff  = 11.5
         let cCoeff = 1.81
        points60M = Int(aCoeff * (pow(bCoeff - Double(performance)!, cCoeff)))
        calculateTotals()
        return String(points60M)
    }
    mutating func calculateLJ(_ performance:String)->String{
        let aCoeff = 0.14354
        let bCoeff = 220.0
        let cCoeff = 1.4
        pointsLJ = Int(aCoeff * (pow( (Double(performance)!*100) - bCoeff , cCoeff)))
        calculateTotals()
        return String(pointsLJ)
    }
    mutating func calculateSP(_ performance:String)->String{
        let aCoeff = 51.39
        let bCoeff = 1.5
        let cCoeff = 1.05
        pointsSP = Int(aCoeff * (pow( Double(performance)! - bCoeff , cCoeff)))
        calculateTotals()
        return String(pointsSP)
    }
    mutating func calculateHJ(_ performance:String)->String{
        let aCoeff = 0.8465
        let bCoeff = 75.0
        let cCoeff = 1.42
        pointsHJ = Int(aCoeff * (pow( (Double(performance)!*100) - bCoeff , cCoeff)))
        calculateTotals()
        return String(pointsHJ)
    }
    mutating func calculateHurdles(_ performance:String)->String{
        let aCoeff = 20.5173
        let bCoeff  = 15.5
        let cCoeff = 1.92
        pointsHurdles = Int(aCoeff * (pow(bCoeff - Double(performance)!, cCoeff)))
        calculateTotals()
        return String(pointsHurdles)
    }
    mutating func calculatePV(_ performance:String)->String{
        let aCoeff = 0.2797
        let bCoeff = 100.0
        let cCoeff = 1.35
        pointsPV = Int(aCoeff * (pow( (Double(performance)!*100) - bCoeff , cCoeff)))
        calculateTotals()
        return String(pointsPV)
    }
    mutating func calculate1000M(_ performance:String)->String{
        let aCoeff = 0.08713
        let bCoeff  = 305.5
        let cCoeff = 1.85
        let Performance = Double(performance)
        var remainder = Performance?.truncatingRemainder(dividingBy: 1)
        remainder = remainder!*100
        let minutes = Int(Performance!)
        let performanceInSeconds = (minutes*60)+Int(remainder!)
        points1000M = Int(aCoeff * (pow(bCoeff - Double(performanceInSeconds), cCoeff)))
        calculateTotals()
        return String(points1000M)
    }
}
