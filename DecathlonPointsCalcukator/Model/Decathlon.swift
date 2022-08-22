//
//  Decathlon.swift
//  DecathlonPointsCalcukator
//
//  Created by Paweł Basałygo on 22/08/2022.
//

import Foundation

struct Decathlon{
    func Calculate100M(_ performance: Double)->Int{
        let aCoeff100M = 25.4347
        let bCoeff100M  = 18.0
        let cCoeff100M = 1.81
        let result100M = Int(aCoeff100M * (pow(bCoeff100M - Double(performance), cCoeff100M))
        )
        return result100M
    }
}
