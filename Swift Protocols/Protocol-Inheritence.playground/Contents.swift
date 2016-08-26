protocol AnimalType {
    var numberOfLegs: Int { get }
}

protocol PetType: AnimalType {
    var numberOfLegs: Int { get }
    var cuddlyName: String { get }
}

struct Dog: PetType {
    var numberOfLegs = 4
    var cuddlyName: String
}