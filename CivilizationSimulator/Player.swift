//
//  Player.swift
//  CivilizationSimulator
//
//  Created by Alan Tokarsky 2019 on 5/15/19.
//  Copyright © 2019 Alex Beckerman 2019. All rights reserved.
//

import Foundation
class Player: NSObject, NSCoding {
    func encode(with aCoder: NSCoder) {
        <#code#>
    }
    
    required init?(coder aDecoder: NSCoder) {
        <#code#>
    }
    
    var level: Int
    var money:Int

    
    
    init(level:Int, money:Int)
    {
        self.level = level
        self.money = money
    }
        
}
