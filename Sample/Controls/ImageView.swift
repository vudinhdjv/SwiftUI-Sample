//
//  SampleImageView.swift
//  Sample
//
//  Created by Dinh Van Vu on 03/11/2021.
//

import SwiftUI

struct SampleImageView: View {
    var body: some View {
        VStack {
            Image("deposite")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200.0, height: 200.0)
                .foregroundColor(.red)
            Image("freaking")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200.0, height: 200.0)
                .foregroundColor(.red)
            Image("happy")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200.0, height: 200.0)
                .foregroundColor(.red)
        }
    }
}

struct SampleImageView_Previews: PreviewProvider {
    static var previews: some View {
        SampleImageView()
    }
}
