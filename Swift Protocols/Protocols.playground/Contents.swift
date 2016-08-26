import Foundation

protocol FullyNameable {
    var fullName: String { get }
}

struct User: FullyNameable {
    var fullName: String
}

let user = User(fullName: "Tuba Abbasi")

struct Friend: FullyNameable {
    let firstName: String
    let middleName: String
    let lastName: String
    
    var fullName: String {
        return "\(firstName) \(middleName) \(lastName)"
    }
}

let friend = Friend(firstName: "Tuba", middleName: "Salahuddin", lastName: "Abbasi")
friend.fullName

protocol UserType {
    var name: String { get }
    var age: Int { get set }
}

struct Person: UserType {
    var name: String
    var age: Int
}

let somePerson = Person(name: "Tuba", age: 22)


/*=============== Code Challenge | Protocols With Methods ===================*/



// Declare protocol here
protocol ColorSwitchable {
    func switchColor(color: Color)
}


enum LightState {
    case On, Off
}

enum Color {
    case RGB(Double, Double, Double, Double)
    case HSB(Double, Double, Double, Double)
}

class WifiLamp: ColorSwitchable {
    let state: LightState
    var color: Color
    
    init() {
        self.state = .On
        self.color = .RGB(0,0,0,0)
    }
    
    func switchColor(color: Color) {
        self.color = color
    }
}

