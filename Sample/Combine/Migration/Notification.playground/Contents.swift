import UIKit

NotificationCenter
    .default
    .addObserver(forName: UIDevice.orientationDidChangeNotification, object: nil, queue: nil) { _ in
        if UIDevice.current.orientation == .portrait {
            print("Orientation changed to portrait.")
        }
    }
