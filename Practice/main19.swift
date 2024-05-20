func readInt() -> Int {
    let inputInt = Int(readLine()!)!
    return inputInt
}


func readInts() -> [Int] {
    let inputIntList = readLine()!.split(separator: " ").map { Int(String($0))! }
    return inputIntList
}


func main19() {
    let N = readInt()
    
    var cardsNum = readInts()
    
    var count = 0
    
    while cardsNum.isEmpty {
        let compareNum = cardsNum.removeFirst()
        
        for cardNum in cardsNum {
            
            if compareNum == cardNum {
                count += 1
            }
            
        }
        
    }
    
    print(count)
    
}

main19()
