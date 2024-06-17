private func readTwoInts() -> (Int, Int) {
    let inputTwoInts = readLine()!.split(separator: " ").map { Int(String($0))! }
    return (inputTwoInts[0], inputTwoInts[1])
}
