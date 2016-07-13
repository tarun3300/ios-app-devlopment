//
//  character.swift
//  fightblush
//
//  Created by TARUN GUDELA on 3/16/16.
//  Copyright © 2016 TARUN GUDELA. All rights reserved.
//

import Foundation

class Character{
    private var _hp = 100
    private var _attackpower = 20
    private var _name: String = "name"
    
    var hp: Int{
        get{
            return _hp
        }
    }
    
    
    var attackpower: Int{
        get{
            return _attackpower
        }
    }
    
    var name: String{
        get{
        return _name
        }
    }
    
    var isAlive: Bool{
        get{
            if hp <= 0
            {
                return false
            }
            else{
                return true
            }
        }
    }

    init(name: String, startingHp: Int, attackpower: Int ){
        self._hp = startingHp
        self._attackpower = attackpower
        self._name = name

    }
    
    func attemptattack(attackpower: Int) ->Bool {
        self._hp -= attackpower
        
        return true
        
        
    }
    
    
    
    
}