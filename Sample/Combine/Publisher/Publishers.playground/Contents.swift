import UIKit
import Combine

let subscriber = Subscribers.Sink<Int, Never>(
                    receiveCompletion: {
                       completion in
                      print(completion)
                  }) { value in
                      print(value)
                 }
Publishers
      .Sequence<[Int], Never>(sequence: [1, 2, 3, 4])
      .receive(subscriber: subscriber)
