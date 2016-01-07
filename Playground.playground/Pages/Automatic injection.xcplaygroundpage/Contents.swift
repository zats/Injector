import Injector

//: # Automatic injection through constructor

//: ## Types Definition
//: Boring stuff. Scroll down to the Injector section.

struct 👨‍: Equatable {
    let UUID: String = NSUUID().UUIDString
}

struct 👩‍: Equatable {
    let UUID: String = NSUUID().UUIDString
}

struct 👧‍: Equatable {
    let UUID: String = NSUUID().UUIDString
}

struct 👦: Equatable {
    let UUID: String = NSUUID().UUIDString
}

//: Some emoji math:
//:
//:     👨‍ + 👩‍ + 👧‍ + 👦 = 👨‍👩‍👧‍👦
//:     👨‍ + 👩‍ + 👧 = 👨‍👩‍👧

struct 👨‍👩‍👧: Equatable {
    let man: 👨‍
    let woman: 👩‍
    let girl: 👧‍
}

struct 👨‍👩‍👧‍👦: Equatable {
    let man: 👨‍
    let woman: 👩‍
    let girl: 👧‍
    let boy: 👦
}

func ==(lhs: 👨‍, rhs: 👨‍) -> Bool {
    return lhs.UUID == rhs.UUID
}

func ==(lhs: 👩‍, rhs: 👩‍) -> Bool {
    return lhs.UUID == rhs.UUID
}

func ==(lhs: 👧‍, rhs: 👧‍) -> Bool {
    return lhs.UUID == rhs.UUID
}

func ==(lhs: 👦, rhs: 👦) -> Bool {
    return lhs.UUID == rhs.UUID
}

func ==(lhs: 👨‍👩‍👧, rhs: 👨‍👩‍👧) -> Bool {
    return lhs.girl == rhs.girl && lhs.man == rhs.man && lhs.woman == rhs.woman
}

func ==(lhs: 👨‍👩‍👧‍👦, rhs: 👨‍👩‍👧‍👦) -> Bool {
    return lhs.girl == rhs.girl && lhs.boy == rhs.boy && lhs.man == rhs.man && lhs.woman == rhs.woman
}

//: ## Injector

let injector = Injector()
let man = 👨‍()
injector.set(man)

let woman = 👩‍()
injector.set(woman)

let girl = 👧‍()
injector.set(girl)

let boy = 👦()
injector.set(boy)

do {
    let family1 = try injector.inject(👨‍👩‍👧‍👦.init)
    let family2 = try injector.inject(👨‍👩‍👧.init)
    assert(family1.girl == family2.girl) // true
} catch let e as InjectorError {
    print("Failed to inject: \(e)")
}

// NSError.init takes 3 parameters, first one is NSString
// Since we never registered an NSString with injector, following will always fail
do {
    let url = try injector.inject(NSError.init)
} catch {
    print("Failed to inject NSError")
}
