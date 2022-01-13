import UIKit
import Combine

var subscriptions = Set<AnyCancellable>()

let publisher = ["12345",
                 "ab",
                 "hello world"]
    .compactMap { $0.data(using: .utf8) } // [Data]
    .publisher // Publisher<Data, Never>
publisher
    .print("publisher")
    .min(by: { $0.count < $1.count })
    .sink(receiveValue: { data in
        let string = String(data: data, encoding: .utf8)!
        print("Smallest data is \(string), \(data.count) bytes")
    })
    .store(in: &subscriptions)
