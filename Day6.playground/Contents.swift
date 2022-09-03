import UIKit

// Class / Struct

// Struct
// 유튜버 데이터 모델 - struct / 구조체
struct YoutuberStruct {
    var name : String
    var subscribersCount : Int
}

// YoutuberStruct 구조체를 이용한 chan 변수 선언
var chan = YoutuberStruct(name: "Chan", subscribersCount: 50000000)
// chanClone 변수에 chan 변수 내용을 담기
var chanClone = chan

// 기존 내용 확인
print("chanClone.name: \(chanClone.name)")

// 내용을 변경 및 확인
chanClone.name = "Chance"
print("chanClone.name: \(chanClone.name)")
print("chan.name: \(chan.name)")

// 다른 메모리를 바라보기 때문에 다른 값을 출력하게 됨.


// Class
// 데이터 덩어리 형태로 사용
class YoutuberClass {
    var name : String
    var subscribersCount : Int
    // 생성자를 만들고 초기화(Initialize)
    // 메모리에 올리는 작업을 진행하게 된다.
    // 매개변수를 가진 생성자 메소드를 만들어야 매개변수를 넣어서 그 값을 가진 객체(Object)를 만들 수 있음.
    init(name: String, subscribersCount: Int) {
        self.name = name
        self.subscribersCount = subscribersCount
    }
}

var chance = YoutuberClass(name: "Chan", subscribersCount: 50000000)
var chanceClone = chance

// 기존 내용 확인
print("chanceClone.name: \(chanceClone.name)")

// 내용을 변경 및 확인
chanceClone.name = "Chance"
print("chanceClone.name: \(chanceClone.name)")
print("chance.name: \(chance.name)")

// 동일한 메모리를 바라보기 때문에 같은 값을 출력하게 됨.
