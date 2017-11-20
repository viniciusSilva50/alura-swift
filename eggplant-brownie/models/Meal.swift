import Foundation

class Meal {
    var name: String
    var happiness: Int
    var items = Array<Item>()
    
    
    init(name: String, happiness: Int){
        self.name = name
        self.happiness = happiness
    }
    
    func totalCallories() -> Double{
        var total: Double = 0
        
        for item in self.items {
            total += item.callories
        }
        
        return total
    
    }
    
    
    
}
