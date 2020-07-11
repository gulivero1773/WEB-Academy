//
//  ViewController.swift
//  Home work Block 2
//
//  Created by Mykola Buhaiov on 11.07.2020.
//  Copyright © 2020 Mykola Buhaiov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        task0()
                task1()
        task2()
        task3(number: 34567810)
    }
//    func task0() {
//        var prise: Double = 24
//        let fromDate = 1826
//        let toDate = 2020
//        let percent = 0.06
//        let date = toDate - fromDate
//        for _ in 0...date {
//            prise = prise * percent
//            print(prise)
//        }
//    }
    
    func task1() {
        let stupendia = 700
        var sell: Double = 1000
        let percent: Double = 0.03
        let mounse = 10
        var fullBank = stupendia * mounse
        for _ in 0...10 {
            sell += sell * percent
            fullBank -= Int(sell)
            print(Int(fullBank))
        }
    }
    
    func task2() {
        var bank: Double = 2400
        let stupendia: Double = 700
        var sell: Double = 1000
        let percent: Double = 0.03
        while bank > 0 {
            print("\(Int(bank)) осталось у студента денег")
            bank += stupendia - sell
            sell += percent
        }
    }
    
    
    func task3(number: Int) {
        let string = String(number)
        var newValue = ""
        for char in string {
            newValue.insert(char, at: newValue.startIndex)
        }
        print("Число на оборот \(newValue)")
    }
    
}

