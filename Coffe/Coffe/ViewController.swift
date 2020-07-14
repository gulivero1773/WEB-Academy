//
//  ViewController.swift
//  Coffe
//
//  Created by Mykola Buhaiov on 12.07.2020.
//  Copyright © 2020 Mykola Buhaiov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let syrop = Syrop(chocolate: 20, vanila: 0, coconut: 10)
        
        let coffeMachine = CoffeMachine(lvlWater: 20, lvlCoffe: 20, lvlMilk: 20, syrop: syrop)
        
        coffeMachine.makeCoffe(cofe: CofeName.espresso)
        coffeMachine.getStatus()
        coffeMachine.addWater(addWater: 100)
        coffeMachine.makeCoffe(cofe: CofeName.chokolateLatte)
        coffeMachine.getStatus()
        
        
    }
}


