//
//  VebinarDemoView.swift
//  SwiftUIApp
//
//  Created by m.khutornaya on 03.12.2022.
//

import SwiftUI

struct NewsTopic: Identifiable {
    var id: String { name }
    let name: String
}

struct VebinarDemoView: View {

    @State private var isPushEnabled = false
    @State private var isSMSEnabled = false
    @State private var isEmailEnabled = false

    @State private var amount = 50.0

    @State private var selectedTopic: NewsTopic?

    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Выберите каналы связи")) {
                    Toggle(isOn: $isPushEnabled) {
                        Text("Push оповещения")
                    }
                    Toggle(isOn: $isSMSEnabled) {
                        Text("SMS оповещения")
                    }
                    Toggle(isOn: $isEmailEnabled) {
                        Text("Email рассылки")
                    }
                }
                .headerProminence(.increased)
                Section(header: Text("Как часто присылать рекламу?")) {
                    VStack {
                        Slider(value: $amount, in: 0...100)
                        if amount == 0 {
                            Text("Никогда")
                                .foregroundColor(.red)
                                .fontWeight(.medium)
                        } else if amount < 33 {
                            Text("1-2 раза в месяц")
                                .foregroundColor(.yellow)
                                .fontWeight(.medium)
                        } else if amount < 66 {
                            Text("Каждую неделю")
                                .foregroundColor(.orange)
                                .fontWeight(.medium)
                        } else if amount == 100 || amount > 66 {
                            Text("Всегда")
                                .foregroundColor(.green)
                                .fontWeight(.medium)
                        }
                    }
                }
                .headerProminence(.increased)
                Section(header: Text("Выберите тематику полезных рассылок")) {
                    Button("Уход за собаками") {
                        selectedTopic = .init(name: "Собака лучший друг человека")
                    }
                    .fontWeight(.medium)
                    Button("Уход за кошками") {
                        selectedTopic = .init(name: "Без кота и жизнь не та")
                    }
                    .fontWeight(.medium)
                }
                .headerProminence(.increased)
            }
            .navigationTitle("Настройки")
        }
        .alert(item: $selectedTopic) { topic in
            Alert(title: Text(topic.name),
                  message: Text("Спасибо за выбор"),
                  dismissButton: .default(Text("OK"))
            )
        }
    }
}

struct VebinarDemoView_Previews: PreviewProvider {
    static var previews: some View {
        VebinarDemoView()
    }
}
