import UIKit
import Combine

let subject = PassthroughSubject<Int, Never>()
// send value
subject.send(0)
//subscription 1
_ = subject.sink(receiveValue: { (value) in
  print("🔵 : \(value)")
})
// send values
subject.send(1)
subject.send(2)
subject.send(3)
subject.send(4)
//subscription 2
_ = subject.sink(receiveValue: { (value) in
  print("🔴 : \(value)")
})
// send value
subject.send(5)
// Finished
subject.send(completion: .finished)
// send value
subject.send(6)
