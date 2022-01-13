import UIKit
import Combine

var subscriptions = Set<AnyCancellable>()

let publisher = ["A", "B", "C"].publisher
publisher
    .print("publisher")
    .count()
    .sink(receiveValue: { print("I have \($0) items") })
    .store(in: &subscriptions)
