import UIKit
import Combine

var subscriptions = Set<AnyCancellable>()

let publisher = ["A", "B", "C"].publisher
publisher
    .print("publisher")
    .first()
    .sink(receiveValue: { print("First value is \($0)") })
    .store(in: &subscriptions)
