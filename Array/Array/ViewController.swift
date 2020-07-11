//
//  ViewController.swift
//  Array
//
//  Created by Mykola Buhaiov on 11.07.2020.
//  Copyright © 2020 Mykola Buhaiov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(task1(otchestvo: "Olegovna"))
        task2(value: "MykolaVictorovich")
        task3(value: "1234567890")
        task4(value: "1694567")
        
    }
    
    func task1(otchestvo: String) -> Bool {
        return otchestvo.hasSuffix("ich") || otchestvo.hasSuffix("na") || otchestvo.hasPrefix("na")
    }
    
    func task2(value: String) {
        print(value)
        var name: String = ""
        var surname = ""
        if let char = value.last { char -> Bool in return char.isUppercase } {
            let replaced = value.replacingOccurrences(of: "\(char)", with: " \(char)")
            let splited = replaced.split(separator: " ")
            name = String(splited.first!)
            surname = String(splited.last!)
        }
        print(name, surname)
    }
    
    func task3(value: String) {
        var newValue = ""
        for char in value {
            newValue.insert(char, at: newValue.startIndex)
        }
        print(newValue)
    }
    
    func task4(value: String) {
        var newVal = ""
        let id = value.count % 3
        var i = 0
        for char in value {
            newVal.append(char)
            i += 1
            if i % 3 == id && i != (value.count) {
                newVal.append(",")
            }
        }
        print(newVal)
    }
}


