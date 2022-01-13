import UIKit
import Combine

var subscriptions = Set<AnyCancellable>()

let publisher1 = [3, 4].publisher
let publisher2 = [1, 2].publisher
  
  publisher1
    .prepend(publisher2)
    .sink(receiveValue: { print($0) })
    .store(in: &subscriptions)
