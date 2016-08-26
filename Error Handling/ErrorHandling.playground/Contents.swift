/*
 In the editor, you have a struct named Parser whose job is to deconstruct information from the web. The incoming data can be nil, keys may not exist, and values might be nil as well.
 In this task, complete the body of the parse function. If the data is nil, throw the EmptyDictionary error. If the key "someKey" doesn't exist throw the InvalidKey error.
 Hint: To get a list of keys in a dictionary you can use the keys property which returns an array. Use the contains method on it to check if the value exists in the array
 */

enum ParserError: ErrorType {
    case EmptyDictionary
    case InvalidKey
}

struct Parser {
    var data: [String : String?]?
    
    func parse() throws {
        guard let values = data?.values else {
            throw ParserError.EmptyDictionary
        }
        
        if let keys = data?.keys {
            guard keys.contains("someKey") else {
                throw ParserError.InvalidKey
            }
        }
    }
}

/*
 Now that you have good error handling code, let's call the parse method. Remember that since this is a throwing function, you will need to use a do catch block. For this task, just use a generic catch block rather than pattern matching on specific errors.
 In the catch clause, simply log an error message of your choosing.
 */
let data = Parser(data: ["someKey": nil])

do {
    let parsedData = try data.parse()
} catch ParserError.EmptyDictionary {
    print("Empty Dictionary — There are no data values.")
} catch ParserError.InvalidKey {
    print("Invalid Key — This is an invalid key.")
}