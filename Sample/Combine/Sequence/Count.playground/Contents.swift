import UIKit
import Combine

var subscriptions = Set<AnyCancellable>()

let publisher = ["A"].publisher
publisher
    .count()
    .sink(receiveValue: { print($0)})
    .store(in: &subscriptions)
