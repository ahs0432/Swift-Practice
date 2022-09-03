import UIKit

// Collection Type : 데이터를 모아둔 것.
// Array(배열), Sets, Dictionary
// 배열 선언 방법
var myArray : [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

/*
for item in myArray {
    print("item: \(item)")
}
*/

/*
for item in myArray where item > 5 {
    print("item: \(item)")
}
*/

for item in myArray where item % 2 == 0 {
    print("짝수: \(item)")
}
