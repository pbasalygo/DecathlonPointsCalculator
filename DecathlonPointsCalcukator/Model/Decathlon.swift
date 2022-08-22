//
//  Decathlon.swift
//  DecathlonPointsCalcukator
//
//  Created by Paweł Basałygo on 22/08/2022.
//

import Foundation

struct Decathlon{
    func Calculate100M(_ performance:String)->Int{
         let aCoeff100M = 25.4347
         let bCoeff100M  = 18.0
         let cCoeff100M = 1.81
            let forPoints = Double(performance)
            let result100M = Int(aCoeff100M * (pow(bCoeff100M - Double(forPoints!), cCoeff100M)))
        return result100M
    }
    func calculateLJ(_ performance:String)->Int{
        let aCoeffLJ = 0.14354
        let bCoeffLJ = 220.0
        let cCoeffLJ = 1.4
            let forPoints = Double(performance)
            let resultLJ = Int(aCoeffLJ * (pow( Double(forPoints!*100) - bCoeffLJ , cCoeffLJ)))
        return resultLJ
    }
}
