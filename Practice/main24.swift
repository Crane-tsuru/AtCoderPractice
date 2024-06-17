//func readInt() -> Int {
//    let inputNumber = Int(readLine()!)!
//    return inputNumber
//}
//
//func readTwoInts() -> (Int, Int) {
//    let inputTwoInts = readLine()!.split(separator: " ").map { Int(String($0))! }
//    return (inputTwoInts[0], inputTwoInts[1])
//}


func main24() {
    let N = readInt()
    
    var PQ_List: [(Int, Int)] = []
    
    for i in 0..<N {
        let (P, Q) = readTwoInts()
        PQ_List.append((P, Q))
    }
    
    var result: Double = 0.0
    
    for (P, Q) in PQ_List {
        let possibility = 1.0 / Double(P)
        
        result += Double(Q) * possibility
    }
    
    print(result)
}

main24()
