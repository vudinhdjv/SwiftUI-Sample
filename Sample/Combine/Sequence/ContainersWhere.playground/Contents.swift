import UIKit
import Combine

var subscriptions = Set<AnyCancellable>()

// 1
struct Person {
    let id: Int
    let name: String
}
// 2
let people = [
    (456, "Scott Gardner"),
    (123, "Shai Mishali"),
    (777, "Marin Todorov"),
    (214, "Florent Pillet")
]
    .map(Person.init)
    .publisher
// 3
people
    .contains(where: { $0.id == 800 || $0.name == "Marin Todorov" })
    .sink(receiveValue: { contains in
        // 4
        print(contains ? "Criteria matches!"
              : "Couldn't find a match for the criteria")
    })
    .store(in: &subscriptions)
