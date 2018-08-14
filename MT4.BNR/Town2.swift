//
//  Town2.swift
//  MonsterTown4.BNR
//
//  Created by Ivan Ramirez on 8/12/18.
//  Copyright © 2018 BNR.ramcomw. All rights reserved.
//
import Foundation

struct Town {
    
   static let region = "South"
    var population = 5_422 {
        didSet(oldPopulation) {
            if population < oldPopulation { // track changes
                print("The population has changed to \(population) from \(oldPopulation).")
                mayor?.populationDecreased()
            }
        }
    }
    var mayor: Mayor?
    
    enum State {
        case safe
        case underZombieAttack
    }
    var state: State = .safe {
        didSet {
            if state == .underZombieAttack {
                self.mayor?.townUnderZombieAttack()
            }
        }
    }
    
    var numberOfStopLights = 4
    enum Size {
        case small
        case medium
        case large
    }
     var townSize: Size {
        get { // Computed property
        switch self.population {
        case 0...10_000:
            return Size.small
            
        case 10_001...100_000:
            return Size.medium
            
        default:
            return Size.large
        }
    }
}
    
    var isMonsterAttacking = false
    
    func printDescritpion() {
        print("Population: \(population); number of stoplights \(numberOfStopLights)")
    }
    /*
     ---------
     adding mutable method in order to increase pop
     ---------------
     */
    
    mutating func changePopulation(by amount: Int) {
        if isMonsterAttacking {
            population -= amount
        } else {
        population += amount
        // amount is the parameter of In type
    }
  }
}


    


