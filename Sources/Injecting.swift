/**
 Error being thrown during injection if an instance has not been registered with injector.
 */
public enum InjectorError: ErrorType {
    /**
     Error being thrown during injection if an instance has not been registered with injector.
     Contains first type that has not been registered with injector.
     */
    case TypeNotFound(Any.Type)
}

extension Injector {
    /**
     Injects specified method using arguments that has been registered with the `injector` instance.
     If an argument has not been registered, function is going to throw.
     */
    public func inject<A, B>(function: (A) -> B) throws -> B {
        guard let `a`: A = get() else { throw InjectorError.TypeNotFound(A) }
        return function(`a`)
    }
    
    /**
     Injects specified method using arguments that has been registered with the `injector` instance.
     If an argument has not been registered, function is going to throw.
     */
    public func inject<A, B, C>(function: (A, B) -> C) throws -> C {
        guard let `a`: A = get() else { throw InjectorError.TypeNotFound(A) }
        guard let `b`: B = get() else { throw InjectorError.TypeNotFound(B) }
        return function(`a`, `b`)
    }
    
    /**
     Injects specified method using arguments that has been registered with the `injector` instance.
     If an argument has not been registered, function is going to throw.
     */
    public func inject<A, B, C, D>(function: (A, B, C) -> D) throws -> D {
        guard let `a`: A = get() else { throw InjectorError.TypeNotFound(A) }
        guard let `b`: B = get() else { throw InjectorError.TypeNotFound(B) }
        guard let `c`: C = get() else { throw InjectorError.TypeNotFound(C) }
        return function(`a`, `b`, `c`)
    }
    
    /**
     Injects specified method using arguments that has been registered with the `injector` instance.
     If an argument has not been registered, function is going to throw.
     */
    public func inject<A, B, C, D, E>(function: (A, B, C, D) -> E) throws -> E {
        guard let `a`: A = get() else { throw InjectorError.TypeNotFound(A) }
        guard let `b`: B = get() else { throw InjectorError.TypeNotFound(B) }
        guard let `c`: C = get() else { throw InjectorError.TypeNotFound(C) }
        guard let `d`: D = get() else { throw InjectorError.TypeNotFound(D) }
        return function(`a`, `b`, `c`, `d`)
    }
    
    /**
     Injects specified method using arguments that has been registered with the `injector` instance.
     If an argument has not been registered, function is going to throw.
     */
    public func inject<A, B, C, D, E, F>(function: (A, B, C, D, E) -> F) throws -> F {
        guard let `a`: A = get() else { throw InjectorError.TypeNotFound(A) }
        guard let `b`: B = get() else { throw InjectorError.TypeNotFound(B) }
        guard let `c`: C = get() else { throw InjectorError.TypeNotFound(C) }
        guard let `d`: D = get() else { throw InjectorError.TypeNotFound(D) }
        guard let `e`: E = get() else { throw InjectorError.TypeNotFound(E) }
        return function(`a`, `b`, `c`, `d`, `e`)
    }
    
    /**
     Injects specified method using arguments that has been registered with the `injector` instance.
     If an argument has not been registered, function is going to throw.
     */
    public func inject<A, B, C, D, E, F, G>(function: (A, B, C, D, E, F) -> G) throws -> G {
        guard let `a`: A = get() else { throw InjectorError.TypeNotFound(A) }
        guard let `b`: B = get() else { throw InjectorError.TypeNotFound(B) }
        guard let `c`: C = get() else { throw InjectorError.TypeNotFound(C) }
        guard let `d`: D = get() else { throw InjectorError.TypeNotFound(D) }
        guard let `e`: E = get() else { throw InjectorError.TypeNotFound(E) }
        guard let `f`: F = get() else { throw InjectorError.TypeNotFound(F) }
        return function(`a`, `b`, `c`, `d`, `e`, `f`)
    }
    
    /**
     Injects specified method using arguments that has been registered with the `injector` instance.
     If an argument has not been registered, function is going to throw.
     */
    public func inject<A, B, C, D, E, F, G, H>(function: (A, B, C, D, E, F, G) -> H) throws -> H {
        guard let `a`: A = get() else { throw InjectorError.TypeNotFound(A) }
        guard let `b`: B = get() else { throw InjectorError.TypeNotFound(B) }
        guard let `c`: C = get() else { throw InjectorError.TypeNotFound(C) }
        guard let `d`: D = get() else { throw InjectorError.TypeNotFound(D) }
        guard let `e`: E = get() else { throw InjectorError.TypeNotFound(E) }
        guard let `f`: F = get() else { throw InjectorError.TypeNotFound(F) }
        guard let `g`: G = get() else { throw InjectorError.TypeNotFound(G) }
        return function(`a`, `b`, `c`, `d`, `e`, `f`, `g`)
    }
    
    /**
     Injects specified method using arguments that has been registered with the `injector` instance.
     If an argument has not been registered, function is going to throw.
     */
    public func inject<A, B, C, D, E, F, G, H, I>(function: (A, B, C, D, E, F, G, H) -> I) throws -> I {
        guard let `a`: A = get() else { throw InjectorError.TypeNotFound(A) }
        guard let `b`: B = get() else { throw InjectorError.TypeNotFound(B) }
        guard let `c`: C = get() else { throw InjectorError.TypeNotFound(C) }
        guard let `d`: D = get() else { throw InjectorError.TypeNotFound(D) }
        guard let `e`: E = get() else { throw InjectorError.TypeNotFound(E) }
        guard let `f`: F = get() else { throw InjectorError.TypeNotFound(F) }
        guard let `g`: G = get() else { throw InjectorError.TypeNotFound(G) }
        guard let `h`: H = get() else { throw InjectorError.TypeNotFound(H) }
        return function(`a`, `b`, `c`, `d`, `e`, `f`, `g`, `h`)
    }
    
