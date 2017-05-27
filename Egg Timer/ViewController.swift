//
//  ViewController.swift
//  Egg Timer
//
//  Created by Matthew J. Perkins on 5/26/17.
//  Copyright © 2017 Matthew J. Perkins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
     var timer = Timer()
    
    var timeRemaining = 210
    
    @IBOutlet var countdown: UILabel!
  
    @IBAction func pauseButton(_ sender: Any) {
        timer.invalidate()
        countdown.text = String(timeRemaining)
        print(timeRemaining)
    }
    
    @IBAction func playButton(_ sender: Any) {
        
         timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
        
  
       
        print(timeRemaining)
    }
    
    @IBAction func subtractButton(_ sender: Any) {
        
        if timeRemaining >= 10 {
        timeRemaining -= 10
        }
        
        countdown.text = String(timeRemaining)
        
        print(timeRemaining)
    }
    
    @IBAction func resetButton(_ sender: Any) {
        timeRemaining = 210
        
        countdown.text = String(timeRemaining)
        
        print(timeRemaining)
    }
  
    @IBAction func addButton(_ sender: Any) {
        
        if timeRemaining <= 200 {
            timeRemaining += 10}
        
        countdown.text = String(timeRemaining)
        
        print(timeRemaining)
    }
 

    
    func processTimer() {
        
        if timeRemaining > 0 {
            timeRemaining -= 1
            
            countdown.text = String(timeRemaining)
        } else {
            
        timer.invalidate()
        }
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

