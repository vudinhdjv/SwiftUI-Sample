import UIKit
import Combine

var subscriptions = Set<AnyCancellable>()

let numbers = ["a","b","c","e","f","g","h","i","k","l","m","n"].publisher
    numbers
        .dropFirst(8)
        .sink(receiveValue: { print($0) })
        .store(in: &subscriptions)
