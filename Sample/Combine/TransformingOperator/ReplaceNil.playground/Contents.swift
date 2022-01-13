import UIKit
import Combine

var subscriptions = Set<AnyCancellable>()

["A", nil, "B"].publisher
    .replaceNil(with: "-")
    .map{$0!}
    .sink{ print($0) }
    .store(in: &subscriptions)
