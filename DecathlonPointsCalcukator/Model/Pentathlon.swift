//
//  Pentathlon.swift
//  DecathlonPointsCalcukator
//
//  Created by Paweł Basałygo on 28/08/2022.
//

import Foundation
struct Pentathlon{
    var pointsHurdles=0,pointsHJ=0,pointsSP=0,pointsLJ=0,points800M=0,pointsTotal=0
    mutating func calculateTotals(){
        pointsTotal = pointsHurdles+pointsHJ+pointsSP+pointsLJ+points800M
    }
    mutating func calculateHurdles(_ performance:String)->String{
        let aCoeff = 20.0479
        let bCoeff  = 17.0
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
    mutating func calculateLJ(_ performance:String)->String{
        let aCoeff = 0.188807
        let bCoeff  = 210.0
        let cCoeff = 1.41
        pointsLJ = Int(aCoeff * (pow( (Double(performance)!*100) - bCoeff , cCoeff)))
        calculateTotals()
        return String(pointsLJ)
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
