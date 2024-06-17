private func readInt() -> Int {
    let inputInt = Int(readLine()!)!
    return inputInt
}

private func readInts() -> [Int] {
    let inputIntList = readLine()!.split(separator: " ").map { Int(String($0))! }
    return inputIntList
}


private func main27() {
    let N = readInt()
    
    var A_values = readInts()
    
    A_values.sort { $0 < $1 }
    
    for index in 0..<N {
        print(A_values[index], terminator: " ")
    }
}

main27()
