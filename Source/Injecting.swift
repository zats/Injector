public enum InjectorError: ErrorType {
    case TypeNotFound(Any.Type)
}

extension Injector {
    public func inject<A, B>(function: (A) -> B) throws -> B {
        guard let `a`: A = get() else { throw InjectorError.TypeNotFound(A) }
        return function(`a`)
    }
    
    public func inject<A, B, C>(function: (A, B) -> C) throws -> C {
        guard let `a`: A = get() else { throw InjectorError.TypeNotFound(A) }
        guard let `b`: B = get() else { throw InjectorError.TypeNotFound(B) }
        return function(`a`, `b`)
    }
    
    public func inject<A, B, C, D>(function: (A, B, C) -> D) throws -> D {
        guard let `a`: A = get() else { throw InjectorError.TypeNotFound(A) }
        guard let `b`: B = get() else { throw InjectorError.TypeNotFound(B) }
        guard let `c`: C = get() else { throw InjectorError.TypeNotFound(C) }
        return function(`a`, `b`, `c`)
    }
    
    public func inject<A, B, C, D, E>(function: (A, B, C, D) -> E) throws -> E {
        guard let `a`: A = get() else { throw InjectorError.TypeNotFound(A) }
        guard let `b`: B = get() else { throw InjectorError.TypeNotFound(B) }
        guard let `c`: C = get() else { throw InjectorError.TypeNotFound(C) }
        guard let `d`: D = get() else { throw InjectorError.TypeNotFound(D) }
        return function(`a`, `b`, `c`, `d`)
    }
    
    public func inject<A, B, C, D, E, F>(function: (A, B, C, D, E) -> F) throws -> F {
        guard let `a`: A = get() else { throw InjectorError.TypeNotFound(A) }
        guard let `b`: B = get() else { throw InjectorError.TypeNotFound(B) }
        guard let `c`: C = get() else { throw InjectorError.TypeNotFound(C) }
        guard let `d`: D = get() else { throw InjectorError.TypeNotFound(D) }
        guard let `e`: E = get() else { throw InjectorError.TypeNotFound(E) }
        return function(`a`, `b`, `c`, `d`, `e`)
    }
    
    public func inject<A, B, C, D, E, F, G>(function: (A, B, C, D, E, F) -> G) throws -> G {
        guard let `a`: A = get() else { throw InjectorError.TypeNotFound(A) }
        guard let `b`: B = get() else { throw InjectorError.TypeNotFound(B) }
        guard let `c`: C = get() else { throw InjectorError.TypeNotFound(C) }
        guard let `d`: D = get() else { throw InjectorError.TypeNotFound(D) }
        guard let `e`: E = get() else { throw InjectorError.TypeNotFound(E) }
        guard let `f`: F = get() else { throw InjectorError.TypeNotFound(F) }
        return function(`a`, `b`, `c`, `d`, `e`, `f`)
    }
    
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
    
}