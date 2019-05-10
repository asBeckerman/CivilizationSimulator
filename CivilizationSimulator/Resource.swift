//
//  Resource.swift
//  CivilizationSimulator
//
//  Created by Alex Beckerman 2019 on 5/10/19.
//  Copyright © 2019 Alex Beckerman 2019. All rights reserved.
//

import Foundation



class Resource {
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
    
    
    
    
}
