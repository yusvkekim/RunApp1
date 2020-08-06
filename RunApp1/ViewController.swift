//
//  ViewController.swift
//  RunApp1
//
//  Created by y kimur on 2020/08/05.
//  Copyright © 2020 y kimur. All rights reserved.
//

import UIKit
import UICircularProgressRing

class ViewController: UIViewController {

    
    @IBOutlet weak var timerRing: UICircularTimerRing!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func run(_ sender: Any) {
        
        timerRing.startTimer(to: 10) { (state ) in
            switch state {
            case .finished:
                print("finished")
            case .continued(let time):
                print("continued:\(time)")
            case .paused(let time):
                print("paused:\(time)")
            }
        }
        
    }
    
    @IBAction func stop(_ sender: Any) {
        
        timerRing.pauseTimer()
    }
    
}

