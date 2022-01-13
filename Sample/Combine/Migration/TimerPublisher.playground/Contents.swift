import UIKit
import Combine

var cancellable: Cancellable?

cancellable = Timer.publish(every: 1, on: .main, in: .default)
                   .autoconnect()
                   .sink{ _ in
                       print(Date())
                   }
