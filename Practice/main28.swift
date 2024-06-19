private func readInt() -> Int {
    let inputInt = Int(readLine()!)!
    return inputInt
}

private func readInts() -> [Int] {
    let inputIntList = readLine()!.split(separator: " ").map { Int(String($0))! }
    return inputIntList
}

func main28() {
    let N = readInt()
    
    let h_values = readInts()
    
    var attempt: [Int] = Array(repeating: Int.max, count: N)
    attempt[0] = 0
    
    for i in 0..<N-1 {
        let jump_one_cost = abs(h_values[i] - h_values[i+1])
        
        let nextNodeCost = attempt[i] + jump_one_cost
        
        if nextNodeCost < attempt[i+1] {
            attempt[i+1] = nextNodeCost
        }
        
        if i < (N-2) {
            let jump_two_cost = abs(h_values[i] - h_values[i+2])
            
            let twoStepsNodeCost = attempt[i] + jump_two_cost
            
            if twoStepsNodeCost < attempt[i+2] {
                attempt[i+2] = twoStepsNodeCost
            }
        }
    }
    
    print(attempt[N-1])
}

main28()
