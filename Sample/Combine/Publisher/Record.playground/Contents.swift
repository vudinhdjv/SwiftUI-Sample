import UIKit
import Combine

let recordPublish = Record<Int, Never> { record in
    record.receive(1)
    record.receive(2)
    record.receive(3)
    record.receive(completion: .finished)
}

let cancellable = recordPublish
    .sink { value in
        print(value)
    }

