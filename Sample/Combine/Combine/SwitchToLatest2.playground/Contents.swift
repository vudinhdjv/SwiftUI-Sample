import UIKit
import Combine

var subscriptions = Set<AnyCancellable>()

let url = URL(string: "https://source.unsplash.com/random")!
// 1
func getImage() -> AnyPublisher<UIImage?, Never> {
    return URLSession.shared
        .dataTaskPublisher(for: url)
        .map { data, _ in UIImage(data: data) }
        .print("image")
        .replaceError(with: nil)
        .eraseToAnyPublisher()
}
// 2
let taps = PassthroughSubject<Void, Never>()
taps
    .map { _ in getImage() } // 3
    .switchToLatest() // 4
    .sink(receiveValue: { _ in })
    .store(in: &subscriptions)
// 5
taps.send()
DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
    taps.send()
}
DispatchQueue.main.asyncAfter(deadline: .now() + 10.1) {
    taps.send()
}
