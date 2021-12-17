//
//  DarkModeView.swift
//  Sample
//
//  Created by Dinh Van Vu on 29/10/2021.
//

import SwiftUI

struct DarkModeView: View {
    
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    
    var body: some View {
        Group {
            VStack {
                Text("SwiftUI")
                    .foregroundColor(Color("TextColor"))
                Text("Combine")
                    .foregroundColor(Color("#777777"))
                (colorScheme == .dark ? Color.blue : Color.red)
                    .frame(width: 50, height: 40)
            }
        }.frame(width: 300, height: 300, alignment: .topLeading)
            .padding(.all, 1.0)
            .background(Color("BackgroundColor"))
    }
}

struct DarkMoveView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DarkModeView()
                .previewDevice("iPhone 12 Pro Max")
            DarkModeView()
                .preferredColorScheme(.dark)
                .previewDevice("iPhone 12 Pro Max")
        }
    }
}
