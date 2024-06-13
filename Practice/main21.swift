//func readTwoInts() -> (Int, Int) {
//    let inputTwoInts = readLine()!.split(separator: " ").map { Int(String($0))! }
//    return (inputTwoInts[0], inputTwoInts[1])
//}
//
///*
// n < rは問題で指定がない限り考慮しない
//*/
//
//func makeCombination(_ n: Int, _ r: Int) -> Int {
//    
//    if n == r {
//        return 1
//    }
//    
//    var bunshi = 1 // n!
//    var bunbo1 = 1 // r!
//    var bunbo2 = 1 // (n-r)!
//    
//    for i in 1...n {
//        bunshi = bunshi * i
//    }
//    
//    for i in 1...r {
//        bunbo1 = bunbo1 * i
//    }
//    
//    for i in 1...(n-r) {
//        bunbo2 = bunbo2 * i
//    }
//    
//    let result = bunshi / (bunbo1 * bunbo2)
//    return result
//}
//
//
//
//
//func main21() {
//    let (n, r) = readTwoInts()
//    
//    let combination = makeCombination(n, r)
//    
//    print(combination)
//}
//
//main21()
