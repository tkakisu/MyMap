//
//  ContentView.swift
//  MyMap
//
//  Created by takahiro kakisu on 2025/08/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack {
                // マップを表示
                MapView(searchKey: "羽田空港")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
