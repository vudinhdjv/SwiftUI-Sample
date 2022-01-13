import UIKit
import Combine

var subscriptions = Set<AnyCancellable>()

let pub = (0...5).publisher

pub.scan(0, { $0 + $1 })
    .sink { print("\($0)", terminator: " ") }
    .store(in: &subscriptions)
