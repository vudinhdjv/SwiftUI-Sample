//
//  SampleCamsuleView.swift
//  Sample
//
//  Created by Dinh Van Vu on 27/11/2021.
//

import SwiftUI

struct SampleCamsuleView: View {
    var body: some View {
        Capsule()
            .fill(Color.orange)
            .frame(width: 250, height: 100)
    }
}

struct SampleCamsuleView_Previews: PreviewProvider {
    static var previews: some View {
        SampleCamsuleView()
    }
}
