import UIKit
import Combine

var subscriptions = Set<AnyCancellable>()

let publisher = ["A", "B", "C", "D", "E"].publisher
  publisher
    .output(in: 1...3)
    .sink(receiveCompletion: { print($0) },
          receiveValue: { print("Value in range: \($0)") })
    .store(in: &subscriptions)
