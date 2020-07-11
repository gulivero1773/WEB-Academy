//
//  ViewController.swift
//  Home work Bloc 1
//
//  Created by Mykola Buhaiov on 11.07.2020.
//  Copyright © 2020 Mykola Buhaiov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        task0(firstNumber: 1, secondNumber: 2)
        task1(number: 5)
        task2(number: 4)
        task3(number: 10)
        task4(number: 5)
    }
    
    func task0(firstNumber: Double, secondNumber: Double) {
        if firstNumber < secondNumber {
            print("\(firstNumber) biger than \(secondNumber)")
        } else if firstNumber > secondNumber {
            print("\(secondNumber) biger than \(firstNumber)")
        } else if firstNumber == secondNumber {
            print("\(secondNumber) = \(firstNumber)")
        }
    }
    
    func task1(number: Int) {
        let kvadrat = number * number
        let kub = number * number * number
        print("\(kvadrat), \(kub)")
    }
    
    func task2(number: Int) {
        var x = number
        while x >= 0 {
            print("\(x) ")
            x -= 1;
        }
        while x <= 0 {
            print("\(x)")
            x += 1
        }
    }
    
    func task3(number: Int) {
        var counter = 0
        for value in 1...number {
            print(value)
            if number % value == 0 {
                counter += 1
            }
        }
    }
    
    func task4(number: Int) {
        var numOfDiv: Int = 0
        var check = 0
        for i in 1...number {
            if number % i == 0 {
                numOfDiv += 1
                if number == i {
                    check += i
                }
            }
        }
        if check == number {
            print("Yes \n")
        } else {
            print("No \n")
        }
    }
}

