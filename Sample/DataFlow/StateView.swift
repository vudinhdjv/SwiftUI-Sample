//
//  StateView.swift
//  Sample
//
//  Created by Dinh Van Vu on 03/12/2021.
//

import SwiftUI

struct ProfileModel {
    var age = 25
    var isVisible = true
    
    mutating func changeAge() {
        age += 1
    }
}

struct StateView: View {
    
    @State private var count: Int = 0
    @State private var profile = ProfileModel()
    
    var body: some View {
        VStack {
            Text("Count \(count)")
                .font(.title)
            Text("Age \(profile.age)")
            if profile.isVisible {
                Text("Hello")
            }
            Button {
                count += 1
                profile.changeAge()
                profile.isVisible = !profile.isVisible
            } label: {
                Text("Tap me")
            }
            .padding(.all)
            .background(Color.green)
        }
    }
}

struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        StateView()
    }
}
