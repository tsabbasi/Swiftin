struct Friend {
    let name: String
    let age: String
    let address: String?
}

func createFriend(dict: [String: String]) -> Friend? {
    guard let name = dict["name"], age = dict["age"] else {
        return nil
    }
    
    let address = dict["address"]
    
    return Friend(name: name, age: age, address: address)
}

// Failable Initializer
struct Book {
    let title: String
    let author: String
    let price: String?
    let pubDate: String?
    
    init?(dict: [String: String]) {
        guard let title = dict["title"], author = dict["author"] else {
            return nil
        }
        
        let price = dict["price"]
        
        let pubDate = dict["pubDate"]
        
//        return dict[title: self.title, author: self.author, price: self.price, pubDate: self.pubDate]
        
        self.title = title
        self.author = author
        self.price = price
        self.pubDate = pubDate

    }
    
}


// Passes because Price and Pub Date are Optional
let book = Book(dict: ["title": "Harry Potter", "author": "JK Rowling"])