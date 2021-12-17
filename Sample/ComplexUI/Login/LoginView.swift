//
//  LoginView.swift
//  Sample
//
//  Created by Dinh Van Vu on 09/11/2021.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var presenter = LoginPresenter()
    
    var body: some View {
        VStack {
            HStack {
                Image("ic_group_drjoy")
                    .padding(.trailing, 10)
                VStack {
                    Text("Welcome to")
                    Text("Dr.JOY")
                        .font(.title)
                        .fontWeight(.bold)
                }
            }
            Text("Login with your account")
            VStack {
                TextField("Username", text: $presenter.username)
                    .padding([.top, .bottom], 10)
                    .padding([.leading, .trailing], 5)
                    .overlay(
                        RoundedRectangle(
                            cornerRadius: 10.0)
                            .strokeBorder(
                                Color.gray,
                                style: StrokeStyle(lineWidth: 1.0)
                            )
                    )
                    .padding(.all, 5)
                SecureField("Password", text: $presenter.password)
                    .padding([.top, .bottom], 10)
                    .padding([.leading, .trailing], 5)
                    .overlay(
                        RoundedRectangle(
                            cornerRadius: 10.0)
                            .strokeBorder(
                                Color.gray,
                                style: StrokeStyle(lineWidth: 1.0)
                            )
                    )
            }.padding()
            
            HStack {
                Button(action: presenter.login) {
                    Text("Login")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
                .DrButton(isDisabled: !presenter.checkValid())
                .disabled(!presenter.checkValid())
                Button(action: presenter.reset) {
                    Text("Clear")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
                .DrButton()
            }
            
        }
        .padding()
        .alert(isPresented: $presenter.alert) {
            Alert(title: Text(presenter.isLogined ? "Dr.JOY" : "Error"), message: Text(presenter.message), dismissButton: .default(Text("Got it!")))
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

