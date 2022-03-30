import Combine

class User {
    @Published var name: String
    @Published var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let user = User(name: "Thanh", age: 18)

user.$name.sink {
    print($0)
}

user.name = "Dat"
