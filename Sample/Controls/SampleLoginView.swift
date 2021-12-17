//
//  SampleLoginView.swift
//  Sample
//
//  Created by Dinh Van Vu on 09/11/2021.
//

import SwiftUI

struct SampleLoginView: View {
    
    @State private var username = ""
    @State private var password = ""
    
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
                TextField("Username", text: $username)
                    .padding(EdgeInsets(top: 10, leading: 5, bottom: 10, trailing: 5))
                    .overlay(
                        RoundedRectangle(
                            cornerRadius: 10.0)
                            .strokeBorder(
                                Color.gray,
                                style: StrokeStyle(lineWidth: 1.0)
                            )
                    )
                    .padding(.all, 5)
                SecureField("Password", text: $password)
                    .padding(EdgeInsets(top: 10, leading: 5, bottom: 10, trailing: 5))
                    .overlay(
                        RoundedRectangle(
                            cornerRadius: 10.0)
                            .strokeBorder(
                                Color.gray,
                                style: StrokeStyle(lineWidth: 1.0)
                            )
                    )
            }.padding()
        }
        .padding()
    }
}

struct SampleLoginView_Previews: PreviewProvider {
    static var previews: some View {
        SampleLoginView()
    }
}
