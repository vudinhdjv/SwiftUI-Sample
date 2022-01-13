import UIKit
import Combine

func performAsyncActionFutureWithParameter() -> Future<Int, Never> {
    return Future() { promise in
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            let rn = Int.random(in: 1...10)
            promise(Result.success(rn))
        }
    }
}

let cancellable = performAsyncActionFutureWithParameter()
    .sink() { rn in print("Got random number \(rn).")}
