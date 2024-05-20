// 関数はコメントアウトを外して採用

//func readInt() -> Int {
//    let inputInt = Int(readLine()!)!
//    return inputInt
//}
//
//
//func readInts() -> [Int] {
//    let inputIntList = readLine()!.split(separator: " ").map { Int(String($0))! }
//    return inputIntList
//}


func main18() {
    let N = readInt()
    let prices = readInts()
    
    var count = 0
    
    let sum = 500
    
    for pricesIndex in 0..<(N-1) {
        
        for anotherPriceIndex in pricesIndex+1..<N {
            
            if prices[pricesIndex] + prices[anotherPriceIndex] == sum {
                count += 1
            }
            
        }
        
    }
    
    print(count)
}


//main18() // 提出時呼び出しの必要あり
