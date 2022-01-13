import UIKit
import Combine

var subscriptions = Set<AnyCancellable>()

let publisher = [1].publisher
  publisher
    .append(2, 3)
    .append(4)
    .sink(receiveValue: { print($0) })
    .store(in: &subscriptions)
