struct Tag {
    let name: String
}

struct Post {
    var title: String
    var author: String
    var tag: Tag
    
    func description() -> String {
        // Calling property from another instance --------V
        return "\(title) by \(author). Filed under \(tag.name)"
    }
}

let firstPost = Post(title: "Harry Potter", author: "J.K. Rowling", tag: Tag(name: "magic"))

let postDescription = firstPost.description()