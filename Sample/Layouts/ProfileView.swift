//
//  ProfileView.swift
//  Sample
//
//  Created by Dinh Van Vu on 02/11/2021.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            Image("deposite")
                .resizable()
                .aspectRatio(contentMode: .fit)
            HStack {
                VStack(alignment: .leading) {
                    Text("Rachel Chiseck")
                        .font(.headline)
                    Text("Chief Executive Officer")
                        .font(.subheadline)
                }
                Spacer()
            }
            .padding()
            .foregroundColor(.primary)
            .background(Color.primary.colorInvert().opacity(0.75))
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .previewLayout(.sizeThatFits)
            
    }
}
