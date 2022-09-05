import UIKit

// Property observer (값이 설정될 때마다 특정 동작을 수행함)
// willSet은 이전 값을 확인하고 전달, didSet은 설정된 후의 값을 전달
var myAge = 0 {
    willSet{
        print("값이 설정될 예정이다. myAge: \(myAge)")
    } didSet {
        print("값이 설정되었다. myAge: \(myAge)")
    }
}

myAge = 10
myAge = 1000
