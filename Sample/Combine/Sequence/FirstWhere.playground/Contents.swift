import UIKit
import Combine

var subscriptions = Set<AnyCancellable>()

let publisher = ["J", "O", "H", "N"].publisher
publisher
    .print("publisher")
    .first(where: { "Hello World".contains($0) })
    .sink(receiveValue: { print("First match is \($0)") })
    .store(in: &subscriptions)
