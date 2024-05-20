//
//  mainC.swift
//  Practice
//
//  Created by 鶴見駿 on 2024/05/18.
//
private func readInt() -> Int {
    return Int(readLine()!)!
}

private readInts() -> [Int] {
    return readLine()!.split(separator: " ").map { Int(String($0))! }
}

func mainC() {
    let N = readInt()
    
    var acList: [[Int]] = []
    
    for i in 0..<N {
        let ac = readInts()
        acList.append(ac)
    }
    
    var isDelete: [Bool] = Array(repeating: false, count: N)
    
    for acElement in acList {
        let (a, c) = (acElement[0], acElement[1])
        
        for (index, anotherElement) in acList.enumerated() {
            if c < anotherElement[1] && a > anotherElement[0] {
                acList.removeAll(where: { $0 == anotherElement })
                isDelete[index] = true
            }
        }
    }
    
    print(acList.count)
    
    for (index, judge) in isDelete.enumerated() {
        if !judge {
            print(index+1, terminator: " ")
        }
    }
    
}

mainC()
