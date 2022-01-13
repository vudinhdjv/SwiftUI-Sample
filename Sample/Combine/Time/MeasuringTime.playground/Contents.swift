import UIKit
import Combine

var subscriptions = Set<AnyCancellable>()
let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss.SSSS"
//data
let typingHelloWorld: [(TimeInterval, String)] = [
  (0.0, "H"),
  (0.1, "He"),
  (0.2, "Hel"),
  (0.3, "Hell"),
  (0.5, "Hello"),
  (0.6, "Hello "),
  (2.0, "Hello W"),
  (2.1, "Hello Wo"),
  (2.2, "Hello Wor"),
  (2.4, "Hello Worl"),
  (2.5, "Hello World")
]
//subject
let subject = PassthroughSubject<String, Never>()
//measure
let measureSubject = subject.measureInterval(using: DispatchQueue.main)
let measureSubject2 = subject.measureInterval(using: RunLoop.main)
//subscription
subject
    .sink { string in
        print("\(dateFormatter.string(from: Date())) - 🔵 : \(string)")
    }
    .store(in: &subscriptions)
measureSubject
    .sink { string in
        print("\(dateFormatter.string(from: Date())) - 🔴 : \(string)")
    }
    .store(in: &subscriptions)
measureSubject2
    .sink { string in
        print("\(dateFormatter.string(from: Date())) - 🔶 : \(string)")
    }
    .store(in: &subscriptions)
//loop
let now = DispatchTime.now()
for item in typingHelloWorld {
    DispatchQueue.main.asyncAfter(deadline: now + item.0) {
        subject.send(item.1)
    }
}
