//
//  ViewController.swift
//  fightblush
//
//  Created by TARUN GUDELA on 3/13/16.
//  Copyright © 2016 TARUN GUDELA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    
    
    var player: Player!
    var enemy: Enemy!
    
    
    
    
    @IBOutlet weak var enemyimg: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        player = Player(name: "Heman", hp: 300, attackpwr: 50)
        enemy = Enemy(name: "Rakesh", hp: 250, attackpwr: 30)
        
        playerlbl.text = "\(player.hp) Hp"
        enemylbl.text = "\(enemy.hp)Hp"
    }

    @IBOutlet weak var printscreen: UIImageView!
    @IBOutlet weak var playerlbl: UILabel!
    @IBOutlet weak var enemylbl: UILabel!
    
    @IBOutlet weak var playerimg: UIImageView!
    @IBOutlet weak var fightblush: UIImageView!
    
    @IBOutlet weak var torch: UIImageView!
    
    @IBOutlet weak var msglbl: UILabel!
    @IBOutlet weak var enemybtn: UIButton!
    @IBOutlet weak var playerbtn: UIButton!
    
    @IBOutlet weak var playbtn: UIButton!
    
    @IBAction func onpressplaybtn(sender: AnyObject) {
        
        fightblush.hidden = true
        torch.hidden = true
        msglbl.hidden = false
        playerimg.hidden = false
        enemyimg.hidden = false
        playerlbl.hidden = false
        enemylbl.hidden = false
        playerbtn.hidden = false
        enemybtn.hidden = false
        playbtn.hidden = true
        printscreen.hidden = false
        
        
    }
    
    @IBAction func onpressplayerbtn(sender: AnyObject) {
        if enemy.attemptattack(player.attackpower){
            msglbl.text = "attacked by enemy for \(player.attackpower)Hp"
            enemylbl.text = "\(enemy.hp) HP"
            
        }else{
            msglbl.text = "attack Failed"
        }
        
        if !player.isAlive {
            playerlbl.text = ""
            msglbl.text = "Killed player enemy won hahahahaha"
            playerimg.hidden = true
        }
    }
    
    
    
    
    @IBAction func onpressenemybtn(sender: AnyObject) {
        
        if player.attemptattack(enemy.attackpower){
            msglbl.text = "attacked by player for \(enemy.attackpower)Hp"
            playerlbl.text = "\(player.hp) HP"
            
        }else{
            msglbl.text = "attack Failed"
        }
        
        if !enemy.isAlive {
            enemylbl.text = ""
            msglbl.text = "Killed enemy, player won hahhahaha"
            enemyimg.hidden = true
        }
    }
    
    
}

