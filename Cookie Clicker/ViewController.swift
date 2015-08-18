//
//  ViewController.swift
//  Cookie Clicker
//
//  Created by Figure Infinity on 7/29/15.
//  Copyright (c) 2015 Figure Infinity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Variables
    
    var score = 0
    var timer = NSTimer()
    var timerCount = 10

    // Outlets
    
    
    @IBOutlet var scoreLabel: UILabel!
    
    @IBOutlet var timeLabel: UILabel!
    
    @IBOutlet var start: UIButton!
    @IBOutlet var cookie: UIButton!
    // Actions
    
    @IBAction func cookieButton(sender: UIButton) {
        
        scoreLabel.text = "You have " + score.description + " Cookies"
        score++
        
        
    }
    
    @IBAction func startGameButton(sender: UIButton) {
        score = 0
        
        timerCount = 10
        cookie.enabled = true
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("timerupdate"), userInfo: nil, repeats: true)
        
        start.hidden = true
        
        
    }
    
    
    
    func timerupdate()
    {
        if timerCount > 0
        {
        timerCount--
        timeLabel.text = timerCount.description + " seconds left"
        }
        else
        {
            cookie.enabled = false
            start.hidden = false
            timer.invalidate()
            
            
        }
        
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

