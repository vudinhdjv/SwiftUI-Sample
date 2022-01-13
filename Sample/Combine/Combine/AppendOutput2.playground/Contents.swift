import UIKit
import Combine

var subscriptions = Set<AnyCancellable>()

let publisher = PassthroughSubject<Int, Never>()
publisher
    .append(3, 4)
    .append(5)
    .sink(receiveValue: { print($0) })
    .store(in: &subscriptions)

publisher.send(1)
publisher.send(2)
publisher.send(completion: .finished)
