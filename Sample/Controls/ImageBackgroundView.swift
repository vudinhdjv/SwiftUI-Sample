//
//  SampleImageBackgroundView.swift
//  Sample
//
//  Created by Dinh Van Vu on 08/11/2021.
//

import SwiftUI

struct SampleImageBackgroundView: View {
    var body: some View {
        HStack {
            Text("house")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.white)
                .background(
                    Image("house")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                )
        }
    }
}

struct SampleImageBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        SampleImageBackgroundView()
    }
}
