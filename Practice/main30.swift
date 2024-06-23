private func readTwoInts() -> (Int, Int) {
    let inputTwoInts = readLine()!.split(separator: " ").map { Int(String($0))! }
    return (inputTwoInts[0], inputTwoInts[1])
}


func main30() {
    let (N, W) = readTwoInts()
    var list_WeightAndValue:[(Int, Int)] = []
    
    for _ in 0..<N {
        let NW = readTwoInts()
        
        list_WeightAndValue.append(NW)
        
    }
    
    var maxValue: [Int] = Array(repeating: 0, count: W)
    
    for limit in 1...W {
        for (weight, value) in list_WeightAndValue {
            if weight <= limit {
                if maxValue[limit - 1] < value {
                    maxValue[limit - 1] = value
                }
            }
        }
    }
}

main30()
