/*
 
 Double / Int = 0となる点に注意
 
*/


func readInt() -> Int {
    let inputNumber = Int(readLine()!)!
    return inputNumber
}

func readInts() -> [Int] {
    let inputNumbers = readLine()!.split(separator: " ").map { Int(String($0))! }
    return inputNumbers
}


func main23() {
    let N = readInt()
    
    
    let values_blue: [Int] = readInts()
    
    let values_red: [Int] = readInts()
    
    let properbility: Double = 1.0/Double(N)
    
    var sum = 0
    
    
    for index in 0..<N {
        sum += N*(values_red[index] + values_blue[index])
    }
    
    let result = Double(sum) * properbility*properbility
    print(result)
}

main23()
