//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Vinicius Silva on 15/11/2017.
//  Copyright © 2017 Vinicius Silva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nameField: UITextField?
    @IBOutlet var happinessField: UITextField?
    
    
    @IBAction func add(){
        

        if(nameField == nil || happinessField == nil){
           return
        }
        
        let name:String = nameField!.text!
        if let happiness: Int = Int(happinessField!.text!) {
            let meal = Meal(name: name, happiness: happiness)
            
            print(meal.name, meal.happiness)
        }
    }
}

