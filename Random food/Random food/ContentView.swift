//
//  ContentView.swift
//  Random food
//
//  Created by Larry on 4/2/24.
//

import SwiftUI


extension Color {
    static let morandiPink = Color(red: 236 / 255, green: 210 / 255, blue: 193 / 255)
    static let morandiBlue = Color(red: 129 / 255, green: 182 / 255, blue: 205 / 255)
    static let morandiGreen = Color(red: 180 / 255, green: 198 / 255, blue: 179 / 255)
    static let morandiYellow = Color(red: 233 / 255, green: 216 / 255, blue: 166 / 255)
    static let morandiGray = Color(red: 199 / 255, green: 204 / 255, blue: 189 / 255)
}

// 假設我們有一個Food結構體來表示食物和其類別
struct Food: Identifiable {
    var id = UUID()
    var name: String
    var category: FoodCategory
}

enum FoodCategory: String, CaseIterable, Identifiable {
    case all = "All"
    case asian = "Asian"
    case italian = "Italian"
    case fastFood = "Fast Food"
    
    var id: String { self.rawValue }
}

// 你可以根據實際情況定義更多類別
let foods: [Food] = [
        Food(name: "Sushi", category: .asian),
        Food(name: "Pizza", category: .italian),
        Food(name: "Hamburger", category: .fastFood),
        Food(name: "Pasta", category: .italian),
        Food(name: "Salad", category: .all),
        Food(name: "Ramen", category: .asian),
        Food(name: "Fried chicken", category: .fastFood),
        Food(name: "Tacos", category: .fastFood),
        Food(name: "Burrito", category: .fastFood),
        Food(name: "Steak", category: .all),
        Food(name: "Pho", category: .asian),
        Food(name: "Lasagna", category: .italian),
        Food(name: "Carbonara", category: .italian),
        Food(name: "Bibimbap", category: .asian),
        Food(name: "Curry", category: .asian),
        Food(name: "Baguette", category: .all),
        Food(name: "Croissant", category: .all),
        Food(name: "Pad Thai", category: .asian),
        Food(name: "Falafel", category: .all),
        Food(name: "Gyro", category: .all),
        Food(name: "Samosa", category: .asian),
        Food(name: "Tiramisu", category: .italian),
        Food(name: "Gelato", category: .italian),
        Food(name: "Quiche", category: .all),
        Food(name: "Fajitas", category: .fastFood),
        
        //Chinese food
        Food(name: "点心", category: .asian),
            Food(name: "宫保鸡丁", category: .asian),
            Food(name: "麻婆豆腐", category: .asian),
            Food(name: "火锅", category: .asian),
            Food(name: "饺子", category: .asian),
            Food(name: "春卷", category: .asian),
            Food(name: "叉烧", category: .asian),
            Food(name: "四川牛肉", category: .asian),
            Food(name: "糖醋里脊", category: .asian),
            Food(name: "炒面", category: .asian),
            Food(name: "云吞汤", category: .asian),
            Food(name: "蛋炒饭", category: .asian),
            Food(name: "担担面", category: .asian),
            Food(name: "牛肉面", category: .asian),
            Food(name: "西安凉皮", category: .asian),
            Food(name: "葱油饼", category: .asian),
            Food(name: "包子", category: .asian),
            Food(name: "粽子", category: .asian),
            Food(name: "月饼", category: .asian),
            Food(name: "煎饼果子", category: .asian),
            Food(name: "兰州拉面", category: .asian),
            Food(name: "四喜丸子", category: .asian),
            Food(name: "鱼香茄子", category: .asian),
            Food(name: "红烧肉", category: .asian),
            Food(name: "清蒸鲈鱼", category: .asian),
            Food(name: "北京烤鸭", category: .asian),
            Food(name: "扬州炒饭", category: .asian),
            Food(name: "龙井虾仁", category: .asian),
            Food(name: "沙茶牛肉", category: .asian),
            Food(name: "蚝油生菜", category: .asian),
            Food(name: "白切鸡", category: .asian),
            Food(name: "梅菜扣肉", category: .asian),
            Food(name: "苏式糖醋排骨", category: .asian),
            Food(name: "酸菜鱼", category: .asian),
            Food(name: "泡椒凤爪", category: .asian),
            Food(name: "红油抄手", category: .asian),
            Food(name: "宜宾燃面", category: .asian),
            Food(name: "口水鸡", category: .asian),
        Food(name: "水煮鱼", category: .asian),
        Food(name: "干锅牛蛙", category: .asian),
        Food(name: "酸辣土豆丝", category: .asian),
        Food(name: "花菜炒肉片", category: .asian),
        Food(name: "麻辣香锅", category: .asian),
        Food(name: "干煸四季豆", category: .asian),
        Food(name: "蒜蓉西兰花", category: .asian),
        Food(name: "家常豆腐", category: .asian),
        Food(name: "锅包肉", category: .asian),
        Food(name: "回锅肉", category: .asian),
        Food(name: "辣子鸡丁", category: .asian),
        Food(name: "鱼香肉丝", category: .asian),
        Food(name: "宫保虾球", category: .asian),
        Food(name: "泡菜鱼", category: .asian),
        Food(name: "糖醋鱼", category: .asian),
        Food(name: "红烧带鱼", category: .asian),
        Food(name: "酸汤肥牛", category: .asian),
        Food(name: "葱爆羊肉", category: .asian),
        Food(name: "黄豆芽炒肉", category: .asian),
        Food(name: "凉拌黄瓜", category: .asian),
        Food(name: "土豆烧牛肉", category: .asian),
        Food(name: "红烧排骨", category: .asian),
        Food(name: "清蒸武昌鱼", category: .asian),
        Food(name: "豉椒炒肉", category: .asian),
        Food(name: "麻婆茄子", category: .asian),
        Food(name: "泡椒牛蛙", category: .asian),
        Food(name: "香辣蟹", category: .asian),
        Food(name: "油焖大虾", category: .asian),
        Food(name: "干煸鳝段", category: .asian),
        Food(name: "椒盐排骨", category: .asian),
        Food(name: "蒜泥白肉", category: .asian),
        Food(name: "芝麻鸡", category: .asian),
        Food(name: "酸辣粉", category: .asian),
        Food(name: "糖醋排骨", category: .asian),
        Food(name: "鱼头泡饼", category: .asian),
        Food(name: "牛肉炖土豆", category: .asian),
        Food(name: "芹菜炒肉", category: .asian),
        Food(name: "酱牛肉", category: .asian),
        Food(name: "干锅菜花", category: .asian),
        Food(name: "鱼香茄盒", category: .asian),
        Food(name: "老醋花生", category: .asian),
        Food(name: "凉皮", category: .asian),
        Food(name: "羊肉串", category: .asian),
        Food(name: "烤鱼", category: .asian),
        Food(name: "拍黄瓜", category: .asian),
        Food(name: "麻辣烫", category: .asian),
        Food(name: "肉夹馍", category: .asian),
        Food(name: "凉面", category: .asian),
        Food(name: "肉沫茄子", category: .asian),
        Food(name: "蒸蛋", category: .asian),
        Food(name: "烧白", category: .asian),
        Food(name: "糖水", category: .asian)

]

