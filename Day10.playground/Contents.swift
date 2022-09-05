import UIKit

// Closure에 대해 알아봄

// String을 반환하는 Closure
let myName : String = {
    // myName으로 들어간다.
    // myName이 실행되면서 안쪽에 구문이 실행되는 형태.
    return "Chance"
}()

print(myName)

// 자료형을 명시하지 않은 상태
let myRealName = { (name: String) -> String in
    return "개발하는 \(name)"
}

// 자료형 명시 시
/*
let myRealName = (String) -> String = { (name: String) -> String in
    return "개발하는 \(name)"
}
*/

myRealName("강찬")

// 매개변수를 갖고 이를 이용한 로직 처리가 가능함
let myRealNameLogic : (String) -> Void = { (name : String) in
    print("개발하는 \(name)")
}

myRealNameLogic("강찬")
