import UIKit
import Combine

var subscriptions = Set<AnyCancellable>()

let publisher = ["A", "B", "C"].publisher
publisher
    .print("publisher")
    .output(at: 1)
    .sink(receiveValue: { print("Value at index 1 is \($0)") })
    .store(in: &subscriptions)
