//
//  MealsTableViewController.swift
//  eggplant-brownie
//
//  Created by Vinicius Silva on 10/12/2017.
//  Copyright © 2017 Vinicius Silva. All rights reserved.
//

import UIKit

class MealsTableViewController : UITableViewController, MealDelegate{

    
    var meals:Array<Meal> = [Meal(name: "Chocolate", happiness: 5),
                 Meal(name: "Pave", happiness: 5)]
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "addMeal"){
            let view:ViewController = segue.destination as! ViewController
            view.mealDelegate = self
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let rowIndex: Int = indexPath.row
        let meal:Meal = meals[rowIndex]
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.default , reuseIdentifier: nil)
        cell.textLabel!.text = meal.name
        return cell
    }
    
    func addMeal(_ meal: Meal){
        meals.append(meal)
        tableView.reloadData()
    }
}
