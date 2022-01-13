import UIKit
import Combine

var subscriptions = Set<AnyCancellable>()

let publisher = [5, 6, 7].publisher

publisher
    .prepend([3, 4])
    .prepend(Set(1...2))
    .prepend(stride(from: 6, to: 11, by: 2))
    .sink(receiveValue: { print($0) })
    .store(in: &subscriptions)
