
/**
    Naive dependancy injection, allows to specify an instance to be injected later.
    Usage: 
 
    ```
        injector.set("Hello world")
        let x: String = injector.get()!
        try injector.inject(myCar.callWithManyParameters)
    ```
 */
public class Injector {
    private var storage: [Any] = []

    /**
     - returns: New instance of `Injector`
     */
    public init() {
    }
    
    /**
     Registers passed value with injector.
     
     - parameter value: An instance to set on injector.
     */
    public func set(value: Any) {
        storage.append(value)
    }
    
    /**
     Retrieves an instance of specified type registered with injector.
     
     - returns: An instance regsitered with injector or `nil` if instance
     of specified type is not registered with this injector.
     - seealso: `get(type:)`
     - complexity: `O(n)` where `n` is the number of instances registered with injector.
     */
    public func get<T>() -> T? {
        for obj in storage {
            if let obj = obj as? T {
                return obj
            }
        }
        return nil
    }
    
    /**
     Removes an instance of specified type registered with injector.
     
     - returns: Found instance or `nil` if instance of specified type is not registered
     with this injector.
     - seealso: `set()`
     - complexity: `O(n)` where `n` is the number of instances registered with injector.
     */
    func remove<T>(`class`: T.Type) -> T? {
        for (index, obj) in storage.enumerate() {
            if let obj = obj as? T {
                storage.removeAtIndex(index)
                return obj
            }
        }
        return nil
    }
    
    /**
     Retrieves an instance of explicitly specified type registered with injector.
     
     - parameter type: explicitly specified type of instance to return `T`
     
     - returns: An instance registered with injector or `nil` if instance
     of specified type is not registered with this injector.
     - complexity: `O(n)` where `n` is a number of instance registered.
     */
    public func get<T>(type type: T.Type) -> T?{
        return get()
    }
}
