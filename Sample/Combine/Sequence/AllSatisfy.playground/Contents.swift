import UIKit
import Combine

var subscriptions = Set<AnyCancellable>()

// 1
let publisher = stride(from: 0, to: 5, by: 2).publisher
// 2
publisher
    .print("publisher")
    .allSatisfy { $0 % 2 == 0 }
    .sink(receiveValue: { allEven in
        print(allEven ? "All numbers are even"
              : "Something is odd...")
    })
    .store(in: &subscriptions)
