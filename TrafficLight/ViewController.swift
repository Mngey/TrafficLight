//
//  ViewController.swift
//  TrafficLight
//
//  Created by a.a.mitrofanova on 20/08/2020.
//  Copyright © 2020 mngey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var isOn = 0
  
    @IBOutlet weak var red: UIView!
    @IBOutlet weak var orange: UIView!
    @IBOutlet weak var green: UIView!
   
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        red.layer.cornerRadius = 50
        orange.layer.cornerRadius = 50
        green.layer.cornerRadius = 50
        red.alpha = 0.5
        orange.alpha = 0.5
        green.alpha = 0.5
    }

    @IBAction func startPushed(_ sender: Any) {
        if isOn == 0 {
            //self.isOn = false
            self.startButton.setTitle("NEXT", for: .normal)
            orange.alpha = 0.5
            green.alpha = 0.5
            red.alpha = 1
            isOn += 1
        }else if isOn == 1{
            //self.isOn = true
            self.startButton.setTitle("NEXT", for: .normal)
            red.alpha = 0.5
                   orange.alpha = 1
                   green.alpha = 0.5
            isOn += 1
        } else if isOn == 2 {
            red.alpha = 0.5
            orange.alpha = 0.5
            green.alpha = 1
            isOn = 0
        }
        }
    }
    


