////
////  mainB.swift
////  Practice
////
////  Created by 鶴見駿 on 2024/05/18.
////
//
//func readInt() -> Int {
//    return Int(readLine()!)!
//}
//
//func readInts() -> [Int] {
//    return readLine()!.split(separator: " ").map { Int(String($0))! }
//}
//
//func readIntString() -> (String, Int) {
//    let tupple = readLine()!.split(separator: " ").map { String($0) }
//    return (tupple[0], Int(tupple[1])!)
//}
//
//func mainB() {
//    let N = readInt()
//    
//    var SCList: [(String, Int)] = []
//    
//    for i in 0..<N {
//        let sc = readIntString()
//        SCList.append(sc)
//    }
//    
//    var T = 0
//    for list in SCList {
//        T += list.1
//    }
//    
//    SCList.sort { $0.0 < $1.0 }
//    
//    let ansIndex = T % N
//    
//    print(SCList[ansIndex].0)
//}
//
//mainB()
