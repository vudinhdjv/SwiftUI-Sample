//
//  SampleHStackView.swift
//  Sample
//
//  Created by Dinh Van Vu on 02/11/2021.
//

import SwiftUI

struct SampleHStackView: View {
    var body: some View {
        HStack() {
            Spacer()
            Text("Welcome to Dr.JOY").font(.caption)
            Spacer()
            Text("Welcome to Dr.JOY PR.JOY").font(.title).padding()
            Spacer()
        }
    }
}


struct SampleHStackView_Previews: PreviewProvider {
    static var previews: some View {
        SampleHStackView()
            .previewLayout(.device)
            
    }
}
