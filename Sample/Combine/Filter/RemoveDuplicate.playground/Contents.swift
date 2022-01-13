import UIKit
import Combine

var subscriptions = Set<AnyCancellable>()
let words = "aabbcdefsdasdh"
    .publisher
words
    .removeDuplicates()
    .sink(receiveValue: { print($0) })
    .store(in: &subscriptions)
