//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Vinicius Silva on 15/11/2017.
//  Copyright © 2017 Vinicius Silva. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var nameField: UITextField?
    @IBOutlet var happinessField: UITextField?
    
    var mealDelegate : MealDelegate?
    
    var items:Array<Item> = [Item(name:"Cacau", calories: 49),
                 Item(name: "Manteiga", calories: 87),
                 Item(name: "Bolacha", calories: 90),
                 Item(name: "Tomate", calories: 20),
                 Item(name: "Pão", calories: 68),
                 Item(name: "Banana", calories: 36),
                 
    ];
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let rowIndex: Int = indexPath.row
        let item: Item = items[rowIndex]
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: nil)
        cell.textLabel?.text = item.name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        tableView.allowsSelection = true
        let cell = tableView.cellForRow(at: indexPath)
        cell?.tintColor = UIColor.red
        cell?.accessoryType = UITableViewCellAccessoryType.checkmark
        
    }

    
    @IBAction func add(){
        if(nameField == nil || happinessField == nil){
           return
        }
        
        let name:String = nameField!.text!
        if let happiness: Int = Int(happinessField!.text!) {
            let meal:Meal = Meal(name: name, happiness: happiness)
            
            print(meal.name, meal.happiness)
            
            if let mealsTableView = mealDelegate{
                mealsTableView.addMeal(meal)
            }
            
            if let navigation = navigationController {
                navigation.popViewController(animated: true)
            }
        }
    }
}

