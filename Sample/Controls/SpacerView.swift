//
//  SampleSpacerView.swift
//  Sample
//
//  Created by Dinh Van Vu on 03/11/2021.
//

import SwiftUI

struct SampleSpacerView: View {
    var body: some View {
        VStack {
            Color(.green)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 100)
            Spacer()
            Color(.gray)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 100)
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
    }
}

struct SampleSpacerView_Previews: PreviewProvider {
    static var previews: some View {
        SampleSpacerView()
    }
}
