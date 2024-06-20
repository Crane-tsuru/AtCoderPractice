private func readInt() -> Int {
    let inputInt = Int(readLine()!)!
    return inputInt
}


func main29() {
    let N = readInt()
    
    var stepsCountList: [Int] = Array(repeating: 0, count: N+1)
    stepsCountList[0] = 1
    
    for i in 0..<N {
        
        if stepsCountList[i] > 0 {
            
            let stepToWhere = i + 1
            
            stepsCountList[stepToWhere] += stepsCountList[i]
            
            let twoStepsToWhere = i + 2
            
            if twoStepsToWhere <= N {
                stepsCountList[twoStepsToWhere] += stepsCountList[i]
            }
        }
    }
    
    print(stepsCountList[N])
}

main29()
