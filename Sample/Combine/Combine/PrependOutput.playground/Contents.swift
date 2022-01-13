import UIKit
import Combine

var subscriptions = Set<AnyCancellable>()

let publisher = [3, 4].publisher

publisher
    .prepend(1, 2)
    .prepend(-2, -1, 0)
    .sink(receiveValue: { print($0) })
    .store(in: &subscriptions)
