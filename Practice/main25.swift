private func readInt() -> Int {
    let inputInt = Int(readLine()!)!
    return inputInt
}

private func readInts() -> [Int] {
    let inputIntList = readLine()!.split(separator: " ").map { Int(String($0))! }
    return inputIntList
}


func main25() {
    let N = readInt()
    
    let list_A = readInts()
    let list_B = readInts()
    
    let properbility_A: Double = 1.0 / 3.0
    let properbility_B: Double = 1.0 - properbility_A
    
    var expection: Double = 0
    
    for index in 0..<N {
        expection += Double(list_A[index]) * properbility_A + Double(list_B[index]) * properbility_B
    }
    
    print(expection)
}

//main25()
