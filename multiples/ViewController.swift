//
//  ViewController.swift
//  multiples
//
//  Created by TARUN GUDELA on 2/5/16.
//  Copyright © 2016 TARUN GUDELA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var givenmultiple = 0
    var addmultiple = 0
    var max_sum = 500
    
    //outlets

    @IBOutlet weak var addbtn: UIButton!
  
    @IBOutlet weak var multiplelabel: UILabel!
    @IBOutlet weak var multiplebanner: UIImageView!
   
    @IBOutlet weak var addtext: UITextField!

    @IBOutlet weak var playbutton: UIButton!

    @IBOutlet weak var addbanner: UILabel!
    
    
    
  //actionss
    @IBAction func onpressplay(sender: AnyObject) {
        
        
        if addtext.text != nil && addtext.text != ""{
            
        // playing with graphics
        multiplebanner.hidden = true
        addtext.hidden = true
        playbutton.hidden = true
        multiplelabel.hidden = true
        addbanner.hidden = false
        addbtn.hidden = false
        
        givenmultiple = Int(addtext.text!)!
        addmultiple = 0
       
        }
        
    }
    
    
    @IBAction func onpressadd(sender: AnyObject) {
       
        multiplelabel.hidden = false
        addbanner.hidden = true
        addbtn.hidden = false
        

        addmultiple += givenmultiple
        updatemultiplelbl()
        
        if isgameover(){
            restartgame()
        }
        
    }
    
    func restartgame(){
        givenmultiple = 0
        addtext.text = ""
        addtext.hidden = false
        multiplebanner.hidden = false
        playbutton.hidden = false
        addbanner.hidden = true
        addbtn.hidden = true
    }
    
    func isgameover() ->Bool{
        if addmultiple >= max_sum{
            return true
        
        }
        else{
            return false
        }
    }
    
    func updatemultiplelbl(){
        
        multiplelabel.text = "\(addmultiple) + \(givenmultiple) = \(addmultiple + givenmultiple)"
    }
    
    
    
}

