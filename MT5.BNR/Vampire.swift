//
//  Vampire.swift
//  MonsterTown4.BNR
//
//  Created by Ivan Ramirez on 8/12/18.
//  Copyright © 2018 BNR.ramcomw. All rights reserved.
//

import Foundation

class Vampire: Monster {
    var convertedVamps = [Vampire]()
    var vampireTerrorPower: Int = 1
    
    final override func terrorizeTown() {
        town?.isMonsterAttacking = true
        if let currnetPop = town?.population {
            switch currnetPop {
                case 0: // nothing happens
                print("\(self.name) tried terrorizing but everyone's either dead or a vampire... nobody left to terrorize.")
                printVampireCount()
            default:
                    super.terrorizeTown()
                town?.changePopulation(by: vampireTerrorPower)
                convertedVamps.append(Vampire())
                printVampireCount()
        }
    }
            town?.isMonsterAttacking = false
        }
    func printVampireCount() {
            print("There are \(convertedVamps.count) vampires in this town.")
                }
    }
