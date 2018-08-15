//
//  Mayor.swift
//  MT4.BNR
//
//  Created by Ivan Ramirez on 8/13/18.
//  Copyright © 2018 BNR.ramcomw. All rights reserved.
//

import Foundation

struct Mayor {
    private var anxietyLevel = 0
    
    mutating func townUnderZombieAttack() {
        anxietyLevel += 1
        print("Mayor anxietyLevel: \(anxietyLevel)")
    }
    
    func populationDecreased() {
        print("I'm deeply saddened to hear about this latest tragedy. I promise that my office is looking into the nature of this rash of violence.")
    }
}
