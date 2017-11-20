//: Playground - noun: a place where people can play

import UIKit

/*
 Variavies e tipos
 Craiação de função e suas chamadas
 */

var name = "Vinicius"
var project = "Eggaplant brownie"
let fullName = "\(name) da Silva"

let foodName = "chocolate"
let calories:Double = 120.50
let happines:Int = 5
let foodIsACandy:Bool = true

print(name, project)

func hello(){
    print("Helloooooo")
}

hello()

func foodCalories(name: String, calories:Double){
    print("\(name) has \(calories) calories")
}

foodCalories(name: foodName, calories: calories)

/*
 Arrays e tipos de laços
 */
print()

var caloriesArray:Array<Double> = [10, 55.8, 99.1, 44]
print(caloriesArray)

print()


for i in 0...3{
    print("for por valor explicito do index ", caloriesArray[i])
}

print()

for item in caloriesArray{
    print("for com a variavel ", item)
}

func allCalories(calories: Array<Double>) -> Double{
    var total:Double = 0
    for calorie in calories {
        total += calorie
    }
    return total
}

var total: Double = allCalories(calories: caloriesArray)
print()
print("Total = ", total)

func calculaSoma(valores:Array<Double>) -> Double {
    var soma: Double = 0
    for valor in valores {
        soma += valor
    }
    return soma
}

/*
Classes, instâncias, obejtos e propriedades
 */


class Car {
    
    var name: String
    var happiness: Int
    
    init(name: String, happiness: Int){
        self.name = name
        self.happiness = happiness
    }
}

var car:Car = Car(name: "Porsche 911", happiness: 10)


// ? No final da variável significa que ela pode ser nula, sendo uma variável opcional
class Meal {
    var happiness: Int?
    var name:String?
}

let meal = Meal()
meal.name = "Chocolate"
meal.happiness = 5

print(meal.name!)

// Este exemplo retorna um erro pois a variável é opcional
// Por ser opcional ela por der nula, então por segurança o swift obriga você a declarar que esta variável está ok
// print(meal.name.uppercased())
// print(meal.name!.uppercased()) desta forma estamos deixando explicito que confiamos que a variável esta preenxida com algum valor

print(meal.name!.uppercased())

// Se a variável name no objeto meal não estiver nula o valor da mesma sera atribuido a mealName, dando continuidade a execução dentro do if
// A variável mealName somente existe no contexto do if não sendo possível manipulá la após o if
if let mealName = meal.name {
    print(mealName.uppercased())
}

/*
 Uma variável opcional com ? siginifca que ela pode ser nula e quando for preciso acessar o valor 
 da mesma o compilador vai retornal nil
 Mas caso a variável opcional for declarada com ! e ela seja acessada, causara um fatal error
 */

var nameCar: String!
var nameMoto: String?


var numero = Int("teste")


var strNumber = Int("teste")

if let numeroLet = strNumber{
    print("Numero let apos o parser correto ",numeroLet)
} else {
    print("Numero let apos o parser errrado ")
}

//************************************************************

class MealTwo {
    var name: String
    var happiness: Int
    var items = Array<Item>()
    
    init(name: String, happiness: Int){
        self.name = name
        self.happiness = happiness
    }
    
    
    func totalCallories() -> Double{
        var total:Double = 0
        
        for item in self.items {
           total += item.calories
        }
        
        return total
    }

}

class Item {
    var name: String
    var calories: Double
    
    init(name: String, calories: Double){
        self.name = name
        self.calories = calories
    }
    
    
}


var itemOne = Item(name: "brownie", calories: 115)
var itemTwo = Item(name: "cream", calories: 45.5)


var mealTwo: MealTwo = MealTwo(name: "Dream", happiness: 10)

mealTwo.items.append(itemOne)
mealTwo.items.append(itemTwo)

var totalCallories = mealTwo.totalCallories()

print("Quantidade total de calorias = ", totalCallories)













