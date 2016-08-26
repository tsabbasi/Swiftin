// Raw values

enum Coin: Double {
    case Penny = 0.01
    case Nickel = 0.05
    case Dime = 0.1
    case Quarter = 0.25
}

let coins: [Coin] = [.Penny, .Nickel, .Dime, .Dime, .Quarter, .Quarter, .Quarter]

func totalValue(coins: [Coin]) -> Double {
    var total: Double = 0
    for coin in coins {
        total += coin.rawValue
    }
    return total
}

/*============= BEFORE RAW VALUE ADDED ================*/

//func totalValue(coins: [Coin]) -> Double {
//    var total: Double = 0
//    for coin in coins {
//        switch coin {
//        case .Penny: total += 0.01
//        case .Nickel: total += 0.05
//        case .Dime: total += 0.1
//        case .Quarter: total += 0.25
//        }
//    }
//    return total
//}

totalValue(coins)


/*============= ENUMS WITH RAW VALUES ================*/

enum HTTPMethod: String {
    case POST, GET, PUT, DELETE
}

HTTPMethod.GET.rawValue

enum HTTPStatusCodes: Int {
    case Continue = 100
    case Success = 200
    case Unauthorized = 401
    case Forbidden = 403
    case NotFound = 404
}

let statusCode = 200

if let httpCode = HTTPStatusCodes(rawValue: statusCode) {
    print(httpCode)
}



/*============= Code Challenge | Compass ================*/

/*
 Let's get in some practice creating enums with raw values. Declare an enum named Compass with a raw value of type Int.
 
 Give the enum 4 members: North, South, East and West and assign them default raw values.
 
 Assign the enum value South of enum Compass to a constant named direction, by using a raw value with Compass' initializer method.
 */

enum Compass: Int {
    case North = 1
    case South
    case East
    case West
}


let direction = Compass(rawValue: 2)



/*============= Optional Chaining ================*/


class Address {
    var streetName: String?
    var buildingNumber: String?
    var appartmentNumber: String?
}

class Residence {
    var address: Address?
}

class Person {
    var residence: Residence?
}


let susan = Person()

let address = Address()
address.streetName = "1234 Something Drive"
address.buildingNumber = "Building 10"
address.appartmentNumber = "204"

let residence = Residence()
residence.address = address

susan.residence = residence

//  Use Optional Chaining and Optional Binding to get susan's appartment number

if let appartmentNumber = susan.residence?.address?.appartmentNumber {
    print(appartmentNumber)
}


/*============= Nil Coalescing Operator ================*/

let firstName: String? = "Tuba"
let userName = "tsabbasi"

var displayName: String

if firstName != nil {
    displayName = firstName!
} else {
    displayName = userName
}

// ternary conditional operator

displayName = firstName != nil ? firstName! : userName

// Nil Coalescing Operator

displayName = firstName ?? userName





