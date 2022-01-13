import UIKit
import Combine

var subscriptions = Set<AnyCancellable>()

let valuesPerSecond = 1.0
let collectTimeStride = 4
let collectMaxCount = 3
let sourcePublisher = PassthroughSubject<Int, Never>()
let collectedPublisher = sourcePublisher
    .collect(.byTimeOrCount(DispatchQueue.main, .seconds(collectTimeStride), collectMaxCount))
//    .flatMap(dates in dates.publisher )
//subscription
sourcePublisher
    .sink(receiveCompletion: { print("\(Date()) - 🔵 complete: ", $0) }) { print("\(Date()) - 🔵: ", $0)}
    .store(in: &subscriptions)
collectedPublisher
    .sink(receiveCompletion: { print("\(Date()) - 🔴 complete: \($0)") }) { print("\(Date()) - 🔴: \($0)")}
    .store(in: &subscriptions)
DispatchQueue.main.async {
    sourcePublisher.send(0)
    
    var count = 1
    Timer.scheduledTimer(withTimeInterval: 1.0 / valuesPerSecond, repeats: true) { _ in
        sourcePublisher.send(count)
        count += 1
    }
}
