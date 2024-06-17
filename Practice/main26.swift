private func readInt() -> Int {
    let inputNumber = Int(readLine()!)!
    return inputNumber
}

func main26() {
    let N = readInt()
    
    let properbility: Double = 1.0 / Double(N)
    
    var expectation: Double = 0.0
    
    for k in 1...N {
        expectation += 1.0/Double(k)
    }
    
    expectation = expectation * Double(N)
    print(expectation)
    
}

//main26()
