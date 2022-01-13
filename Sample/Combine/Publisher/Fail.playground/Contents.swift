import UIKit
import Combine

let fail = Fail<Any, Error>(error: NSError(domain: "1", code: 1, userInfo: nil))

fail
    .sink { e in
        print(e)
    } receiveValue: { value in
        print(value)
    }
