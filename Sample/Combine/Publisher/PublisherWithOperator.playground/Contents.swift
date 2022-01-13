import UIKit

let pub1 = (1...10).publisher
let pub2 = pub1.map { value -> String in
    return "\(value)"
}

pub2.sink { value in
    print(value)
}

print("===================")

pub1
    .reduce(0, +)
    .sink { value in
        print(value)
    }

print("===================")

pub2.reduce("", +)
    .sink { value in
        print(value)
    }
