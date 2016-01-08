# Injector

**Warning**: this project is not considered to be feature complete.

### Before:

```swift
let applicationController = ApplicationController(
	persistanceService: persistanceService,
	analyticsService: analyticsService,
	remoteConfigurationService: remoteConfigurationService,
	authenticationController: authenticationController,
	networkProvider: provider
)
```

### After:

```swift
let applicationController = try injector.inject(ApplicationController.init)
```

## Installation ##

### [Carthage]

[Carthage]: https://github.com/Carthage/Carthage

```
github "zats/Injector"
```

Then run `carthage update`.

Follow the current instructions in [Carthage's README][carthage-installation]
for up to date installation instructions.

[carthage-installation]: https://github.com/Carthage/Carthage#adding-frameworks-to-an-application

### [CocoaPods]

[CocoaPods]: http://cocoapods.org

Add the following to your [Podfile](http://guides.cocoapods.org/using/the-podfile.html):

```ruby
pod 'SwiftInjector'
```

You will also need to make sure you're opting into using frameworks:

```ruby
use_frameworks!
```

Then run `pod install` with CocoaPods 0.36 or newer.

## But wait, there is more

### Simple injection:

```swift
let chicken = 🐔()
injector.set(chicken)

// later in your code
let chicken: 🐔 = injector.get()
chicken.cockadoodle()
```

### Explicit type specification

```swift
protocol 🍌💕 {
}

struct 🐵: 🍌💕 {
}

let banana: 🍌💕 = injector.get(type: 🐨.self)!
banana.peel()
```

### Automatic injection

`Injector` can inject all the arguments for specified function using previously registered instances:

```swift
struct 🦁 {
    let heart: ❤️
    let innerKitten: 😺
    init(heart: ❤️, innerKitten: 😺) {
        self.heart = heart
        self.innerKitten = innerKitten
    }
}

let lion = try injector.inject(🦁.init)
lion.meow()
```

If any of parameters is not registered with `injector`, it will throw an `InjectorError.TypeNotFound(T)` with first type injector failed to find. 
You are not limited to initializer, you can use any method (with up to 30 arguments)


## Current Limitations

* If your class has several initializers, `inject` will get confused. As a possible workaround, you can define a convinience class function that doesn't have any 
* Complexity of `get` method is currently *O(n)*. PRs on improving this one are very much welcome. The only limitation is not to use Objective-C runtime magic.

## Thanks

* [gfontenot](https://github.com/gfontenot) for the inspiration and the original implementation of [Curry](https://github.com/thoughtbot/Curry/).
