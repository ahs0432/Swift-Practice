import UIKit

// 함수 정의 시 매개변수(파라미터) 이름 지정 관련
func myFunction(name : String) -> String{
    return "안녕하세요! \(name) 입니다."
}

// 함수, 메소드를 호출 / Call
myFunction(name: "Chan")

// 다른 이름을 사용할 수 있게 하는 것임. name -> with
func myFunctionSecond(with name : String) -> String{
    return "안녕하세요! \(name) 입니다."
}

myFunctionSecond(with: "강찬")

// 이름을 쓰고 싶지 않을 때는 _를 대체 이름으로 지정하면 가능
func myFunctionThird(_ name : String) -> String{
    return "안녕하세요! \(name) 입니다."
}

myFunctionThird("찬스")
