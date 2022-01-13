import UIKit

var cancellable = NotificationCenter.default
    .publisher(for: UIDevice.orientationDidChangeNotification, object: nil)
    .filter() {_ in UIDevice.current.orientation == .portrait}
    .sink() {_ in print("Orientation changed to portrait.")}

cancellable.cancel()
