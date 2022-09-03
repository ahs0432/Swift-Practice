import UIKit

// 다크 모드 여부 확인

var isDarkMode : Bool = false

/*
if (isDarkMode == true) {
    print("다크모드 입니다.")
} else {
    print("다크모드 아닙니다.")
}
*/

/*
if (isDarkMode != true) {
    print("다크모드 아닙니다.")
} else {
    print("다크모드 입니다.")
}
*/

/*
if isDarkMode == true {
    print("다크모드 입니다.")
} else {
    print("다크모드 아닙니다.")
}
*/

/*
if isDarkMode {
    print("다크모드 입니다.")
} else {
    print("다크모드 아닙니다.")
}
*/

/*
if !isDarkMode {
    print("다크모드 아닙니다.")
} else {
    print("다크모드 입니다.")
}
*/

var title : String = isDarkMode ? "다크모드 입니다." : "다크모드가 아닙니다."
print("title: \(title)")
