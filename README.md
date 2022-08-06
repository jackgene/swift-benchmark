# SwiftBenchmark

Run benchmark:
```shell
swift run -c release Copy run --cycles 5 --max-size 64 out/Copy.json
swift run -c release Maths run --cycles 5 out/Maths.json
```

Render report:
```shell
swift run -c release Copy render out/Copy.json out/Copy.svg
swift run -c release Maths render out/Maths.json out/Maths.svg
```
