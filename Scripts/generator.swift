#!/usr/bin/env xcrun swift

// Generates a Swift file with implementation of injection for a ridicolously high number of arguments

import Foundation

let generics = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
let padding = "    "

extension Array {
    subscript(safe index: Int) -> Element? {
        return indices ~= index ? self[index] : .None
    }
}

func genericTypeForPosition(x: Int) -> String {
    let max = generics.count
    switch x {
    case _ where x < max: return generics[x % max]
    default: return generics[x / max - 1] + generics[x % max]
    }
}

func commaConcat(xs: [String]) -> String {
    return xs.joinWithSeparator(", ")
}

func curryDefinitionGenerator(arguments arguments: Int) -> String {
    
    let genericParameters = (0..<arguments).map(genericTypeForPosition) // ["A", "B", "C"]
    let genericTypeDefinition = "<\(commaConcat(genericParameters))>" // "<A, B, C>"
    
    let inputParameters = Array(genericParameters[0..<arguments - 1]) // ["A", "B"]
    let lowerFunctionArguments = inputParameters.map { "`\($0.lowercaseString)`" } // ["`a`", "`b`"]
    let returnType = genericParameters.last! // "C"
    
    let functionArguments = "(\(commaConcat(inputParameters)))" // "(A, B)"
    let innerFunctionArguments = commaConcat(lowerFunctionArguments) // "`a`, `b`"
    
    let guards = zip(inputParameters, lowerFunctionArguments).map{ A, a in // guard let a: A = get() else { throw InjectorError.TypeNotFound(A) }
        return "guard let \(a): \(A) = get() else { throw InjectorError.TypeNotFound(\(A)) }"
    }
    
    let functionDefinition = "function(\(innerFunctionArguments))" // return function(`a`, `b`)
    
    let joinedGuards = guards.joinWithSeparator("\n\(padding)")
    let implementation = "\(joinedGuards)\n\(padding)return \(functionDefinition)"  // guard let b: B = get() else { throw InjectorError.TypeNotFound(B) } return f(a, b)
    let documentation = [
        "/**",
        " Injects specified method using arguments that has been registered with the `injector` instance.",
        " If an argument has not been registered, function is going to throw.",
        " */"
    ]
    
    let curry = [
        "public func inject\(genericTypeDefinition)(function: \(functionArguments) -> \(returnType)) throws -> \(returnType) {",
        "\(padding)\(implementation)",
        "}"
    ]
    
    return documentation.joinWithSeparator("\n") + "\n" + curry.joinWithSeparator("\n")
}

func errorDefinition() -> String {
    let components = [
        "/**",
        " Error being thrown during injection if an instance has not been registered with injector.",
        " */",
        "public enum InjectorError: ErrorType {",
        "\(padding)/**",
        "\(padding) Error being thrown during injection if an instance has not been registered with injector.",
        "\(padding) Contains first type that has not been registered with injector.",
        "\(padding) */",
        "\(padding)case TypeNotFound(Any.Type)",
        "}"
    ]
    return components.joinWithSeparator("\n")
}

func wrapInExtension(generated: String) -> String {
    let paddedGenerated = generated.componentsSeparatedByString("\n").joinWithSeparator("\n\(padding)")
    let extesnionComponents = [
        "extension Injector {",
        "\(padding)\(paddedGenerated)",
        "}"
    ]
    return extesnionComponents.joinWithSeparator("\n")
}

print("Generating 💬")

let input = Process.arguments[safe: 1] ?? "20"
let limit = Int(input)!

let start = 2
let curries = (start..<limit).map { curryDefinitionGenerator(arguments: $0) }

let joinedCurries = curries.joinWithSeparator("\n\n") + "\n"
let output = errorDefinition() + "\n\n" + wrapInExtension(joinedCurries)

let outputPath = "Sources/Injecting.swift"
let currentPath = NSURL(fileURLWithPath: NSFileManager.defaultManager().currentDirectoryPath)
let currySwiftPath = currentPath.URLByAppendingPathComponent(outputPath)

do {
    try output.writeToURL(currySwiftPath, atomically: true, encoding: NSUTF8StringEncoding)
} catch let e as NSError {
    print("An error occurred while saving the generated functions. Error: \(e)")
}

print("Done, curry functions files written at \(outputPath) 👍")