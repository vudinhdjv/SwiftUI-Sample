import UIKit
import Combine

var subscriptions = Set<AnyCancellable>()

let publisher = [1, -50, 246, 0].publisher
publisher
    .print("publisher")
    .min()
    .sink(receiveValue: { print("Lowest value is \($0)") })
    .store(in: &subscriptions)
