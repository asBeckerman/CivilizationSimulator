//
//  ViewController.swift
//  CivilizationSimulator
//
//  Created by Alex Beckerman and Alan Tokarsky 2019 on 5/9/19.
//  Copyright © 2019 Alex Beckerman 2019. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var Resources: [Resource] = [Resource.init(type: "Cotton", quantity: 0, price: 5, level: 1),Resource.init(type: "Timber", quantity: 0, price: 5, level: 1),Resource.init(type: "Stone", quantity: 0, price: 5, level: 1),Resource.init(type: "Wheat", quantity: 0, price: 5, level: 1),Resource.init(type: "Cloth", quantity: 0, price: 10, level: 2),Resource.init(type: "Lumber", quantity: 0, price: 10, level: 2),Resource.init(type: "Ore", quantity: 0, price: 10, level: 2),Resource.init(type: "Bread", quantity: 0, price: 10, level: 2),Resource.init(type: "Shirt", quantity: 0, price: 15, level: 3),Resource.init(type: "2x4", quantity: 0, price: 15, level: 3),Resource.init(type: "Copper", quantity: 0, price: 15, level: 3),Resource.init(type: "Animal Food", quantity: 0, price: 15, level: 3)]
    var PlayerMoney: Int = 1000
    
     var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    timer = Timer.scheduledTimer(timeInterval: 10, target: self, selector: #selector(repaintS), userInfo: nil, repeats: true)
        
        
    }
    
    @objc func repaintS()
    {
        print("Minute Passed")
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
            if segue.identifier == "Market" {
                let controller = segue.destination as! MarketViewController
                controller.Reso = Resources
                controller.playerMoney = PlayerMoney
            } else if segue.identifier == "Resources" {
                let controller = segue.destination as! ResourcesViewController
                
            }else if segue.identifier == "CityHall" {
                let controller = segue.destination as! CityHallViewController
                
            }else if segue.identifier == "Upgrades" {
                let controller = segue.destination as! UpgradesViewController}
        
        
    }

}

