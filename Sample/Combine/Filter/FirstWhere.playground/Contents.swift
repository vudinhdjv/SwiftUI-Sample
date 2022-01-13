import UIKit
import Combine

var subscriptions = Set<AnyCancellable>()
let numbers = (1...9).publisher
numbers
  .print("numbers")
  .first(where: { $0 % 2 == 0 })
  .sink(receiveCompletion: { print("Completed with: \($0)") },
        receiveValue: { print($0) })
  .store(in: &subscriptions)
