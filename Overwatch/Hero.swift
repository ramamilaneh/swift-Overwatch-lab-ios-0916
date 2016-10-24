//
//  Hero.swift
//  Overwatch
//
//  Created by Henry Chan on 10/21/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation
import UIKit

struct Hero: OverwatchHero {
    
    var name: HeroName
    var hitPoints: Health = 0
    var heroType: HeroType {
        
        return produceHeroType()
    }
    
    var image: UIImage {
        
        return produceButtonImage()
    }
    
    var profileImage: UIImage {
        
        return produceProfileImage()
    }
    
    init (name:HeroName) {
        
        self.name = name
        self.hitPoints = produceInitialHitPoints()
        
    }
    
    
    func produceButtonImage() -> UIImage {
        
        switch name {
        case .ana:
            return #imageLiteral(resourceName: "Ana")
        case .bastion:
            return #imageLiteral(resourceName: "Bastion")
        case .dva:
            return #imageLiteral(resourceName: "DVA")
        case .genji:
            return #imageLiteral(resourceName: "Genji")
        case .hanzo:
            return #imageLiteral(resourceName: "Hanzo")
        case .junkrat:
            return #imageLiteral(resourceName: "Junkrat")
        case .lúcio:
            return #imageLiteral(resourceName: "Lúcio")
        case .mcCree:
            return #imageLiteral(resourceName: "McCree")
        case .mei:
            return #imageLiteral(resourceName: "Mei")
        case .mercy:
            return #imageLiteral(resourceName: "Mercy")
        case .pharah:
            return #imageLiteral(resourceName: "Pharah")
        case .reaper:
            return #imageLiteral(resourceName: "Reaper")
        case .reinhardt:
            return #imageLiteral(resourceName: "Reinhardt")
        case .roadhog:
            return #imageLiteral(resourceName: "Roadhog")
        case .soldier76:
            return #imageLiteral(resourceName: "Soldier 76")
        case .symmetra:
            return #imageLiteral(resourceName: "Symmetra")
        case .tracer:
            return #imageLiteral(resourceName: "Tracer")
        case .torbjörn:
            return #imageLiteral(resourceName: "Torbjörn")
        case .widowmaker:
            return #imageLiteral(resourceName: "Widowmaker")
        case .winston:
            return #imageLiteral(resourceName: "Winston")
        case .zarya:
            return #imageLiteral(resourceName: "Zarya")
        case .zenyatta:
          return  #imageLiteral(resourceName: "Zenyatta")
        
        }
    }
    
    
    func produceProfileImage() -> UIImage {
        
        switch name {
            case .ana:
            return #imageLiteral(resourceName: "AnaProfile")
            case .bastion:
            return #imageLiteral(resourceName: "BastionProfile")
            case .dva:
            return #imageLiteral(resourceName: "DVAProfile")
            case .genji:
            return #imageLiteral(resourceName: "GenjiProfile")
            case .hanzo:
            return #imageLiteral(resourceName: "HanzoProfile")
            case .junkrat:
            return #imageLiteral(resourceName: "JunkratProfile")
            case .lúcio:
            return #imageLiteral(resourceName: "LucioProfile")
            case .mcCree:
            return #imageLiteral(resourceName: "McCreeProfile")
            case .mei:
            return #imageLiteral(resourceName: "MeiProfile")
            case .mercy:
            return #imageLiteral(resourceName: "MercyProfile")
            case .pharah:
            return #imageLiteral(resourceName: "PharahProfile")
            case .reaper:
            return #imageLiteral(resourceName: "ReaperProfile")
            case .reinhardt:
            return #imageLiteral(resourceName: "ReinhardtProfile")
            case .roadhog:
            return #imageLiteral(resourceName: "RoadhogProfile")
            case .soldier76:
            return #imageLiteral(resourceName: "Soldier 76Profile")
            case .symmetra:
            return #imageLiteral(resourceName: "SymmetraProfile")
            case .tracer:
            return #imageLiteral(resourceName: "TracerProfile")
            case .torbjörn:
            return #imageLiteral(resourceName: "TorbjornProfile")
            case .widowmaker:
            return #imageLiteral(resourceName: "WidowmakerProfile")
            case .winston:
            return #imageLiteral(resourceName: "WinstonProfile")
            case .zarya:
            return #imageLiteral(resourceName: "ZaryaProfile")
            case .zenyatta:
            return  #imageLiteral(resourceName: "ZenyattaProfile")
        }
    }
    
    
}
