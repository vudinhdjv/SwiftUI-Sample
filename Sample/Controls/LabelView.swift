//
//  SampleLabelView.swift
//  Sample
//
//  Created by Dinh Van Vu on 18/11/2021.
//

import SwiftUI

struct SampleLabelView: View {
    var body: some View {
        Label("Heart Rate", systemImage: "heart.fill")
    }
}

struct SampleLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SampleLabelView()
    }
}
