//: [Previous](@previous)

import Injector

//: # Injector 101

//: ## Types we're going to use.
protocol 🍌💕 {
}

struct 🐵: 🍌💕 {
}

struct 🐨: 🍌💕 {
}


//: ## Injector setup
let injector = Injector()

let monkey = 🐵()
injector.set(monkey)

let koala = 🐨()
injector.set(koala)


//: ## Simple injection, inferring type
let injectedMonkey: 🐵 = injector.get()!


//: ## Specifying return type explicitly
let bananaLoving1: 🍌💕 = injector.get()!
let bananaLoving2: 🍌💕 = injector.get(type: 🐨.self)!


//: [Next](@next)
