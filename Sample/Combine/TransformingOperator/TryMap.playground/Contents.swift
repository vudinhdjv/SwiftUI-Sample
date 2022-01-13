import UIKit
import Combine

var subscriptions = Set<AnyCancellable>()

Just("Duong dan toi file")
    .tryMap{ try FileManager.default.contentsOfDirectory(atPath: $0) }
    .sink {
        print("Finished ", $0)
    } receiveValue: {
        print("Value ", $0)
    }
    .store(in: &subscriptions)

