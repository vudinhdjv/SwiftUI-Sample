import UIKit
import Combine

var subscriptions = Set<AnyCancellable>()

let publisher = ["Hel", "lo", " ", "Wor", "ld", "!"].publisher
publisher
    .print("publisher")
    .reduce("", +)
    .sink(receiveValue: { print("Reduced into: \($0)") })
    .store(in: &subscriptions)
