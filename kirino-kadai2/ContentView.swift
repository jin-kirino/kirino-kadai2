//
//  ContentView.swift
//  kirino-kadai2
//
//  Created by 神　樹里乃 on 2023/02/18.
//

import SwiftUI

struct ContentView: View {
    // 割られる数を管理
    @State private var firstNumber: String = ""
    // 割る数を管理
    @State private var secondNumber: String = ""
    // 計算結果を管理
    @State private var calculationResults: String = "0.0"
    // OperatorModelのインスタンス
    @State private var operatorModel: OperatorModel = .addition
    // 仮の4つ
    private let shisokuenzan = ["+", "-", "×", "÷"]
    @State var selection = "+"

    var body: some View {
        VStack {
            TextField("", text: $firstNumber)
            TextField("", text: $secondNumber)
            Picker(selection: $operatorModel, label: Text("")) {
                ForEach(Array(OperatorModel.allCases), id: \.self) { index in
                    Text(index.rawValue)
                }
            }
            .pickerStyle(.segmented)
            Button {
                // Pickerで選択した演算子で計算する
                calculationResults = operatorModel.didButtonAction(leftSideNumber: firstNumber, rightSideNumber: secondNumber)
            } label: {
                Text("Button")
            }
            Text(calculationResults)
        }
        .frame(width: 200)
        .textFieldStyle(RoundedBorderTextFieldStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
