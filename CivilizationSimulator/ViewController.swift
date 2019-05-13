//
//  ViewController.swift
//  CivilizationSimulator
//
//  Created by Alex Beckerman and Alan Tokarsky 2019 on 5/9/19.
//  Copyright © 2019 Alex Beckerman 2019. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
     var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    timer = Timer.scheduledTimer(timeInterval: 10, target: self, selector: #selector(repaintS), userInfo: nil, repeats: true)
        
        
    }
    
    @objc func repaintS()
    {
        print("Minute Passed")
        let vc = MarketViewController()
        print(vc.marketState)
    }


}

