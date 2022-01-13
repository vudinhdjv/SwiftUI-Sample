import UIKit
import Combine

var subscriptions = Set<AnyCancellable>()
//1: Tạo 1 Passthrough Subject
let subject = PassthroughSubject<Int, Never>()
//2: Tạo tiếp 1 publisher từ subject trên, bằng cách gọi function để sinh ra 1 erasure publisher
let publisher = subject.eraseToAnyPublisher()
//3: Subscribe đối tượng type-erased publisher đó
publisher
.sink(receiveValue: { print($0) })
.store(in: &subscriptions)
//4: dùng Subject phát 1 giá trị đi
subject.send(0)
//5: dùng erased publisher để phát --> ko đc : vì không có function này
//publisher.send(1)
