import UIKit
import Combine

var subscriptions = Set<AnyCancellable>()

let valuesPerSecond = 1.0
let delayInSeconds = 2.0
let sourcePublisher = PassthroughSubject<Date, Never>()
let delayedPublisher = sourcePublisher.delay(for: .seconds(delayInSeconds), scheduler: DispatchQueue.main)
//subscription
sourcePublisher
    .sink(receiveCompletion: { print("Source complete: ", $0) }) { print("Source: ", $0)}
    .store(in: &subscriptions)
delayedPublisher
    .sink(receiveCompletion: { print("Delay complete: \($0) - \(Date()) ") }) { print("Delay: \($0) - \(Date()) ")}
    .store(in: &subscriptions)
//emit values by timer
DispatchQueue.main.async {
    Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
        sourcePublisher.send(Date())
    }
}
