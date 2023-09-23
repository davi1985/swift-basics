// mutable values
var message = "Hello World!"
message = "other value here"

// let (constant)
let name = "Davi Silva"
let pi = 3.14

// Data Types
let age = 38
let double: Double = 3.14
let string = "Davi Silva"
let isDriver = true

let number:Int = 2
let piValue:Double = 3.14
let myName:String = "Davi Silva"
let isMarried: Bool = true

// Casting
let intNumber = 10
let intToString = String(intNumber)
let stringNumber = "10"
let stringToNumber = Int(stringNumber)

// Logic operators and Increment
let result1 = 2 > 3
let result2 = 2 < 3
let result3 = 2 <= 3
let result4 = 2 >= 3

let x = 10
let y = 20

let res1 = x == y
let res2 = x != y

let firstName = "Davi"
let lastName = "Silva"

let isFrontEnd = false
let isDev = !isFrontEnd
let isMobileDev = true

let isDevOrIsMobileDev = isFrontEnd || isDev
let isDevAndIsMobileDev = isDev && isMobileDev

var incrementNumber = 10
incrementNumber += 2

// Conditionals
let isHungry = false
let isThirsty = true

var msg: String

if isHungry {
    msg = "I'm hungry"
} else if isThirsty {
    msg = "I'm thirsty"
} else {
    msg = "I'm good"
}

// Scope
var product: String

let company = "Apple"

if company == "Google" {
    product = "Android"
} else {
    product = "iPhone"
}

// Ternary operator
product = company == "Goolge" ? "Android" : "iPhone"

// Tuplas
let latitude: Double = 23.21

//let cords:(Double,Double) = (23.21, 54.22)

let coords = (lat: 23.21, lng: 54.22)
coords.lat
coords.lng

let camera = (x: 10,y: 20, z: 1)
let (a, b, _) = camera

let user = (name: "Davi", age: 38)
user.name
user.age

// Arrays
var userNames:[String] = []

userNames.append("Davi")

userNames += (["Laura", "Sarah", "Joelma"])

userNames[0]

// range (slice)
let firstThree = Array(userNames[1...3])

// add elements
userNames.append("Safira")

userNames.isEmpty
userNames.count
userNames.contains("Davi")

if let first = userNames.first {
    // true or false
}

// add in index
userNames.insert("Bonny", at: 2)
userNames.remove(at: 2)

let removedLast = userNames.removeLast()

// change element
userNames[0...1] = ["n1", "n2", "n3"]

// swap
userNames.swapAt(3, 4)

// Loops
var count = 1

repeat {
    // print(count)
    count += 1
} while count < 10

//
let range = 0...5
let r = 0..<5

var limit = 5
let otherRange = 0..<limit

var sum = 0
let counter = 10

for i in 1...counter {
    sum += i
}

for _ in 1...counter where counter > 10 {
    //print("Hello")
}

for i in 0..<100 where i % 2 == 0 {
    //print("number: \(i)")
}

// interations
let dollars = [5.1, 5.2, 4.9, 5.32, 5.43, 5.11]
let days = ["01/02", "02/02", "03/02", "04/02", "05/02", "06/02"]

for i in 0..<dollars.count where dollars[i] < 5.0 {
    //print("dolar: \(dollars[i]) in \(days[i])")
}

for day in days {
    //print(day)
}

// break and continue
for i in 0..<dollars.count  {
    if days[i] == "03/02" {
        break
    }
    
   //print("dolar: \(dollars[i]) in \(days[i])")
}

for i in 0..<dollars.count  {
    if days[i] == "03/02" {
        continue
    }
    
   //print("dolar: \(dollars[i]) in \(days[i])")
}

// Dictionary
var products: [String: Int ] = [:]

products["Apple"] = 5
products["Google"] = 16

var newProducts: [Int: String] = [
    1: "Fone de ouvido",
    2: "Macbook",
    3: "iPad",
    4: "iPhone"
]

//print(newProducts[12] ?? "Nenhum valor")

newProducts[2] = "MacMini"
newProducts.isEmpty
newProducts.count
newProducts[2] = nil


for key in newProducts.keys {
    //print(key)
}

for value in newProducts.values {
    //print(value)
}

for (key,value) in newProducts {
    //print("\(key) -  \(value)")
}

// Sets

var newSet: Set<Int> = []
newSet.insert(10)
newSet.insert(3)
newSet.insert(3)

let inserted = newSet.insert(4)
//print(inserted)

if let removed = newSet.remove(4) {
    //print(removed)
}

newSet.removeAll()

// Functions
func megaSenaGenaratorV1() {
    var numbers = 6
    var result: Set<Int> = []

    while numbers > 0 {
        let randomNumber = Int.random(in: 1...60)
        let res = result.insert(randomNumber)
        
        if res.inserted {
            numbers -= 1
            print(result)
        }
    }
}

func megaSenaGenaratorV2(total:Int, range:Int) -> Set<Int> {
    var numbers = total
    var result: Set<Int> = []

    while numbers > 0 {
        let randomNumber = Int.random(in: 1...range)
        let res = result.insert(randomNumber)
        
        if res.inserted {
            numbers -= 1
        }
    }
    
    return result
}

// Optionals
func megaSenaGenaratorWithOptional(total: Int?, range: Int?) -> Set<Int> {
    var numbers = total ?? 6
    var result: Set<Int> = []

    while numbers > 0 {
        if let maxRange = range {
            let randomNumber = Int.random(in: 1...maxRange)
            let res = result.insert(randomNumber)
            
            if res.inserted {
                numbers -= 1
            }
        } else {
            break
        }
    }
    
    return result
}

let resultOptional = megaSenaGenaratorWithOptional(total: nil, range: 40)

//print(resultOptional)

var username: String? = "davi85"
var phone: String? = nil
var password: String = "12345"

enum LoginMethod {
    case byName, byPhoneNumber
}

func login(username: String?, phone: String?, password: String) ->  LoginMethod? {
    if let phone = phone {
        return LoginMethod.byPhoneNumber
    } else if let username = username {
        return LoginMethod.byName
    }
    
    return nil
}


let loginMethod = login(username: nil, phone: "88", password: "nil")

