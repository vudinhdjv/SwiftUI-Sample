import UIKit
import Combine

var subscriptions = Set<AnyCancellable>()

enum TimeoutError: Error {
    case timedOut
}
let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss.SSSS"
let subject = PassthroughSubject<Void, TimeoutError>()

let timeoutSubject = subject
            .timeout(.seconds(5), scheduler: DispatchQueue.main, customError: {.timedOut})

subject
    .sink(receiveCompletion: { print("\(dateFormatter.string(from: Date())) - 🔵 completion: ", $0) }) { print("\(dateFormatter.string(from: Date())) - 🔵 : event")}
    .store(in: &subscriptions)

timeoutSubject
    .sink(receiveCompletion: { print("\(dateFormatter.string(from: Date())) - 🔴 completion: ", $0) }) { print("\(dateFormatter.string(from: Date())) - 🔴 : event")}
    .store(in: &subscriptions)

print("\(dateFormatter.string(from: Date())) - BEGIN")

DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
    subject.send()
}
