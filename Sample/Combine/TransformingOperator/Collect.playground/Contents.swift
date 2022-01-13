import UIKit
import Combine

var subscriptions = Set<AnyCancellable>()

let publisher = (1...99).publisher

publisher
    .collect(3)
    .sink { complete in
        print(complete)
    } receiveValue: { value in
        print(value)
    }
    .store(in: &subscriptions)

