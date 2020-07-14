//
//  CoffetDrink.swift
//  Coffe
//
//  Created by Mykola Buhaiov on 12.07.2020.
//  Copyright © 2020 Mykola Buhaiov. All rights reserved.
//

import Foundation

final class CoffeDrink {
    var name: String
    var water: Int
    var coffe: Int
    var syrop: Syrop?
    
    var description: String {  "Hot coffe - '\(name)'" }
    
    init(name: String, water: Int, coffe: Int, syrop: Syrop?) {
        self.name = name
        self.water = water
        self.coffe = coffe
        self.syrop = syrop
    }
}

enum CofeName {
    case espresso, chokolateLatte
}
