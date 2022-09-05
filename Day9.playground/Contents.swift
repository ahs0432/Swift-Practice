import UIKit

// Generic
// <> 어떠한 자료형이던 받겠다
// 예제에서는 SomeElement를 사용했지만 T라고 명시하여 사용함 // Type의 약자로 추정
struct MyArray<SomeElement> {
    // Generic을 담은 빈 배열
    var elements : [SomeElement] = [SomeElement]()
    
    // 생성자
    init(_ elements : [SomeElement]) {
        self.elements = elements
    }
}

struct Friend {
    var name : String
}

var myIntArray = MyArray([1,2,3,4,5])
print("myIntArray : \(myIntArray)")

var myStringArray = MyArray(["가", "나", "다"])
print("myStringArray : \(myStringArray)")

let friend_01 = Friend(name: "강찬")
let friend_02 = Friend(name: "Chan")
let friend_03 = Friend(name: "Chance")

var myFriendsArray = MyArray([friend_01, friend_02, friend_03])
print("myFriendsArray : \(myFriendsArray)")
