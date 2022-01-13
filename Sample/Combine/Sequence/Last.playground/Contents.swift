import UIKit
import Combine

var subscriptions = Set<AnyCancellable>()

let publisher = ["A", "B", "C"].publisher
publisher
    .print("publisher")
    .last()
    .sink(receiveValue: { print("Last value is \($0)") })
    .store(in: &subscriptions)
