import UIKit
import Combine

var subscriptions = Set<AnyCancellable>()

let numbers = (1...10).publisher
  
  numbers
    .prefix(2)
    .sink(receiveCompletion: { print("Completed with: \($0)") },
          receiveValue: { print($0) })
    .store(in: &subscriptions)
