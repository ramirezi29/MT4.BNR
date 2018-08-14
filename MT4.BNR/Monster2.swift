//
//  Monster2.swift
//  MonsterTown4.BNR
//
//  Created by Ivan Ramirez on 8/12/18.
//  Copyright © 2018 BNR.ramcomw. All rights reserved.
//
import Foundation

class Monster {
    static let isTerrifying = true
     class var spookyNoise: String {
        return "Grrr"
    }
    var town: Town?
    // given an option, in case no monster is terrorizing the town
    var name = "Monster"
    
    var victimPool: Int { // both a getter and setter
        get {
            return town?.population ?? 0
        }
        set(newVictimPool) {
            town?.population = newVictimPool
        
        }
    }
    func terrorizeTown() {
        if town != nil {
            print("\(name) is terrorizing a town!")
        } else {
            print("\(name) hasn't found a town to terroirze yet...")
            
        }
    }
}


