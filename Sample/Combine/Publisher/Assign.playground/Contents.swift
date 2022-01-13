import UIKit

class User {
    var name: String = "" {
        didSet {
            print(name)
        }
    }
}

let user = User()

let publisher = ["Hoa", "Lan", "Mai"].publisher

_ = publisher.assign(to: \.name, on: user)
