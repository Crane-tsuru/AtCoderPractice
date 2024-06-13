/*
 TLEとなる。改善が必要
*/


//func readInt() -> Int {
//    let inputInt = Int(readLine()!)!
//    return inputInt
//}
//
//func readInts() -> [Int] {
//    let inputIntList = readLine()!.split(separator: " ").map { Int(String($0))! }
//    return inputIntList
//}
//
//
//func main22() {
//    let _ = readInt()
//    
//    var list_A = readInts()
//    
//    let goal = 100000
//    
//    var count = 0
//
//    
//    while !list_A.isEmpty {
//        var value_A = list_A.removeFirst()
//        let rest = goal - value_A
//        for restElement in list_A {
//            if rest == restElement {
//                count += 1
//            }
//        }
//    }
//    
//    print(count)
//}
//
//main22()
