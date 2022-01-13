import UIKit
import Combine

var subscriptions = Set<AnyCancellable>()

let publisher1 = [3, 4].publisher
let publisher2 = PassthroughSubject<Int, Never>()

publisher1
    .prepend(publisher2)
    .sink(receiveValue: { print($0) })
    .store(in: &subscriptions)
publisher2.send(1)
publisher2.send(2)
//publisher2.send(completion: .finished)
