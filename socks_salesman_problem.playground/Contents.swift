import UIKit



let n = 9

var array = [10,20,20,10,10,30,50,10,20]

func sockMerchant(n: Int, ar: [Int]) -> Int {
    var doneArr : [Int] = [Int]()
    var match : Int = 0
    for i in 0..<n {
        let currentColor = ar[i]
        if let index = doneArr.firstIndex(of: currentColor) {
            
                match = match + 1
                doneArr.remove(at: index)
            
        }else{
            doneArr.append(currentColor)
        }
    }
    return match
}

let result = sockMerchant(n: n, ar: array)
print(result)
