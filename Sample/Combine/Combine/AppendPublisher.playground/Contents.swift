import UIKit
import Combine

var subscriptions = Set<AnyCancellable>()

let publisher1 = [1, 2].publisher
let publisher2 = [3, 4].publisher

publisher1
    .append(publisher2)
    .sink(receiveValue: { print($0) })
    .store(in: &subscriptions)
