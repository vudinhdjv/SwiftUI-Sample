import UIKit
import Combine

var subscriptions = Set<AnyCancellable>()

let numbers = (1...10).publisher

numbers.filter { $0.isMultiple(of: 3)}
.sink { n in
    print("\(n) is a multiple of 3!")
}.store(in: &subscriptions)
