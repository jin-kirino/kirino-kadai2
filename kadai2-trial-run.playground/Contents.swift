import UIKit

// String2つを引数
// 数字かどうかをチェック
// 数字以外だったら即return
// 数字だったらDoubleに変換して計算
// 割り算の時は、rightNumberが０の時はメッセージ表示（０除算）
// resultはDouble型→Stringに直してshowingTextに格納


func didButtonAction(leftSideNumber: String, rightSideNumber: String) -> String {
    var showingText: String = ""
    var result: Double = 0.0
    guard let unwerapLeftNumber = Int(leftSideNumber) else {
        print("left:数字以外が入力された")
        return showingText
    }
    guard let unwerapRightNumber = Int(rightSideNumber) else {
        print("right:数字以外が入力された")
        return showingText
    }

    if Double(unwerapRightNumber) == 0.0 {
         showingText = "割る数には以外を入力してください"
    } else {
        result = Double(unwerapLeftNumber) / Double(unwerapRightNumber)
        showingText = String(result)
    }
    return showingText
}
let aaa = didButtonAction(leftSideNumber: "10", rightSideNumber: "20")
print(aaa)
let bbb = didButtonAction(leftSideNumber: "20", rightSideNumber: "0")
print(bbb)

//func didButtonAction(leftSideNumber: String, rightSideNumber: String) -> Double {
//    //    var showingText: String = ""
//    var result: Double = 0.0
//    guard let unwerapLeftNumber = Int(leftSideNumber) else {
//        print("left:数字以外が入力された")
//        return result
//    }
//    guard let unwerapRightNumber = Int(rightSideNumber) else {
//        print("right:数字以外が入力された")
//        return result
//    }
//
//    result = Double(unwerapLeftNumber / unwerapRightNumber)
//    return result
//}

//func didButtonAction(leftSideNumber: String, rightSideNumber: String) -> (message: String, result: Double) {
//    var message: String = ""
//    var result: Double = 0.0
//    guard let unwerapLeftNumber = Int(leftSideNumber) else {
//        print("left:数字以外が入力された")
//        return (message, result)
//    }
//    guard let unwerapRightNumber = Int(rightSideNumber) else {
//        print("right:数字以外が入力された")
//       return (message, result)
//    }
//    if unwerapRightNumber == 0 {
//        message = "割る数には０以外を入れてください"
//    } else {
//        result = Double(unwerapLeftNumber / unwerapRightNumber)
//    }
//    return (message, result)
//}
//
//let rrr = didButtonAction(leftSideNumber: "10", rightSideNumber: "2")
//print(rrr)
//print(rrr.result)
