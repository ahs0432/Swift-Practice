import UIKit

// 객체를 만들 수 있도록 틀을 만들어둔 것
class MyFriend {
    var name: String
    
    init (_ name: String = "이름없음") {
        self.name = name
        print("init() MyFriend가 메모리에 올라감")
    }
    
    deinit {
        print("deinit() 메모리에서 사라짐 - \(self.name)")
    }
    
    // deinit 검증을 위한 작성
    var calledTimes = 0
    let MAX_TIMES = 5
    
    static var instancesOfSelf = [MyFriend]()
    class func destorySelf(object: MyFriend) {
        instancesOfSelf = instancesOfSelf.filter{ (aFriend : MyFriend) in
            aFriend !== object
        }
    }
    
    func call() {
        calledTimes += 1
        print("called \(calledTimes)")
        if calledTimes > MAX_TIMES {
            MyFriend.destorySelf(object: self)
        }
    }
}

let myFriend = MyFriend("강찬")
let aFriend = MyFriend()

// Unmanaged.passUnretained(객체).toOpaque()
// 로 해당 객체의 메모리 주소를 프린트 할 수 있습니다.
let anObjectMemoryAddress = Unmanaged.passUnretained(aFriend).toOpaque()
let secondeMemoryAddress = Unmanaged.passUnretained(myFriend).toOpaque()

print(anObjectMemoryAddress)
print(secondeMemoryAddress)

weak var aFriendToBeDestoried = MyFriend("찬스")

if aFriendToBeDestoried != nil {
    aFriendToBeDestoried!.call()
} else {
    print("객체가 더 이상 메모리에 없습니다.")
}
