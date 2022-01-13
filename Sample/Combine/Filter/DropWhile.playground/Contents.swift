import UIKit
import Combine

var subscriptions = Set<AnyCancellable>()

let numbers = (1...10).publisher
numbers
  .drop(while: {
    return $0 % 5 != 0
  })
  .sink(receiveValue: { print($0) })
  .store(in: &subscriptions)
