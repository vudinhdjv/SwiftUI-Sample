import Combine

let just = Just("Hello world")

let subscriber1 = just
    .sink { value in
        print(value)
    }

let subscribe2 = just
    .sink { _  in
        print("Received completion")
    } receiveValue: { value in
        print(value)
    }

