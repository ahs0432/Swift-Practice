import UIKit

// Optional이란?
// 값이 있을 수 있고 없을 수 있다. (값이 있는지 모름)
var someVariable : Int? = nil
// nil은 Optional일 때만 사용이 가능함

if someVariable == nil {
    someVariable = 90
}

// 출력이 Optional로 돼있는 상태 : Optional(90)
print("someVariable: \(someVariable)")

// Unwrapping이란? 감싸져있는 것을 벗기는 것(추출) = Optional(90) -> 90
// 값이 있다면 대상 값을 가져와서 사용하겠다.
if let otherVariable = someVariable {
    print("Unwrap 됐다. 즉 값이 존재함. otherVariable : \(otherVariable)")
} else {
    print("값이 없다.")
}

someVariable = nil

// someVariable이 비어있다면.. 기본 값으로 이것을 설정하겠다.
let myValue = someVariable ?? 10
print("myValue: \(myValue)")


// Guard를 사용하는 함수를 만들어봄
var firstValue : Int? = 30
var secondValue : Int? = 30

print("firstValue \(firstValue)")
print("secondValue \(secondValue)")

// Guard를 이용하여 param 내 Optional을 Unwrapping함
unwrap(firstValue)
unwrap(secondValue)

func unwrap(_ param : Int?) {
    print("unwrap() called")
    guard let unWrappedParam = param else {
        return
    }
    print("unwrappedParam: \(unWrappedParam)")
}
