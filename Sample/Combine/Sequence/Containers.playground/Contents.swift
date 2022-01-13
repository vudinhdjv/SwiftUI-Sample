import UIKit
import Combine

var subscriptions = Set<AnyCancellable>()

let publisher = ["A", "B", "C", "D", "E"].publisher
let letter = "F"
publisher
    .print("publisher")
    .contains(letter)
    .sink(receiveValue: { contains in
        print(contains ? "Publisher emitted \(letter)!"
              : "Publisher never emitted \(letter)!")
    })
    .store(in: &subscriptions)
