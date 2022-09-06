import UIKit

// 매개변수로서 Closure

// completion 이라는 Closure를 매개변수로 가지는 메소드 정의
func sayHi(completion: () -> Void) {
    print("sayHi() called")
    sleep(2) // 2초 멈추기
    // completion이라는 Closure 실행
    completion()
}

// 메소드 호출부에서 이벤트 종료를 인지할 수 있음.
sayHi(completion: {
    print("2초가 지났다.")
})

// Closure에 대한 매개 변수 내용을 적지 않을 수 있음.
sayHi() {
    print("2초가 지났다.")
}

sayHi {
    print("2초가 지났다.")
}


// 매개변수로서 데이터를 반환하는 Closure
func sayHiWithName(completion: (String) -> Void) {
    print("sayHiWithName() called")
    sleep(2)
    // Closure를 실행과 동시에 데이터를 반환함.
    completion("오늘도 열공.")
}

sayHiWithName(completion: { (comment: String) in
    print("2초가 지난 뒤 이야기 했다. comment: \(comment)")
})

sayHiWithName(completion: { comment in
    print("2초가 지난 뒤 이야기 했다. comment: \(comment)")
})

sayHiWithName { comment in
    print("2초가 지난 뒤 이야기 했다. comment: \(comment)")
}

// 첫번째 반환된 매개 값을 출력하게 됨.
sayHiWithName {
    print("2초가 지난 뒤 이야기 했다. comment: \($0)")
}


// 매개변수로서 여러 개의 데이터를 반환하는 Closure
func sayHiWithFullName(completion: (String, String) -> Void) {
    print("sayHiWithFullName() called")
    sleep(2)
    // Closure를 실행과 동시에 데이터를 반환함.
    completion("열심히", "하자")
}

sayHiWithFullName { first, second in
    print("첫 번쨰: \(first), 두 번째: \(second)")
}

// _를 이용하여 특정 변수를 생략할 수 있음.
sayHiWithFullName { _, second in
    print("두 번째: \(second)")
}

sayHiWithFullName {
    print("첫 번쨰: \($0), 두 번째: \($1)")
}


// Completion을 Optional로 만들 수 있음
func sayHiOptional (completion: (() -> Void)? = nil) {
    print("sayHiOptional() called")
    sleep(2)
    // Closure를 실행과 동시에 데이터를 반환함.
    completion?()
}

sayHiOptional()

sayHiOptional(completion: {
    print("2초가 소요됐다.")
})


// (String) -> Void
//func completion(userInput: String) {
//
//}

// (String, String) -> Void
//func completion(first: String, second: String) {
//
//}

// (Int) -> String
//func transform(number: Int) -> String {
//    return "숫자 \(number)"
//}

var myNumbers : [Int] = [0, 1, 2, 3, 4, 5]

//var transformedNumbers = myNumbers.map { aNumber in
//    return "숫자 : \(aNumber)"
//}

//var transformedNumbers = myNumbers.map { (aNumber: Int) -> String in
//    return "숫자 : \(aNumber)"
//}

//var transformedNumbers = myNumbers.map { (aNumber: Int) -> String in
//    return "숫자 : \(aNumber)"
//}

var transformedNumbers = myNumbers.map {
    return "숫자 : \($0)"
}
