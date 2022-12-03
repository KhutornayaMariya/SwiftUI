//
//  ProfileContentView.swift
//  SwiftUIApp
//
//  Created by m.khutornaya on 03.12.2022.
//

import Foundation
import SwiftUI

struct ProfileContentView: View {

    @State private var username: String = ""
    @State private var password: String = ""

    var body: some View {

        VStack(spacing: 20) {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)

            TextField("Логин", text: $username)
                .textContentType(.emailAddress)
            TextField("Пароль", text: $password)
                .textContentType(.password)
            Button { } label: {
                Text("Войти")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
            .tint(Color("VK"))

        }
        .font(.title2)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .padding()
    }
}

struct ProfileContentView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileContentView()
    }
}
