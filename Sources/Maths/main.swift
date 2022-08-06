import CollectionsBenchmark
import Darwin

var e: Double = exp(1)
var pi: Double = .pi

var benchmark = Benchmark(title: "Maths")

benchmark.add(
    title: "abs",
    input: Int.self
) { input in
    return { _ in
        for _ in 1...input {
            blackHole(Double(bitPattern: (0x7fffffffffffffff & e.bitPattern)))
            //blackHole(abs(e))
        }
    }
}

benchmark.add(
    title: "acos",
    input: Int.self
) { input in
    return { _ in
        for _ in 1...input {
            blackHole(acos(e))
        }
    }
}

benchmark.add(
    title: "asin",
    input: Int.self
) { input in
    return { _ in
        for _ in 1...input {
            blackHole(asin(e))
        }
    }
}

benchmark.add(
    title: "cbrt",
    input: Int.self
) { input in
    return { _ in
        for _ in 1...input {
            blackHole(cbrt(e))
        }
    }
}

benchmark.add(
    title: "ceil",
    input: Int.self
) { input in
    return { _ in
        for _ in 1...input {
            blackHole(ceil(e))
        }
    }
}

benchmark.add(
    title: "cos",
    input: Int.self
) { input in
    return { _ in
        for _ in 1...input {
            blackHole(cos(e))
        }
    }
}

benchmark.add(
    title: "cosh",
    input: Int.self
) { input in
    return { _ in
        for _ in 1...input {
            blackHole(cosh(e))
        }
    }
}

benchmark.add(
    title: "pow",
    input: Int.self
) { input in
    return { _ in
        for _ in 1...input {
            blackHole(pow(e, pi))
        }
    }
}

benchmark.main()
