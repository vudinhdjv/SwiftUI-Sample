//
//  SampleLazyStackView.swift
//  Sample
//
//  Created by Dinh Van Vu on 02/11/2021.
//

import SwiftUI


struct SampleLazyStackView: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack {
                ForEach(0..<100000) {_ in
                    ProfileView()
                }
            }
        }.frame(height: 300)
    }
}

struct SampleLazyStackView_Previews: PreviewProvider {
    static var previews: some View {
        SampleLazyStackView()
            .previewLayout(.sizeThatFits)
    }
}
