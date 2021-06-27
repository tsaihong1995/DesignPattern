import UIKit

// MARK: - Abstract Class
protocol Milk {
    func drink() -> Milk
}

class ChocolateMilk: Milk {
    func drink() -> Milk {
        print("Drink Chocolate Milk.")
        return self
    }
}

class BananaMilk: Milk {
    func drink() -> Milk {
        print("Drink Banana Milk.")
        return self
    }
}

class MangoMilk: Milk {
    func drink() -> Milk {
        print("Drink Mango Milk.")
        return self
    }
}


// MARK: - Abstract Class
protocol SoftDrink {
    func drink() -> SoftDrink
}

// MARK: - Concrete Class
class CocaCola: SoftDrink {
    func drink() -> SoftDrink {
        print("Drink CocaCola")
        return self
    }
}

// MARK: - Concrete Class
class Sprite: SoftDrink {
    func drink() -> SoftDrink {
        print("drink Sprite")
        return self
    }
}

// MARK: - Concrete Class
class GingerAle: SoftDrink {
    func drink() -> SoftDrink {
        print("Drink Ginger Ale")
        return self
    }
}

protocol Factory{
    func produceSoftDrink() -> SoftDrink
    func produceMilk() -> Milk
}

class RetailStoreA: Factory {
    func produceSoftDrink() -> SoftDrink {
        print("Retail Store A produce the SoftDrink")
        return Sprite()
    }
    
    func produceMilk() -> Milk {
        return ChocolateMilk()
    }
    
}

let myRetailStore = RetailStoreA()

let customersSoftDrink = myRetailStore.produceSoftDrink()






