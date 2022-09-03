import UIKit

// enum : 타입을 나눈다고 볼 수 있다(?)

// 학교 - 초, 중, 고
// 아래 예제는 값을 가지고 있는 형태가 아님
enum School {
//    case elementary
//    case middle
//    case high
    case elementary, middle, high
}

// var : 변경이 가능한 값 (변수) / let : 변경이 불가능한 값 (상수)
let yourSchool = School.high
//print("yourSchool: \(yourSchool)")
print("yourSchool:", yourSchool)

// 원하는 타입의 값을 명시해줄 수 있음
enum Grade : Int {
    case first = 1
    case second = 2
}

let yourGrade = Grade.second
// 아예 rawValue를 지정해버리는 방법도 존재함
//let yourGrade = Grade.second.rawValue

// 아래와 같이 출력 시 enum의 명칭을 출력함
print("yourGrade: \(yourGrade)")

// 아래와 같이 진행해야만 정상적으로 값을 출력함
print("yourGrade: \(yourGrade.rawValue)")

enum SchoolDetail {
    case elementary(name : String)
    case middle(name : String)
    case high(name : String)
    
    // getName 함수 호출 시 String을 반환한다.
    func getName() -> String {
        switch self {
        case .elementary(let name):
            return name
        case let .middle(name):
            return name
        case let .high(name):
            return name
        }
    }
}

// 각 타입을 나눈 값에 지정할 값을 입력하는 방식으로 사용 가능
let yourMiddleSchoolName = SchoolDetail.middle(name: "OO중학교")
// 이렇게 하는 경우 middle(name: "OO중학교")
print("yourMiddleSchoolName: \(yourMiddleSchoolName)")
print("yourMiddleSchoolName: \(yourMiddleSchoolName.getName())")
