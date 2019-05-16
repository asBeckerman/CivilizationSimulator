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
    var player:Player = Player(level: 1,money: 1000)
    
     var timer: Timer!
    
    @IBOutlet weak var textFieldResource: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        retrieveData()
        
    timer = Timer.scheduledTimer(timeInterval: 10, target: self, selector: #selector(repaintS), userInfo: nil, repeats: true)
        
        textFieldResource.text = resourceCheck()
    }
    
    @objc func repaintS()
    {
        print("Minute Passed")
        Resources[0].price = Int.random(in:3..<8)
        Resources[1].price = Int.random(in:3..<8)
        Resources[2].price = Int.random(in:3..<8)
        Resources[3].price = Int.random(in:3..<8)
        
        Resources[4].price = Int.random(in:8..<14)
        Resources[5].price = Int.random(in:8..<14)
        Resources[6].price = Int.random(in:8..<14)
        Resources[7].price = Int.random(in:8..<14)
        
        Resources[8].price = Int.random(in:13..<21)
        Resources[9].price = Int.random(in:13..<21)
        Resources[10].price = Int.random(in:13..<21)
        Resources[11].price = Int.random(in:13..<21)
    
        
    
 
        
        storeData()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
            if segue.identifier == "Market" {
                let controller = segue.destination as! MarketViewController
                controller.Reso = Resources
                controller.player = player
            } else if segue.identifier == "CityHall" {
                let controller = segue.destination as! CityHallViewController
                
            }else if segue.identifier == "Upgrades" {
                let controller = segue.destination as! UpgradesViewController}
        
        
    }
    
    func storeData()
    {
        var userDefaults = UserDefaults.standard
        
        let encodedData: Data = NSKeyedArchiver.archivedData(withRootObject: Resources)
        
        userDefaults.set(encodedData, forKey:"resources")
    }
    
    func retrieveData()
    {
        var userDefaults = UserDefaults.standard
        
        if let decoded = userDefaults.object(forKey: "resources") as? NSData {
            Resources = NSKeyedUnarchiver.unarchiveObject(with: decoded as Data) as! [Resource]
            
        }
           
        }
    
    func resourceCheck()->String{
       var rString = ""
        for r in Resources {
            if( r.quantity>0){
                rString += "\(r.type): \(r.quantity)\n"
            }
        }
        return rString
    }
    

}

