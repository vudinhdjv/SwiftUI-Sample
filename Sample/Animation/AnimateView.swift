//
//  AnimateView.swift
//  Sample
//
//  Created by Dinh Van Vu on 27/11/2021.
//

import SwiftUI

struct AnimateView: View {
    @State private var flag = true
    
    var body: some View {
        VStack {
            Rectangle()
                .foregroundColor(flag ? .yellow : .red)
                .frame(width: flag ? 50 : 100, height: flag ? 50 : 100)
                .rotationEffect(.degrees(flag ? 90 : 0))
                .animation(.easeInOut)
            
            Button("Animate") {
                self.flag.toggle()
            }
        }
    }
}

struct AnimateView_Previews: PreviewProvider {
    static var previews: some View {
        AnimateView()
    }
}
