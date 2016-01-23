//
//  ViewController.swift
//  app1
//
//  Created by TARUN GUDELA on 1/23/16.
//  Copyright © 2016 TARUN GUDELA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var imag1: UIImageView!
    @IBOutlet weak var firstbutton: UIButton!
    @IBOutlet weak var secondbutton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func img1(sender: AnyObject) {
        firstbutton.hidden = true
        secondbutton.hidden = false
        imag1.hidden = true
        img2.hidden = false
        
        
    }

    @IBAction func img2(sender: AnyObject) {
        firstbutton.hidden = false
        secondbutton.hidden = true
        imag1.hidden = false
        img2.hidden = true
    }

}

