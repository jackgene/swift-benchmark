import CollectionsBenchmark

struct Data {
    var bytes: [Int8] = Array(repeating: 0, count: 128*1024*1024)
}

var benchmark = Benchmark(title: "Copy")

benchmark.add(
    title: "copy without write",
    input: Int.self
) { input in
    return { timer in
        var data1 = Data()
        var data2 = Data()

        timer.measure {
            for n in 1...input {
                blackHole(
                    {
                        if n%2 == 0 {
                            data1 = data2
                        } else {
                            data2 = data1
                        }
                    }()
                )
            }
        }
    }
}

benchmark.add(
    title: "copy with write",
    input: Int.self
) { input in
    return { timer in
        var data1 = Data()
        var data2 = Data()

        timer.measure {
            for n in 1...input {
                blackHole(
                    {
                        if n%2 == 0 {
                            data1 = data2
                            data1.bytes[0] += 1
                        } else {
                            data2 = data1
                            data2.bytes[0] += 1
                        }
                    }()
                )
            }
        }
    }
}

benchmark.main()
