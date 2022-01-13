import UIKit
import Combine

var subscriptions = Set<AnyCancellable>()

func futureIncrement(integer: Int, afterDelay delay: TimeInterval) -> AnyPublisher<Int, Never> {
    Deferred {
        Future<Int, Never> { promise in
            print("Original")
            DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
                print("success")
                promise(.success(integer + 1))
            }
        }
    }.eraseToAnyPublisher()
}


let future = futureIncrement(integer: 1, afterDelay: 3).share()

future
    .sink (receiveCompletion: { print($0) }, receiveValue: { print($0) })
    .store(in: &subscriptions)


future
    .sink (receiveCompletion: { print($0) }, receiveValue: { print($0) })
    .store(in: &subscriptions)
