//
//  Player.swift
//  CivilizationSimulator
//
//  Created by Alan Tokarsky 2019 on 5/15/19.
//  Copyright © 2019 Alex Beckerman 2019. All rights reserved.
//

import Foundation
class Player: NSObject, NSCoding {
  
    
    var levelP: Int
    var money:Int

    
    
    init(level:Int, money:Int)
    {
        self.levelP = level
        self.money = money
    }
    
    
    required convenience init?(coder aDecoder: NSCoder) {
      
        let money = aDecoder.decodeObject(forKey:"money") as! Int
        let level = aDecoder.decodeObject(forKey:"levelP") as! Int
        
        self.init(level:level, money:money)
    }
    
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(money, forKey:"price")
        aCoder.encode(levelP, forKey: "levelP")
     
    }
    
        
}
