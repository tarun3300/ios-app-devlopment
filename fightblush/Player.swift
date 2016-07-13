//
//  Player.swift
//  fightblush
//
//  Created by TARUN GUDELA on 3/17/16.
//  Copyright © 2016 TARUN GUDELA. All rights reserved.
//

import Foundation

class Player: Character {
    
    
   
    

    private var _inventory = [String]()
    
    var inventory: [String] {
        return _inventory
    }
    
    func addItemToInventory(item: String ) {
        _inventory.append(item)
    }
    
    convenience init(name: String, hp: Int, attackpwr: Int){
        
        self.init(name: name, startingHp: hp, attackpower: attackpwr)
        
    }
    
    
    
}
