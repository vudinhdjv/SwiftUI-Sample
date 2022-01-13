import UIKit
import Combine

var subscriptions = Set<AnyCancellable>()
let numbers = PassthroughSubject<Int, Never>()
numbers
  .last(where: { $0 % 2 == 0 })
  .sink(receiveCompletion: { print("Completed with: \($0)") },
        receiveValue: { print($0) })
  .store(in: &subscriptions)

numbers.send(1)
numbers.send(2)
numbers.send(3)
numbers.send(4)
numbers.send(5)
numbers.send(completion: .finished)
