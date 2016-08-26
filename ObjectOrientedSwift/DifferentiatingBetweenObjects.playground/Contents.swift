struct User {
    
    var fullName: String
    var email: String
    var age: Int
    
}

var someUser = User(fullName: "Tuba Abbasi", email: "tsabbasi@abc.com", age: 22)

var anotherUser =  someUser

someUser.email = "tuba.s.abbasi@abc.com"

// Note that anotherUser still holds the old information --> This is a Value (copy made and stored in a new place in memory)
someUser.email
anotherUser.email


class Person {
    
    var fullName: String
    var email: String
    var age: Int
    
    init(name: String, email: String, age: Int) {
        
        self.fullName = name
        self.email = email
        self.age = age
        
    }
}

var somePerson = Person(name: "Tim Cook", email: "tim.cook@apple.com", age: 54)

var anotherPerson = somePerson

somePerson.email = "tcook@apple.com"

// Note that another user is being updated --> This is a reference type (just a reference — referencing to the same place in memory)
somePerson.email
anotherPerson.email