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

### But wait, there is more

#### Simple injection:

```swift
injector.set(remoteConfigurationService)

// later in your code
let remoteConfiguration: RemoteConfigurationService = injector.get()!
```

#### Advanced Injection

If you don't want to rely on type inference, you can specify the type explicitly:

```swift
protocol 🍌💕 {
}

struct 🐵: 🍌💕 {
}

let banana: 🍌💕 = injector.get(type: 🐨.self)!
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

## Current Limitations

* If your class has several initializers, `inject` will get confused. As a possible workaround, you can define a convinience function that doesn't have any 
* Search time of `get` method is currently *O(n)*.