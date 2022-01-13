import UIKit
import Combine

var subscriptions = Set<AnyCancellable>()
let strings = ["a", "1.24", "3", "def", "45", "0.23"].publisher
strings
    .compactMap { Float($0) }
    .sink(receiveValue: {  print($0) })
    .store(in: &subscriptions)
