import UIKit

func performAsyncAction(completionHandler: @escaping () -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
        completionHandler()
    }
}


