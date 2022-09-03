import UIKit

// range (범위)
// 0...5
// 0, 1, 2, 3, 4, 5
for i in 0...5 {
    print("i: \(i)")
}

// 0..<5
// 0, 1, 2, 3, 4
for i in 0..<5 {
    print("i: \(i)")
}

// 짝수만 구하기
for i in 0..<5 where i % 2 == 0{
    print("i: \(i)")
}

//var randomInts: [Int] = []
var randomInts: [Int] = [Int]()

// 25번 그냥 반복
for _ in 0..<25 {
    // Random 0~100 사이
    let randomNumber = Int.random(in: 0...100)
    randomInts.append(randomNumber)
}

print("randomInts: \(randomInts)")
