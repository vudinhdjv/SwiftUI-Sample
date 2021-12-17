//
//  AnimateDurationView.swift
//  Sample
//
//  Created by Dinh Van Vu on 27/11/2021.
//

import SwiftUI

struct AnimateDurationView: View {
    @State private var opacity = 0.0
    
    var body: some View {
        VStack {
            Button("Cloud the Banana") {
                withAnimation(.easeIn(duration: 4.0)) {
                    opacity += 1.0
                }
            }
            .padding()
            
            ZStack {
                Text("🍌🍌")
                Text("☁️☁️☁️☁️")
                    .opacity(opacity)
            }
        }
    }
}

struct AnimateDurationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimateDurationView()
    }
}
