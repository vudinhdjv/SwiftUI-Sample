import UIKit
import Combine

let helloPublisher = "Hello Combine".publisher

let _ = helloPublisher
    .sink {print($0)}

let fibonacciPublisher = [0, 1, 1, 2, 3, 5].publisher
_ = fibonacciPublisher
    .sink{ print($0) }

let dictPublisher = [1: "Hello", 2: "World"].publisher
_ = dictPublisher
    .sink{ print($0) }

let publisher = (1...10).publisher
let subscriber = Subscribers.Sink<Int, Never>(receiveCompletion: { completion in
  print(completion)
}) { value in
  print(value)
}
publisher.subscribe(subscriber)
