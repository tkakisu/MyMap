//
//  ContentView.swift
//  MyMap
//
//  Created by takahiro kakisu on 2025/08/16.
//

import SwiftUI

struct ContentView: View {
    // 入力中の文字列を保持する状態変数
    @State var inputText: String = ""
    // 検索キーワードを保持する状態変数、初期値は"東京駅"
    @State var displaySearchKey: String = "東京駅"
    
    var body: some View {
        VStack {
            // テキストフィールド
            TextField("キーワード", text: $inputText, prompt: Text("キーワードを入力してください"))
                .onSubmit {
                    // 入力が完了したので検索キーワードに設定する
                    displaySearchKey = inputText
                }
                .padding()
            
            // マップを表示
            MapView(searchKey: displaySearchKey)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
