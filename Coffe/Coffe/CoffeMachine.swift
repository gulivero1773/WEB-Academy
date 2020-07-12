//
//  CoffeMachine.swift
//  Coffe
//
//  Created by Mykola Buhaiov on 12.07.2020.
//  Copyright © 2020 Mykola Buhaiov. All rights reserved.
//

import Foundation

final class CoffeMachine {
    private var lvlWater: Int
    private var lvlCoffe: Int
    private var lvlMilk: Int
    private var syrop: Syrop
    
    init(lvlWater: Int = 100, lvlCoffe: Int = 100, lvlMilk: Int = 100, syrop: Syrop) {
        self.lvlWater = lvlWater
        self.lvlCoffe = lvlCoffe
        self.lvlMilk = lvlMilk
        self.syrop = syrop
    }
    
    func getStatus () {
        print(
            "LEVEL WATER - \(lvlWater) ml;",
            "LEVEL COFFE - \(lvlCoffe) gr;",
            "LEVEL SUROP - ",
            "CHOCOLATE - \(String(describing: syrop.chocolate ?? 0)) ml;",
            "VANILA - \(String(describing: syrop.vanila ?? 0)) ml;",
            "COCONUT - \(String(describing: syrop.coconut ?? 0)) ml. \n")
    }
    
    func addWater(addWater water: Int) {
        if water > 0 {
            self.lvlWater += water
        }
        print("Level water in tank - \(self.lvlWater)")
    }
    
    func addCoffe(addCoffe coffe: Int) {
        if coffe > 0 {
            self.lvlCoffe += coffe
        }
        print("Level coffe in tank - \(self.lvlCoffe)")
    }
    
    func addMilk(addMilk milk: Int) {
        if milk > 0 {
            self.lvlMilk += milk
        }
        print("Level milk in tank - \(self.lvlMilk)")
    }
    
    func addSurop(addSurop surop: Syrop) {
        if let chocolate = surop.chocolate {
            chocolate > 0 ? self.syrop.chocolate = (self.syrop.chocolate ?? 0) + chocolate : nil
            print("Level surop chocolate in tank - \(self.syrop.chocolate!)")
        }
        if let vanila = surop.vanila {
            vanila > 0 ? self.syrop.vanila = (self.syrop.vanila ?? 0) + vanila : nil
            print("Level surop vanila in tank - \(self.syrop.vanila!)")
        }
        
        if let coconut = surop.coconut {
            coconut > 0 ? self.syrop.coconut = (self.syrop.coconut ?? 0) + coconut : nil
            print("Level surop coconut in tank - \(self.syrop.coconut!)")
        }
    }
    
    func makeEspresso (coffeMachine: CoffeMachine) -> String {
        let name = "Espresso"
        let watter = 20
        let coffe = 15
        let syrop: Syrop? = nil
        
        guard coffeMachine.lvlWater > watter else {
            print("Error! Low level WATER in coffe machine! ADD WATER!")
            return  ""
            
        }
        guard coffeMachine.lvlCoffe > coffe else {
            print("Error! Low level COFFE in coffe machine! ADD COFFE!")
            return ""
        }
        
        coffeMachine.lvlWater -= watter
        coffeMachine.lvlCoffe -= coffe
        
        let espresso = CoffeDrink(name: name,
                                  water: watter,
                                  coffe: coffe,
                                  syrop: syrop)
        print("Coffe '\(espresso.name)' is reade")
        return ""
    }
    
    func makeChockolateLatte(coffeMachine: CoffeMachine) -> String {
        let name = "Chockolate Latte"
        let watter = 30
        let coffe = 9
        let surop: Syrop = .init(chocolate: 10, vanila: 0, coconut: 0)
        
        guard coffeMachine.lvlWater > watter else {
            print("Error! Low level of WATER in coffe machine! ADD WATER to machine!")
            return ""
        }
        
        guard coffeMachine.lvlCoffe > coffe else {
            print("Error! Low level COFFE in coffe machine! ADD COFFE to machine!")
            return ""
        }
        
        guard coffeMachine.syrop.chocolate! > surop.chocolate! else {
            print("Error! Low level CHOCOLATE SUROP in coffe machine! ADD CHOCOLATE SUROP!")
            return ""
        }
        
        coffeMachine.lvlWater -= watter
        coffeMachine.lvlCoffe -= coffe
        coffeMachine.syrop.chocolate! -= syrop.chocolate!
        
        let chockolateLatte = CoffeDrink(name: name,
                                         water: watter,
                                         coffe: coffe,
                                         syrop: syrop)
        
        print("Coffe '\(chockolateLatte.name)' is reade")
        return ""
    }
}
