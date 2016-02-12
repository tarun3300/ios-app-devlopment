//
//  ViewController.swift
//  tap-zap
//
//  Created by TARUN GUDELA on 2/2/16.
//  Copyright © 2016 TARUN GUDELA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var maxtaps = 0
    var currenttaps = 0

    //@outlets of the APP
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var playbtn: UIButton!
    @IBOutlet weak var coinbutton: UIButton!
    @IBOutlet weak var numberofhits: UITextField!
    @IBOutlet weak var numberoftaps: UILabel!
    
    @IBAction func onCoinTapped(sender: UIButton!) {
        currenttaps++
        updateTapsLbl()
        
        if isGameOver() {
            restartGame()
        }
    }
    
    @IBAction func onplaybutton(sender: UIButton!){
        if numberofhits.text != nil && numberofhits.text != "" {
            
            logo.hidden = true
            numberofhits.hidden = true
            playbtn.hidden = true
            coinbutton.hidden = false
            numberoftaps.hidden = false
            
            maxtaps = Int(numberofhits.text!)!
            currenttaps = 0
           // numberoftaps.text = "\(currenttaps)Taps"
           updateTapsLbl()
        }
    }
    
    func restartGame() {
        maxtaps = 0
        numberofhits.text = ""
        
        logo.hidden = false
        playbtn.hidden = false
        numberofhits.hidden = false
        
        coinbutton.hidden = true
        numberoftaps.hidden = true
        
    }
    
    func isGameOver() -> Bool {
        if currenttaps >= maxtaps {
            return true
        } else {
            return false
        }
    }
    
    func updateTapsLbl() {
        numberoftaps.text = "\(currenttaps) Taps"
    }
  
}

