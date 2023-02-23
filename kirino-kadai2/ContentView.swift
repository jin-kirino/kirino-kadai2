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

    var body: some View {
        HStack {
            VStack {
                TextField("", text: $firstNumber)
                    .frame(width: 200)
                TextField("", text: $secondNumber)
                    .frame(width: 200)
                Picker(selection: $operatorModel, label: Text("")) {
                    ForEach(Array(OperatorModel.allCases), id: \.self) { index in
                        Text(index.rawValue)
                            .foregroundColor(.blue)
                    }
                }
                .pickerStyle(.segmented)
                .frame(width: 200)
                Button {
                    // Pickerで選択した演算子で計算する
                    calculationResults = operatorModel.didButtonAction(leftSideNumber: firstNumber,
                                                                       rightSideNumber: secondNumber)
                } label: {
                    Text("Button")
                }
                .padding()
                HStack {
                    Text(calculationResults)
                    Spacer()
                }
                Spacer()
            }
            .textFieldStyle(RoundedBorderTextFieldStyle())
            Spacer()
                .frame(width: 50)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
