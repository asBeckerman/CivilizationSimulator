//
//  Building.swift
//  CivilizationSimulator
//
//  Created by Alex Beckerman 2019 on 5/16/19.
//  Copyright © 2019 Alex Beckerman 2019. All rights reserved.
//

import Foundation



class Building: NSObject, NSCoding {
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
        let quantity = aDecoder.decodeInteger(forKey:"quantity")
        let price = aDecoder.decodeInteger(forKey:"price")
        let level = aDecoder.decodeInteger(forKey:"level")
        
        self.init(type: type, quantity: quantity, price: price, level: level)
    }
    
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(type, forKey:"type")
        aCoder.encode(price, forKey: "price")
        aCoder.encode(quantity, forKey: "quantity")
        aCoder.encode(level, forKey: "level")
    }
    
    func generate(resource: Resource)
    {
        
    }
    
    
    
    
}
