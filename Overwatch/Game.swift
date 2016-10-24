//
//  Game.swift
//  Overwatch
//
//  Created by Henry Chan on 10/21/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation
import UIKit




struct Game {
    
    var offenseCharacters: [Hero] = []
    var defenseCharacters: [Hero] = []
    var supportCharacters: [Hero] = []
    var tankCharacters: [Hero] = []
    var heroType: HeroType = .offense
    
    var heroes: [Hero] {return heroesForType()}
    
    init() {
        createAllHeroes()
    }
    
    
    func heroesForType() -> [Hero]{
        
        switch self.heroType {
            
        case .offense:
            return offenseCharacters
        case .defense:
            return defenseCharacters
        case .support:
            return supportCharacters
        case .tank:
            return tankCharacters
            
        }
    }
}


extension Game {
    
    mutating func createAllHeroes() {
        
        for type in HeroType.allTypes {
            
            let names =  HeroName.heroes(with: type)
            for name in names {
                let hero = Hero(name: name)
                switch hero.heroType.description {
                case "Offense: 💥":
                    self.offenseCharacters.append(hero)
                case "Defense: 🛡":
                    self.defenseCharacters.append(hero)
                case "Support: 🚑":
                    self.supportCharacters.append(hero)
                case "Tank: 🐼":
                    self.tankCharacters.append(hero)
                default:
                    print("not valid")
                }
                
            }
        }
        
    }
}



