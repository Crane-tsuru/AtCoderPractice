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
    
    var cardsColor = readInts()
    
    var countersByColor: [Int] = [0, 0, 0]
    
    for cardsColor in cardsColor {
        let counterIndex = (cardsColor - 1) % 3
        countersByColor[counterIndex] += 1
    }
    
    var combinationCounter = 0
    
    for colorCounter in countersByColor {
        if colorCounter > 1 {
            combinationCounter += colorCounter*(colorCounter - 1) / 2
        }
    }
    
    print(combinationCounter)
}

main19()
