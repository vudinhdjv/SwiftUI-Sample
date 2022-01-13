import UIKit
import Combine

var subscriptions = Set<AnyCancellable>()

struct Dog {
    var name: String
    var age: Int
}

let publisher = [Dog(name: "MiMi", age: 3),
                 Dog(name: "MiLy", age: 2),
                 Dog(name: "PoChi", age: 1),
                 Dog(name: "ChiPu", age: 3)].publisher
publisher
  .map(\.name)
  .sink(receiveValue: { print($0) })
  .store(in: &subscriptions)


//let formatter = NumberFormatter()
//
//formatter.numberStyle = .spellOut
//[22, 7, 1989].publisher
//    .map{ formatter.string(for: NSNumber(integerLiteral: $0)) ?? "" }
//    .sink {
//        print($0)
//    }
//    .store(in: &subscriptions)
