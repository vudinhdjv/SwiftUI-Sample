import UIKit
import Combine

var subscriptions = Set<AnyCancellable>()

public struct Chatter {
    public let name: String
    public let message: CurrentValueSubject<String, Never>
    
    public init(name: String, message: String) {
        self.name = name
        self.message = CurrentValueSubject(message)
    }
}

let lan = Chatter(name: "Lan", message: "---- Lan joined room ----")
let mai = Chatter(name: "Mai", message: "---- Mai joined room ----")

let chat = PassthroughSubject<Chatter, Never>()

chat
    .flatMap{ $0.message }
    .sink { print($0) }
    .store(in: &subscriptions)


chat.send(lan)
lan.message.value = "Lan: Tôi là Lan!!!!"
chat.send(mai)
mai.message.value = "Mai: Tôi là Mai!!!!"
lan.message.send("Lan: Tao bị dính covid rồi")
let covid = Chatter(name: "Covid", message: "--- Covid joined room ---")
chat.send(covid)
covid.message.send("Covid: Các anh gọi em ah!!!!")
lan.message.send("Toang rồi ông giáo ạ!!!")

chat
    .flatMap(maxPublishers: .max(2)){ $0.message }
    .sink { print($0) }
    .store(in: &subscriptions)
