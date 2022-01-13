import UIKit
import Combine

var subscriptions = Set<AnyCancellable>()

let publisher = ["A", "F", "Z", "E"].publisher
publisher
    .print("publisher")
    .max()
    .sink(receiveValue: { print("Highest value is \($0)") })
    .store(in: &subscriptions)