    /**
     Injects specified method using arguments that has been registered with the `injector` instance.
     If an argument has not been registered, function is going to throw.
     */
    public func inject<A, B, C, D, E, F, G, H, I, J>(function: (A, B, C, D, E, F, G, H, I) -> J) throws -> J {
        guard let `a`: A = get() else { throw InjectorError.TypeNotFound(A) }
        guard let `b`: B = get() else { throw InjectorError.TypeNotFound(B) }
        guard let `c`: C = get() else { throw InjectorError.TypeNotFound(C) }
        guard let `d`: D = get() else { throw InjectorError.TypeNotFound(D) }
        guard let `e`: E = get() else { throw InjectorError.TypeNotFound(E) }
        guard let `f`: F = get() else { throw InjectorError.TypeNotFound(F) }
        guard let `g`: G = get() else { throw InjectorError.TypeNotFound(G) }
        guard let `h`: H = get() else { throw InjectorError.TypeNotFound(H) }
        guard let `i`: I = get() else { throw InjectorError.TypeNotFound(I) }
        return function(`a`, `b`, `c`, `d`, `e`, `f`, `g`, `h`, `i`)
    }
    
    /**
     Injects specified method using arguments that has been registered with the `injector` instance.
     If an argument has not been registered, function is going to throw.
     */
    public func inject<A, B, C, D, E, F, G, H, I, J, K>(function: (A, B, C, D, E, F, G, H, I, J) -> K) throws -> K {
        guard let `a`: A = get() else { throw InjectorError.TypeNotFound(A) }
        guard let `b`: B = get() else { throw InjectorError.TypeNotFound(B) }
        guard let `c`: C = get() else { throw InjectorError.TypeNotFound(C) }
        guard let `d`: D = get() else { throw InjectorError.TypeNotFound(D) }
        guard let `e`: E = get() else { throw InjectorError.TypeNotFound(E) }
        guard let `f`: F = get() else { throw InjectorError.TypeNotFound(F) }
        guard let `g`: G = get() else { throw InjectorError.TypeNotFound(G) }
        guard let `h`: H = get() else { throw InjectorError.TypeNotFound(H) }
        guard let `i`: I = get() else { throw InjectorError.TypeNotFound(I) }
        guard let `j`: J = get() else { throw InjectorError.TypeNotFound(J) }
        return function(`a`, `b`, `c`, `d`, `e`, `f`, `g`, `h`, `i`, `j`)
    }
    
    /**
     Injects specified method using arguments that has been registered with the `injector` instance.
     If an argument has not been registered, function is going to throw.
     */
    public func inject<A, B, C, D, E, F, G, H, I, J, K, L>(function: (A, B, C, D, E, F, G, H, I, J, K) -> L) throws -> L {
        guard let `a`: A = get() else { throw InjectorError.TypeNotFound(A) }
        guard let `b`: B = get() else { throw InjectorError.TypeNotFound(B) }
        guard let `c`: C = get() else { throw InjectorError.TypeNotFound(C) }
        guard let `d`: D = get() else { throw InjectorError.TypeNotFound(D) }
        guard let `e`: E = get() else { throw InjectorError.TypeNotFound(E) }
        guard let `f`: F = get() else { throw InjectorError.TypeNotFound(F) }
        guard let `g`: G = get() else { throw InjectorError.TypeNotFound(G) }
        guard let `h`: H = get() else { throw InjectorError.TypeNotFound(H) }
        guard let `i`: I = get() else { throw InjectorError.TypeNotFound(I) }
        guard let `j`: J = get() else { throw InjectorError.TypeNotFound(J) }
        guard let `k`: K = get() else { throw InjectorError.TypeNotFound(K) }
        return function(`a`, `b`, `c`, `d`, `e`, `f`, `g`, `h`, `i`, `j`, `k`)
    }
    
    /**
     Injects specified method using arguments that has been registered with the `injector` instance.
     If an argument has not been registered, function is going to throw.
     */
    public func inject<A, B, C, D, E, F, G, H, I, J, K, L, M>(function: (A, B, C, D, E, F, G, H, I, J, K, L) -> M) throws -> M {
        guard let `a`: A = get() else { throw InjectorError.TypeNotFound(A) }
        guard let `b`: B = get() else { throw InjectorError.TypeNotFound(B) }
        guard let `c`: C = get() else { throw InjectorError.TypeNotFound(C) }
        guard let `d`: D = get() else { throw InjectorError.TypeNotFound(D) }
        guard let `e`: E = get() else { throw InjectorError.TypeNotFound(E) }
        guard let `f`: F = get() else { throw InjectorError.TypeNotFound(F) }
        guard let `g`: G = get() else { throw InjectorError.TypeNotFound(G) }
        guard let `h`: H = get() else { throw InjectorError.TypeNotFound(H) }
        guard let `i`: I = get() else { throw InjectorError.TypeNotFound(I) }
        guard let `j`: J = get() else { throw InjectorError.TypeNotFound(J) }
        guard let `k`: K = get() else { throw InjectorError.TypeNotFound(K) }
        guard let `l`: L = get() else { throw InjectorError.TypeNotFound(L) }
        return function(`a`, `b`, `c`, `d`, `e`, `f`, `g`, `h`, `i`, `j`, `k`, `l`)
    }
    
