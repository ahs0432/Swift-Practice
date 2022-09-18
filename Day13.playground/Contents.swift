import UIKit

// 상속, 위에서 아래로 내려온다.
class Friend {
    var name : String
    
    init (_ name: String) {
        self.name = name
    }
    
    func sayHi() {
        print("안녕?! 난 \(self.name) 라고 해~")
    }
}

class BestFriend : Friend {
    // override로 부모의 메소드를 가져왔다.
    override init (_ name : String) {
        // Super Init을 호출해줘야 함. (super를 이용한 부모의 메소드 사용)
        super.init("베프 " + name)
    }
    
    override func sayHi() {
        super.sayHi()
    }
}

let myFriend = Friend("찬스")

myFriend.sayHi()

let myBestFriend = BestFriend("강찬")

myBestFriend.sayHi()
myBestFriend.name
