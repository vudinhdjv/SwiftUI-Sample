//
//  ProfileView.swift
//  Sample
//
//  Created by Dinh Van Vu on 02/11/2021.
//

import SwiftUI

struct ProfileDetail: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Rachel Chiseck1")
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

struct ProfileDetail2: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Manager")
                .foregroundColor(.green)
                .font(.headline)
                .padding()
        }
    }
}


struct ProfileViewWithOverlay: View {
    var body: some View {
        VStack {
            ProfileDetail()
                .background(Image("deposite")
                                .resizable()
                                .aspectRatio(contentMode: .fit))
        }
    }
}


struct ProfileViewWithOverlay2: View {
    var body: some View {
        VStack {
            Image("deposite")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .overlay(ProfileDetail(), alignment: .bottom)
                .overlay(ProfileDetail2(), alignment: .topLeading)
        }
    }
}

struct ProfileViewWithOverlay_Previews: PreviewProvider {
    static var previews: some View {
        ProfileViewWithOverlay()
            .previewLayout(.sizeThatFits)
        
    }
}
