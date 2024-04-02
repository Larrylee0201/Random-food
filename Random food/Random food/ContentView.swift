//
//  ContentView.swift
//  Random food
//
//  Created by Larry on 4/2/24.
//

import SwiftUI

struct ContentView: View {
    // 食物列表
    let foods = ["壽司", "披薩", "漢堡", "意大利麵", "沙拉", "炒飯", "拉麵", "烤雞"]
    // 使用@State來追蹤當前選擇的食物
    @State private var selectedFood = "點擊下方按鈕選擇食物"

    var body: some View {
        VStack {
            Text(selectedFood)
                .font(.largeTitle)
                .padding()

            Button("選擇食物") {
                // 隨機選擇食物
                selectedFood = foods.randomElement() ?? "未知"
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(Capsule())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


