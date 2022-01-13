import UIKit
import Combine

func performAsyncActionAsFuture() -> Future <Void, Never> {
    return Future() { promise in
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            promise(Result.success(()))
        }
    }
}

let cancellable = performAsyncActionAsFuture()
    .sink() {_ in print("Future succeeded.")}
