import UIKit
import Combine

var subscriptions = Set<AnyCancellable>()

let isReady = PassthroughSubject<Void, Never>()
let taps = PassthroughSubject<Int, Never>()

taps
  .drop(untilOutputFrom: isReady)
  .sink(receiveValue: { print($0) })
  .store(in: &subscriptions)

(1...15).forEach { n in
  taps.send(n)
  
  if n == 3 {
    isReady.send()
  }
}
