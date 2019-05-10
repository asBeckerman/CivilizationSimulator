//
//  Resource.swift
//  CivilizationSimulator
//
//  Created by Alex Beckerman 2019 on 5/10/19.
//  Copyright © 2019 Alex Beckerman 2019. All rights reserved.
//

import Foundation



class Resource: NSObject, NSCoding {
    var type:String
    var quantity:Int
    var price:Int
    var level:Int
    
    
    init(type:String, quantity:Int, price:Int, level:Int)
    {
    self.type = type
    self.quantity = quantity
    self.price = price
    self.level = level
        
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        let type = aDecoder.decodeObject(forKey:"type") as! String
        let quantity = aDecoder.decodeInteger(forKey:"quantity") as!  Int
        let price = aDecoder.decodeObject(forKey:"price") as! Int
         let level = aDecoder.decodeObject(forKey:"price") as! Int
        
        self.init(type: type, quantity: quantity, price: price, level: level)
    }
    
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(type, forKey:"type")
        aCoder.encode(price, forKey: "price")
        aCoder.encode(quantity, forKey: "quantity")
        aCoder.encode(level, forKey: "level")
    }
    
    
    
    
}
