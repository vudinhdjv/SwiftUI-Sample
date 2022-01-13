import UIKit
import Combine

var subscriptions = Set<AnyCancellable>()

let isReady = PassthroughSubject<Void, Never>()
let taps = PassthroughSubject<Int, Never>()
  taps
    .prefix(untilOutputFrom: isReady)
    .sink(receiveCompletion: { print("Completed with: \($0)") },
          receiveValue: { print($0) })
    .store(in: &subscriptions)
  
  (1...15).forEach { n in
    taps.send(n)
    
    if n == 5 {
      isReady.send()
    }
  }