struct ContentView: View {
    @State private var selectedFood = "Click to choose a food"
        @State private var history: [String] = []
        @State private var showHistory = false
        @State private var selectedCategory: FoodCategory = .all
        @State private var showCategoryPicker = false
        @State private var showClearHistoryAlert = false
        @State private var searchText = ""

        var filteredFoods: [Food] {
            if searchText.isEmpty {
                return foods
            } else {
                return foods.filter { $0.name.contains(searchText) }
            }
        }
    
        var body: some View {
            NavigationView {
                VStack(spacing: 20) {
                    
                    Text(selectedFood)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.morandiPink)
                        .foregroundColor(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding(.horizontal)
                        .transition(.slide)
                    
                    Picker("Category", selection: $selectedCategory) {
                        ForEach(FoodCategory.allCases, id: \.self) { category in
                            Text(category.rawValue).tag(category)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding()

                    Button("Choose") {
                        withAnimation {
                            let filteredFoods = foods.filter { $0.category == selectedCategory || selectedCategory == .all }
                            if let choice = filteredFoods.randomElement() {
                                selectedFood = choice.name
                                history.insert("\(choice.name) - \(choice.category.rawValue)", at: 0)
                            }
                        }
                    }
                    .padding()
                    .background(Color.morandiBlue)
                    .foregroundColor(.white)
                    .clipShape(Capsule())

                    Button("Toggle History") {
                        withAnimation {
                            showHistory.toggle()
                        }
                    }
                    .padding()
                    .background(Color.morandiGreen)
                    .foregroundColor(.white)
                    .clipShape(Capsule())

                    if showHistory {
                        HistoryView(history: $history)
                            .background(Color.morandiGray)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }

                    Spacer()
                }
                .navigationTitle("Random Food")
                            .padding()
                            .alert("Clear History?", isPresented: $showClearHistoryAlert) {
                                Button("Cancel", role: .cancel) { }
                                Button("Clear", role: .destructive) {
                                    history.removeAll()
                                }
                            } message: {
                                Text("Are you sure you want to clear all history?")
                            }
                        }
                    
                    
        }
    }

struct HistoryView: View {
    @Binding var history: [String]

    var body: some View {
        VStack(alignment: .leading) {
            Text("History:")
                .font(.headline)
                .padding(.bottom, 5)
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(history, id: \.self) { item in
                        Text(item)
                            .padding(.vertical, 2)
                    }
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: 200, alignment: .leading) // 設定一個最大高度
        .padding()
        .background(Color.morandiGray.opacity(0.5)) // 可以根據需要調整背景色
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .transition(.opacity)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