    /**
     Injects specified method using arguments that has been registered with the `injector` instance.
     If an argument has not been registered, function is going to throw.
     */
    public func inject<A, B, C, D, E, F, G, H, I, J, K, L, M, N>(function: (A, B, C, D, E, F, G, H, I, J, K, L, M) -> N) throws -> N {
        guard let `a`: A = get() else { throw InjectorError.TypeNotFound(A) }
        guard let `b`: B = get() else { throw InjectorError.TypeNotFound(B) }
        guard let `c`: C = get() else { throw InjectorError.TypeNotFound(C) }
        guard let `d`: D = get() else { throw InjectorError.TypeNotFound(D) }
        guard let `e`: E = get() else { throw InjectorError.TypeNotFound(E) }
        guard let `f`: F = get() else { throw InjectorError.TypeNotFound(F) }
        guard let `g`: G = get() else { throw InjectorError.TypeNotFound(G) }
        guard let `h`: H = get() else { throw InjectorError.TypeNotFound(H) }
        guard let `i`: I = get() else { throw InjectorError.TypeNotFound(I) }
        guard let `j`: J = get() else { throw InjectorError.TypeNotFound(J) }
        guard let `k`: K = get() else { throw InjectorError.TypeNotFound(K) }
        guard let `l`: L = get() else { throw InjectorError.TypeNotFound(L) }
        guard let `m`: M = get() else { throw InjectorError.TypeNotFound(M) }
        return function(`a`, `b`, `c`, `d`, `e`, `f`, `g`, `h`, `i`, `j`, `k`, `l`, `m`)
    }
    
    /**
     Injects specified method using arguments that has been registered with the `injector` instance.
     If an argument has not been registered, function is going to throw.
     */
    public func inject<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O>(function: (A, B, C, D, E, F, G, H, I, J, K, L, M, N) -> O) throws -> O {
        guard let `a`: A = get() else { throw InjectorError.TypeNotFound(A) }
        guard let `b`: B = get() else { throw InjectorError.TypeNotFound(B) }
        guard let `c`: C = get() else { throw InjectorError.TypeNotFound(C) }
        guard let `d`: D = get() else { throw InjectorError.TypeNotFound(D) }
        guard let `e`: E = get() else { throw InjectorError.TypeNotFound(E) }
        guard let `f`: F = get() else { throw InjectorError.TypeNotFound(F) }
        guard let `g`: G = get() else { throw InjectorError.TypeNotFound(G) }
        guard let `h`: H = get() else { throw InjectorError.TypeNotFound(H) }
        guard let `i`: I = get() else { throw InjectorError.TypeNotFound(I) }
        guard let `j`: J = get() else { throw InjectorError.TypeNotFound(J) }
        guard let `k`: K = get() else { throw InjectorError.TypeNotFound(K) }
        guard let `l`: L = get() else { throw InjectorError.TypeNotFound(L) }
        guard let `m`: M = get() else { throw InjectorError.TypeNotFound(M) }
        guard let `n`: N = get() else { throw InjectorError.TypeNotFound(N) }
        return function(`a`, `b`, `c`, `d`, `e`, `f`, `g`, `h`, `i`, `j`, `k`, `l`, `m`, `n`)
    }
    
