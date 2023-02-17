//
//  OperatorModel.swift
//  kirino-kadai2
//
//  Created by 神　樹里乃 on 2023/02/18.
//

import Foundation

enum OperatorModel: String, CaseIterable {
    case addition = "+"
    case subtraction = "-"
    case multiplication = "×"
    case division = "÷"

    func didButtonAction(leftSideNumber: String, rightSideNumber: String) -> String {
        var result: String = ""
        guard let unwerapLeftNumber = Int(leftSideNumber) else {
            print("left:数字以外が入力された")
            return result
        }
        guard let unwerapRightNumber = Int(rightSideNumber) else {
            print("right:数字以外が入力された")
            return result
        }
        switch self {
        case .addition:
            result = String(unwerapLeftNumber + unwerapRightNumber)
        case .subtraction:
            result = String(unwerapLeftNumber - unwerapRightNumber)
        case .multiplication:
            result = String(unwerapLeftNumber * unwerapRightNumber)
        case .division:
            if unwerapRightNumber == 0 {
                result = "割る数には０以外を入れてください"
            } else {
                result = String(unwerapLeftNumber * unwerapRightNumber)
            }
        }
        return result
    }
}

