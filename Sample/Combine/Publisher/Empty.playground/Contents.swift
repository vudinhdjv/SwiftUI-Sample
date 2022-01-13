import UIKit
import Combine

let empty = Empty<Any, Never>()

empty
    .sink { _ in
        print("finished")
    } receiveValue: { value in
        print(value)
    }