    /**
     Injects specified method using arguments that has been registered with the `injector` instance.
     If an argument has not been registered, function is going to throw.
     */
    public func inject<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P>(function: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O) -> P) throws -> P {
        guard let `a`: A = get() else { throw InjectorError.TypeNotFound(A) }
        guard let `b`: B = get() else { throw InjectorError.TypeNotFound(B) }
        guard let `c`: C = get() else { throw InjectorError.TypeNotFound(C) }
        guard let `d`: D = get() else { throw InjectorError.TypeNotFound(D) }
        guard let `e`: E = get() else { throw InjectorError.TypeNotFound(E) }
        guard let `f`: F = get() else { throw InjectorError.TypeNotFound(F) }
        guard let `g`: G = get() else { throw InjectorError.TypeNotFound(G) }
        guard let `h`: H = get() else { throw InjectorError.TypeNotFound(H) }
        guard let `i`: I = get() else { throw InjectorError.TypeNotFound(I) }
        guard let `j`: J = get() else { throw InjectorError.TypeNotFound(J) }
        guard let `k`: K = get() else { throw InjectorError.TypeNotFound(K) }
        guard let `l`: L = get() else { throw InjectorError.TypeNotFound(L) }
        guard let `m`: M = get() else { throw InjectorError.TypeNotFound(M) }
        guard let `n`: N = get() else { throw InjectorError.TypeNotFound(N) }
        guard let `o`: O = get() else { throw InjectorError.TypeNotFound(O) }
        return function(`a`, `b`, `c`, `d`, `e`, `f`, `g`, `h`, `i`, `j`, `k`, `l`, `m`, `n`, `o`)
    }
    
    /**
     Injects specified method using arguments that has been registered with the `injector` instance.
     If an argument has not been registered, function is going to throw.
     */
    public func inject<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q>(function: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P) -> Q) throws -> Q {
        guard let `a`: A = get() else { throw InjectorError.TypeNotFound(A) }
        guard let `b`: B = get() else { throw InjectorError.TypeNotFound(B) }
        guard let `c`: C = get() else { throw InjectorError.TypeNotFound(C) }
        guard let `d`: D = get() else { throw InjectorError.TypeNotFound(D) }
        guard let `e`: E = get() else { throw InjectorError.TypeNotFound(E) }
        guard let `f`: F = get() else { throw InjectorError.TypeNotFound(F) }
        guard let `g`: G = get() else { throw InjectorError.TypeNotFound(G) }
        guard let `h`: H = get() else { throw InjectorError.TypeNotFound(H) }
        guard let `i`: I = get() else { throw InjectorError.TypeNotFound(I) }
        guard let `j`: J = get() else { throw InjectorError.TypeNotFound(J) }
        guard let `k`: K = get() else { throw InjectorError.TypeNotFound(K) }
        guard let `l`: L = get() else { throw InjectorError.TypeNotFound(L) }
        guard let `m`: M = get() else { throw InjectorError.TypeNotFound(M) }
        guard let `n`: N = get() else { throw InjectorError.TypeNotFound(N) }
        guard let `o`: O = get() else { throw InjectorError.TypeNotFound(O) }
        guard let `p`: P = get() else { throw InjectorError.TypeNotFound(P) }
        return function(`a`, `b`, `c`, `d`, `e`, `f`, `g`, `h`, `i`, `j`, `k`, `l`, `m`, `n`, `o`, `p`)
    }
    
    /**
     Injects specified method using arguments that has been registered with the `injector` instance.
     If an argument has not been registered, function is going to throw.
     */
    public func inject<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R>(function: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q) -> R) throws -> R {
        guard let `a`: A = get() else { throw InjectorError.TypeNotFound(A) }
        guard let `b`: B = get() else { throw InjectorError.TypeNotFound(B) }
        guard let `c`: C = get() else { throw InjectorError.TypeNotFound(C) }
        guard let `d`: D = get() else { throw InjectorError.TypeNotFound(D) }
        guard let `e`: E = get() else { throw InjectorError.TypeNotFound(E) }
        guard let `f`: F = get() else { throw InjectorError.TypeNotFound(F) }
        guard let `g`: G = get() else { throw InjectorError.TypeNotFound(G) }
        guard let `h`: H = get() else { throw InjectorError.TypeNotFound(H) }
        guard let `i`: I = get() else { throw InjectorError.TypeNotFound(I) }
        guard let `j`: J = get() else { throw InjectorError.TypeNotFound(J) }
        guard let `k`: K = get() else { throw InjectorError.TypeNotFound(K) }
        guard let `l`: L = get() else { throw InjectorError.TypeNotFound(L) }
        guard let `m`: M = get() else { throw InjectorError.TypeNotFound(M) }
        guard let `n`: N = get() else { throw InjectorError.TypeNotFound(N) }
        guard let `o`: O = get() else { throw InjectorError.TypeNotFound(O) }
        guard let `p`: P = get() else { throw InjectorError.TypeNotFound(P) }
        guard let `q`: Q = get() else { throw InjectorError.TypeNotFound(Q) }
        return function(`a`, `b`, `c`, `d`, `e`, `f`, `g`, `h`, `i`, `j`, `k`, `l`, `m`, `n`, `o`, `p`, `q`)
    }
    
    /**
     Injects specified method using arguments that has been registered with the `injector` instance.
     If an argument has not been registered, function is going to throw.
     */
    public func inject<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S>(function: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R) -> S) throws -> S {
        guard let `a`: A = get() else { throw InjectorError.TypeNotFound(A) }
        guard let `b`: B = get() else { throw InjectorError.TypeNotFound(B) }
        guard let `c`: C = get() else { throw InjectorError.TypeNotFound(C) }
        guard let `d`: D = get() else { throw InjectorError.TypeNotFound(D) }
        guard let `e`: E = get() else { throw InjectorError.TypeNotFound(E) }
        guard let `f`: F = get() else { throw InjectorError.TypeNotFound(F) }
        guard let `g`: G = get() else { throw InjectorError.TypeNotFound(G) }
        guard let `h`: H = get() else { throw InjectorError.TypeNotFound(H) }
        guard let `i`: I = get() else { throw InjectorError.TypeNotFound(I) }
        guard let `j`: J = get() else { throw InjectorError.TypeNotFound(J) }
        guard let `k`: K = get() else { throw InjectorError.TypeNotFound(K) }
        guard let `l`: L = get() else { throw InjectorError.TypeNotFound(L) }
        guard let `m`: M = get() else { throw InjectorError.TypeNotFound(M) }
        guard let `n`: N = get() else { throw InjectorError.TypeNotFound(N) }
        guard let `o`: O = get() else { throw InjectorError.TypeNotFound(O) }
        guard let `p`: P = get() else { throw InjectorError.TypeNotFound(P) }
        guard let `q`: Q = get() else { throw InjectorError.TypeNotFound(Q) }
        guard let `r`: R = get() else { throw InjectorError.TypeNotFound(R) }
        return function(`a`, `b`, `c`, `d`, `e`, `f`, `g`, `h`, `i`, `j`, `k`, `l`, `m`, `n`, `o`, `p`, `q`, `r`)
    }
    
    /**
     Injects specified method using arguments that has been registered with the `injector` instance.
     If an argument has not been registered, function is going to throw.
     */
    public func inject<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T>(function: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S) -> T) throws -> T {
        guard let `a`: A = get() else { throw InjectorError.TypeNotFound(A) }
        guard let `b`: B = get() else { throw InjectorError.TypeNotFound(B) }
        guard let `c`: C = get() else { throw InjectorError.TypeNotFound(C) }
        guard let `d`: D = get() else { throw InjectorError.TypeNotFound(D) }
        guard let `e`: E = get() else { throw InjectorError.TypeNotFound(E) }
        guard let `f`: F = get() else { throw InjectorError.TypeNotFound(F) }
        guard let `g`: G = get() else { throw InjectorError.TypeNotFound(G) }
        guard let `h`: H = get() else { throw InjectorError.TypeNotFound(H) }
        guard let `i`: I = get() else { throw InjectorError.TypeNotFound(I) }
        guard let `j`: J = get() else { throw InjectorError.TypeNotFound(J) }
        guard let `k`: K = get() else { throw InjectorError.TypeNotFound(K) }
        guard let `l`: L = get() else { throw InjectorError.TypeNotFound(L) }
        guard let `m`: M = get() else { throw InjectorError.TypeNotFound(M) }
        guard let `n`: N = get() else { throw InjectorError.TypeNotFound(N) }
        guard let `o`: O = get() else { throw InjectorError.TypeNotFound(O) }
        guard let `p`: P = get() else { throw InjectorError.TypeNotFound(P) }
        guard let `q`: Q = get() else { throw InjectorError.TypeNotFound(Q) }
        guard let `r`: R = get() else { throw InjectorError.TypeNotFound(R) }
        guard let `s`: S = get() else { throw InjectorError.TypeNotFound(S) }
        return function(`a`, `b`, `c`, `d`, `e`, `f`, `g`, `h`, `i`, `j`, `k`, `l`, `m`, `n`, `o`, `p`, `q`, `r`, `s`)
    }
    
    /**
     Injects specified method using arguments that has been registered with the `injector` instance.
     If an argument has not been registered, function is going to throw.
     */
    public func inject<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U>(function: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T) -> U) throws -> U {
        guard let `a`: A = get() else { throw InjectorError.TypeNotFound(A) }
        guard let `b`: B = get() else { throw InjectorError.TypeNotFound(B) }
        guard let `c`: C = get() else { throw InjectorError.TypeNotFound(C) }
        guard let `d`: D = get() else { throw InjectorError.TypeNotFound(D) }
        guard let `e`: E = get() else { throw InjectorError.TypeNotFound(E) }
        guard let `f`: F = get() else { throw InjectorError.TypeNotFound(F) }
        guard let `g`: G = get() else { throw InjectorError.TypeNotFound(G) }
        guard let `h`: H = get() else { throw InjectorError.TypeNotFound(H) }
        guard let `i`: I = get() else { throw InjectorError.TypeNotFound(I) }
        guard let `j`: J = get() else { throw InjectorError.TypeNotFound(J) }
        guard let `k`: K = get() else { throw InjectorError.TypeNotFound(K) }
        guard let `l`: L = get() else { throw InjectorError.TypeNotFound(L) }
        guard let `m`: M = get() else { throw InjectorError.TypeNotFound(M) }
        guard let `n`: N = get() else { throw InjectorError.TypeNotFound(N) }
        guard let `o`: O = get() else { throw InjectorError.TypeNotFound(O) }
        guard let `p`: P = get() else { throw InjectorError.TypeNotFound(P) }
        guard let `q`: Q = get() else { throw InjectorError.TypeNotFound(Q) }
        guard let `r`: R = get() else { throw InjectorError.TypeNotFound(R) }
        guard let `s`: S = get() else { throw InjectorError.TypeNotFound(S) }
        guard let `t`: T = get() else { throw InjectorError.TypeNotFound(T) }
        return function(`a`, `b`, `c`, `d`, `e`, `f`, `g`, `h`, `i`, `j`, `k`, `l`, `m`, `n`, `o`, `p`, `q`, `r`, `s`, `t`)
    }
    
    /**
     Injects specified method using arguments that has been registered with the `injector` instance.
     If an argument has not been registered, function is going to throw.
     */
    public func inject<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V>(function: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U) -> V) throws -> V {
        guard let `a`: A = get() else { throw InjectorError.TypeNotFound(A) }
        guard let `b`: B = get() else { throw InjectorError.TypeNotFound(B) }
        guard let `c`: C = get() else { throw InjectorError.TypeNotFound(C) }
        guard let `d`: D = get() else { throw InjectorError.TypeNotFound(D) }
        guard let `e`: E = get() else { throw InjectorError.TypeNotFound(E) }
        guard let `f`: F = get() else { throw InjectorError.TypeNotFound(F) }
        guard let `g`: G = get() else { throw InjectorError.TypeNotFound(G) }
        guard let `h`: H = get() else { throw InjectorError.TypeNotFound(H) }
        guard let `i`: I = get() else { throw InjectorError.TypeNotFound(I) }
        guard let `j`: J = get() else { throw InjectorError.TypeNotFound(J) }
        guard let `k`: K = get() else { throw InjectorError.TypeNotFound(K) }
        guard let `l`: L = get() else { throw InjectorError.TypeNotFound(L) }
        guard let `m`: M = get() else { throw InjectorError.TypeNotFound(M) }
        guard let `n`: N = get() else { throw InjectorError.TypeNotFound(N) }
        guard let `o`: O = get() else { throw InjectorError.TypeNotFound(O) }
        guard let `p`: P = get() else { throw InjectorError.TypeNotFound(P) }
        guard let `q`: Q = get() else { throw InjectorError.TypeNotFound(Q) }
        guard let `r`: R = get() else { throw InjectorError.TypeNotFound(R) }
        guard let `s`: S = get() else { throw InjectorError.TypeNotFound(S) }
        guard let `t`: T = get() else { throw InjectorError.TypeNotFound(T) }
        guard let `u`: U = get() else { throw InjectorError.TypeNotFound(U) }
        return function(`a`, `b`, `c`, `d`, `e`, `f`, `g`, `h`, `i`, `j`, `k`, `l`, `m`, `n`, `o`, `p`, `q`, `r`, `s`, `t`, `u`)
    }
    
    /**
     Injects specified method using arguments that has been registered with the `injector` instance.
     If an argument has not been registered, function is going to throw.
     */
    public func inject<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W>(function: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V) -> W) throws -> W {
        guard let `a`: A = get() else { throw InjectorError.TypeNotFound(A) }
        guard let `b`: B = get() else { throw InjectorError.TypeNotFound(B) }
        guard let `c`: C = get() else { throw InjectorError.TypeNotFound(C) }
        guard let `d`: D = get() else { throw InjectorError.TypeNotFound(D) }
        guard let `e`: E = get() else { throw InjectorError.TypeNotFound(E) }
        guard let `f`: F = get() else { throw InjectorError.TypeNotFound(F) }
        guard let `g`: G = get() else { throw InjectorError.TypeNotFound(G) }
        guard let `h`: H = get() else { throw InjectorError.TypeNotFound(H) }
        guard let `i`: I = get() else { throw InjectorError.TypeNotFound(I) }
        guard let `j`: J = get() else { throw InjectorError.TypeNotFound(J) }
        guard let `k`: K = get() else { throw InjectorError.TypeNotFound(K) }
        guard let `l`: L = get() else { throw InjectorError.TypeNotFound(L) }
        guard let `m`: M = get() else { throw InjectorError.TypeNotFound(M) }
        guard let `n`: N = get() else { throw InjectorError.TypeNotFound(N) }
        guard let `o`: O = get() else { throw InjectorError.TypeNotFound(O) }
        guard let `p`: P = get() else { throw InjectorError.TypeNotFound(P) }
        guard let `q`: Q = get() else { throw InjectorError.TypeNotFound(Q) }
        guard let `r`: R = get() else { throw InjectorError.TypeNotFound(R) }
        guard let `s`: S = get() else { throw InjectorError.TypeNotFound(S) }
        guard let `t`: T = get() else { throw InjectorError.TypeNotFound(T) }
        guard let `u`: U = get() else { throw InjectorError.TypeNotFound(U) }
        guard let `v`: V = get() else { throw InjectorError.TypeNotFound(V) }
        return function(`a`, `b`, `c`, `d`, `e`, `f`, `g`, `h`, `i`, `j`, `k`, `l`, `m`, `n`, `o`, `p`, `q`, `r`, `s`, `t`, `u`, `v`)
    }
    
    /**
     Injects specified method using arguments that has been registered with the `injector` instance.
     If an argument has not been registered, function is going to throw.
     */
    public func inject<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X>(function: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W) -> X) throws -> X {
        guard let `a`: A = get() else { throw InjectorError.TypeNotFound(A) }
        guard let `b`: B = get() else { throw InjectorError.TypeNotFound(B) }
        guard let `c`: C = get() else { throw InjectorError.TypeNotFound(C) }
        guard let `d`: D = get() else { throw InjectorError.TypeNotFound(D) }
        guard let `e`: E = get() else { throw InjectorError.TypeNotFound(E) }
        guard let `f`: F = get() else { throw InjectorError.TypeNotFound(F) }
        guard let `g`: G = get() else { throw InjectorError.TypeNotFound(G) }
        guard let `h`: H = get() else { throw InjectorError.TypeNotFound(H) }
        guard let `i`: I = get() else { throw InjectorError.TypeNotFound(I) }
        guard let `j`: J = get() else { throw InjectorError.TypeNotFound(J) }
        guard let `k`: K = get() else { throw InjectorError.TypeNotFound(K) }
        guard let `l`: L = get() else { throw InjectorError.TypeNotFound(L) }
        guard let `m`: M = get() else { throw InjectorError.TypeNotFound(M) }
        guard let `n`: N = get() else { throw InjectorError.TypeNotFound(N) }
        guard let `o`: O = get() else { throw InjectorError.TypeNotFound(O) }
        guard let `p`: P = get() else { throw InjectorError.TypeNotFound(P) }
        guard let `q`: Q = get() else { throw InjectorError.TypeNotFound(Q) }
        guard let `r`: R = get() else { throw InjectorError.TypeNotFound(R) }
        guard let `s`: S = get() else { throw InjectorError.TypeNotFound(S) }
        guard let `t`: T = get() else { throw InjectorError.TypeNotFound(T) }
        guard let `u`: U = get() else { throw InjectorError.TypeNotFound(U) }
        guard let `v`: V = get() else { throw InjectorError.TypeNotFound(V) }
        guard let `w`: W = get() else { throw InjectorError.TypeNotFound(W) }
        return function(`a`, `b`, `c`, `d`, `e`, `f`, `g`, `h`, `i`, `j`, `k`, `l`, `m`, `n`, `o`, `p`, `q`, `r`, `s`, `t`, `u`, `v`, `w`)
    }
    
    /**
     Injects specified method using arguments that has been registered with the `injector` instance.
     If an argument has not been registered, function is going to throw.
     */
    public func inject<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y>(function: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X) -> Y) throws -> Y {
        guard let `a`: A = get() else { throw InjectorError.TypeNotFound(A) }
        guard let `b`: B = get() else { throw InjectorError.TypeNotFound(B) }
        guard let `c`: C = get() else { throw InjectorError.TypeNotFound(C) }
        guard let `d`: D = get() else { throw InjectorError.TypeNotFound(D) }
        guard let `e`: E = get() else { throw InjectorError.TypeNotFound(E) }
        guard let `f`: F = get() else { throw InjectorError.TypeNotFound(F) }
        guard let `g`: G = get() else { throw InjectorError.TypeNotFound(G) }
        guard let `h`: H = get() else { throw InjectorError.TypeNotFound(H) }
        guard let `i`: I = get() else { throw InjectorError.TypeNotFound(I) }
        guard let `j`: J = get() else { throw InjectorError.TypeNotFound(J) }
        guard let `k`: K = get() else { throw InjectorError.TypeNotFound(K) }
        guard let `l`: L = get() else { throw InjectorError.TypeNotFound(L) }
        guard let `m`: M = get() else { throw InjectorError.TypeNotFound(M) }
        guard let `n`: N = get() else { throw InjectorError.TypeNotFound(N) }
        guard let `o`: O = get() else { throw InjectorError.TypeNotFound(O) }
        guard let `p`: P = get() else { throw InjectorError.TypeNotFound(P) }
        guard let `q`: Q = get() else { throw InjectorError.TypeNotFound(Q) }
        guard let `r`: R = get() else { throw InjectorError.TypeNotFound(R) }
        guard let `s`: S = get() else { throw InjectorError.TypeNotFound(S) }
        guard let `t`: T = get() else { throw InjectorError.TypeNotFound(T) }
        guard let `u`: U = get() else { throw InjectorError.TypeNotFound(U) }
        guard let `v`: V = get() else { throw InjectorError.TypeNotFound(V) }
        guard let `w`: W = get() else { throw InjectorError.TypeNotFound(W) }
        guard let `x`: X = get() else { throw InjectorError.TypeNotFound(X) }
        return function(`a`, `b`, `c`, `d`, `e`, `f`, `g`, `h`, `i`, `j`, `k`, `l`, `m`, `n`, `o`, `p`, `q`, `r`, `s`, `t`, `u`, `v`, `w`, `x`)
    }
    
    /**
     Injects specified method using arguments that has been registered with the `injector` instance.
     If an argument has not been registered, function is going to throw.
     */
    public func inject<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z>(function: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y) -> Z) throws -> Z {
        guard let `a`: A = get() else { throw InjectorError.TypeNotFound(A) }
        guard let `b`: B = get() else { throw InjectorError.TypeNotFound(B) }
        guard let `c`: C = get() else { throw InjectorError.TypeNotFound(C) }
        guard let `d`: D = get() else { throw InjectorError.TypeNotFound(D) }
        guard let `e`: E = get() else { throw InjectorError.TypeNotFound(E) }
        guard let `f`: F = get() else { throw InjectorError.TypeNotFound(F) }
        guard let `g`: G = get() else { throw InjectorError.TypeNotFound(G) }
        guard let `h`: H = get() else { throw InjectorError.TypeNotFound(H) }
        guard let `i`: I = get() else { throw InjectorError.TypeNotFound(I) }
        guard let `j`: J = get() else { throw InjectorError.TypeNotFound(J) }
        guard let `k`: K = get() else { throw InjectorError.TypeNotFound(K) }
        guard let `l`: L = get() else { throw InjectorError.TypeNotFound(L) }
        guard let `m`: M = get() else { throw InjectorError.TypeNotFound(M) }
        guard let `n`: N = get() else { throw InjectorError.TypeNotFound(N) }
        guard let `o`: O = get() else { throw InjectorError.TypeNotFound(O) }
        guard let `p`: P = get() else { throw InjectorError.TypeNotFound(P) }
        guard let `q`: Q = get() else { throw InjectorError.TypeNotFound(Q) }
        guard let `r`: R = get() else { throw InjectorError.TypeNotFound(R) }
        guard let `s`: S = get() else { throw InjectorError.TypeNotFound(S) }
        guard let `t`: T = get() else { throw InjectorError.TypeNotFound(T) }
        guard let `u`: U = get() else { throw InjectorError.TypeNotFound(U) }
        guard let `v`: V = get() else { throw InjectorError.TypeNotFound(V) }
        guard let `w`: W = get() else { throw InjectorError.TypeNotFound(W) }
        guard let `x`: X = get() else { throw InjectorError.TypeNotFound(X) }
        guard let `y`: Y = get() else { throw InjectorError.TypeNotFound(Y) }
        return function(`a`, `b`, `c`, `d`, `e`, `f`, `g`, `h`, `i`, `j`, `k`, `l`, `m`, `n`, `o`, `p`, `q`, `r`, `s`, `t`, `u`, `v`, `w`, `x`, `y`)
    }
    
    /**
     Injects specified method using arguments that has been registered with the `injector` instance.
     If an argument has not been registered, function is going to throw.
     */
    public func inject<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z, AA>(function: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z) -> AA) throws -> AA {
        guard let `a`: A = get() else { throw InjectorError.TypeNotFound(A) }
        guard let `b`: B = get() else { throw InjectorError.TypeNotFound(B) }
        guard let `c`: C = get() else { throw InjectorError.TypeNotFound(C) }
        guard let `d`: D = get() else { throw InjectorError.TypeNotFound(D) }
        guard let `e`: E = get() else { throw InjectorError.TypeNotFound(E) }
        guard let `f`: F = get() else { throw InjectorError.TypeNotFound(F) }
        guard let `g`: G = get() else { throw InjectorError.TypeNotFound(G) }
        guard let `h`: H = get() else { throw InjectorError.TypeNotFound(H) }
        guard let `i`: I = get() else { throw InjectorError.TypeNotFound(I) }
        guard let `j`: J = get() else { throw InjectorError.TypeNotFound(J) }
        guard let `k`: K = get() else { throw InjectorError.TypeNotFound(K) }
        guard let `l`: L = get() else { throw InjectorError.TypeNotFound(L) }
        guard let `m`: M = get() else { throw InjectorError.TypeNotFound(M) }
        guard let `n`: N = get() else { throw InjectorError.TypeNotFound(N) }
        guard let `o`: O = get() else { throw InjectorError.TypeNotFound(O) }
        guard let `p`: P = get() else { throw InjectorError.TypeNotFound(P) }
        guard let `q`: Q = get() else { throw InjectorError.TypeNotFound(Q) }
        guard let `r`: R = get() else { throw InjectorError.TypeNotFound(R) }
        guard let `s`: S = get() else { throw InjectorError.TypeNotFound(S) }
        guard let `t`: T = get() else { throw InjectorError.TypeNotFound(T) }
        guard let `u`: U = get() else { throw InjectorError.TypeNotFound(U) }
        guard let `v`: V = get() else { throw InjectorError.TypeNotFound(V) }
        guard let `w`: W = get() else { throw InjectorError.TypeNotFound(W) }
        guard let `x`: X = get() else { throw InjectorError.TypeNotFound(X) }
        guard let `y`: Y = get() else { throw InjectorError.TypeNotFound(Y) }
        guard let `z`: Z = get() else { throw InjectorError.TypeNotFound(Z) }
        return function(`a`, `b`, `c`, `d`, `e`, `f`, `g`, `h`, `i`, `j`, `k`, `l`, `m`, `n`, `o`, `p`, `q`, `r`, `s`, `t`, `u`, `v`, `w`, `x`, `y`, `z`)
    }
    
    /**
     Injects specified method using arguments that has been registered with the `injector` instance.
     If an argument has not been registered, function is going to throw.
     */
    public func inject<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z, AA, AB>(function: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z, AA) -> AB) throws -> AB {
        guard let `a`: A = get() else { throw InjectorError.TypeNotFound(A) }
        guard let `b`: B = get() else { throw InjectorError.TypeNotFound(B) }
        guard let `c`: C = get() else { throw InjectorError.TypeNotFound(C) }
        guard let `d`: D = get() else { throw InjectorError.TypeNotFound(D) }
        guard let `e`: E = get() else { throw InjectorError.TypeNotFound(E) }
        guard let `f`: F = get() else { throw InjectorError.TypeNotFound(F) }
        guard let `g`: G = get() else { throw InjectorError.TypeNotFound(G) }
        guard let `h`: H = get() else { throw InjectorError.TypeNotFound(H) }
        guard let `i`: I = get() else { throw InjectorError.TypeNotFound(I) }
        guard let `j`: J = get() else { throw InjectorError.TypeNotFound(J) }
        guard let `k`: K = get() else { throw InjectorError.TypeNotFound(K) }
        guard let `l`: L = get() else { throw InjectorError.TypeNotFound(L) }
        guard let `m`: M = get() else { throw InjectorError.TypeNotFound(M) }
        guard let `n`: N = get() else { throw InjectorError.TypeNotFound(N) }
        guard let `o`: O = get() else { throw InjectorError.TypeNotFound(O) }
        guard let `p`: P = get() else { throw InjectorError.TypeNotFound(P) }
        guard let `q`: Q = get() else { throw InjectorError.TypeNotFound(Q) }
        guard let `r`: R = get() else { throw InjectorError.TypeNotFound(R) }
        guard let `s`: S = get() else { throw InjectorError.TypeNotFound(S) }
        guard let `t`: T = get() else { throw InjectorError.TypeNotFound(T) }
        guard let `u`: U = get() else { throw InjectorError.TypeNotFound(U) }
        guard let `v`: V = get() else { throw InjectorError.TypeNotFound(V) }
        guard let `w`: W = get() else { throw InjectorError.TypeNotFound(W) }
        guard let `x`: X = get() else { throw InjectorError.TypeNotFound(X) }
        guard let `y`: Y = get() else { throw InjectorError.TypeNotFound(Y) }
        guard let `z`: Z = get() else { throw InjectorError.TypeNotFound(Z) }
        guard let `aa`: AA = get() else { throw InjectorError.TypeNotFound(AA) }
        return function(`a`, `b`, `c`, `d`, `e`, `f`, `g`, `h`, `i`, `j`, `k`, `l`, `m`, `n`, `o`, `p`, `q`, `r`, `s`, `t`, `u`, `v`, `w`, `x`, `y`, `z`, `aa`)
    }
    
    /**
     Injects specified method using arguments that has been registered with the `injector` instance.
     If an argument has not been registered, function is going to throw.
     */
    public func inject<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z, AA, AB, AC>(function: (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z, AA, AB) -> AC) throws -> AC {
        guard let `a`: A = get() else { throw InjectorError.TypeNotFound(A) }
        guard let `b`: B = get() else { throw InjectorError.TypeNotFound(B) }
        guard let `c`: C = get() else { throw InjectorError.TypeNotFound(C) }
        guard let `d`: D = get() else { throw InjectorError.TypeNotFound(D) }
        guard let `e`: E = get() else { throw InjectorError.TypeNotFound(E) }
        guard let `f`: F = get() else { throw InjectorError.TypeNotFound(F) }
        guard let `g`: G = get() else { throw InjectorError.TypeNotFound(G) }
        guard let `h`: H = get() else { throw InjectorError.TypeNotFound(H) }
        guard let `i`: I = get() else { throw InjectorError.TypeNotFound(I) }
        guard let `j`: J = get() else { throw InjectorError.TypeNotFound(J) }
        guard let `k`: K = get() else { throw InjectorError.TypeNotFound(K) }
        guard let `l`: L = get() else { throw InjectorError.TypeNotFound(L) }
        guard let `m`: M = get() else { throw InjectorError.TypeNotFound(M) }
        guard let `n`: N = get() else { throw InjectorError.TypeNotFound(N) }
        guard let `o`: O = get() else { throw InjectorError.TypeNotFound(O) }
        guard let `p`: P = get() else { throw InjectorError.TypeNotFound(P) }
        guard let `q`: Q = get() else { throw InjectorError.TypeNotFound(Q) }
        guard let `r`: R = get() else { throw InjectorError.TypeNotFound(R) }
        guard let `s`: S = get() else { throw InjectorError.TypeNotFound(S) }
        guard let `t`: T = get() else { throw InjectorError.TypeNotFound(T) }
        guard let `u`: U = get() else { throw InjectorError.TypeNotFound(U) }
        guard let `v`: V = get() else { throw InjectorError.TypeNotFound(V) }
        guard let `w`: W = get() else { throw InjectorError.TypeNotFound(W) }
        guard let `x`: X = get() else { throw InjectorError.TypeNotFound(X) }
        guard let `y`: Y = get() else { throw InjectorError.TypeNotFound(Y) }
        guard let `z`: Z = get() else { throw InjectorError.TypeNotFound(Z) }
        guard let `aa`: AA = get() else { throw InjectorError.TypeNotFound(AA) }
        guard let `ab`: AB = get() else { throw InjectorError.TypeNotFound(AB) }
        return function(`a`, `b`, `c`, `d`, `e`, `f`, `g`, `h`, `i`, `j`, `k`, `l`, `m`, `n`, `o`, `p`, `q`, `r`, `s`, `t`, `u`, `v`, `w`, `x`, `y`, `z`, `aa`, `ab`)
    }
    
}