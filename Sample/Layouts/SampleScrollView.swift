//
//  SampleScrollView.swift
//  Sample
//
//  Created by Dinh Van Vu on 02/11/2021.
//

import SwiftUI

struct SampleScrollView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ProfileView()
                ProfileView()
                ProfileView()
                ProfileView()
                ProfileView()
                ProfileView()
                ProfileView()
                ProfileView()
                ProfileView()
            }
        }.frame(height: 300)
    }
}

struct SampleScrollView2: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(0..<1000000) {_ in
                    ProfileView()
                }
            }
        }.frame(height: 300)
    }
}

struct SampleScrollView_Previews: PreviewProvider {
    static var previews: some View {
        SampleScrollView2()
            .previewLayout(.sizeThatFits)
    }
}
