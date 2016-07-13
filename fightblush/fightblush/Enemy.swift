//
//  Enemy.swift
//  fightblush
//
//  Created by TARUN GUDELA on 3/17/16.
//  Copyright © 2016 TARUN GUDELA. All rights reserved.
//

import Foundation

class Enemy: Character {
    
    
    let IMMUNE_MAX = 15
    
    var loot: [String]{
        return ["titiiisid", "tatafddgga"]
    }
    
    var type: String{
        return "grunt"
    }
    
    
  
    
    
    func drploot() -> String?{
        
        if !isAlive{
            let rand = Int(arc4random_uniform(UInt32(loot.count)))
            return loot[rand]
        }else
        {
            return nil
        }
    }
    
     convenience init(name: String, hp: Int, attackpwr: Int){
        
        self.init(name: name, startingHp: hp, attackpower: attackpwr)
        
        
    }
    
    override func attemptattack(attackPwr: Int) -> Bool {
        if attackPwr >= IMMUNE_MAX {
            return super.attemptattack(attackPwr)
        } else {
            return false
        }
}

}
