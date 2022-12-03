//
//  MainView.swift
//  SwiftUIApp
//
//  Created by m.khutornaya on 03.12.2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Главная", systemImage: "square.and.pencil")
                }

            ProfileContentView()
                .tabItem {
                    Label("Профиль", systemImage: "house")
                }
            VebinarDemoView()
                .tabItem {
                    Label("Настройки", systemImage: "gearshape")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
