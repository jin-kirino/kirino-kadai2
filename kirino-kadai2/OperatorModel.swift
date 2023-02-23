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
        guard let leftNumber = Double(leftSideNumber) else {
            print("left:数字以外が入力された")
            return ""
        }
        guard let rightNumber = Double(rightSideNumber) else {
            print("right:数字以外が入力された")
            return ""
        }
        switch self {
        case .addition:
            return String(leftNumber + rightNumber)
        case .subtraction:
            return String(leftNumber - rightNumber)
        case .multiplication:
            return String(leftNumber * rightNumber)
        case .division:
            if rightNumber == 0 {
                return "割る数には０以外を入れてください"
            } else {
                return String(leftNumber / rightNumber)
            }
        }
    }
}

