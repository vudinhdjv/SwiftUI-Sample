//
//  SampleGradientView.swift
//  Sample
//
//  Created by Dinh Van Vu on 27/11/2021.
//

import SwiftUI

struct SampleGradientView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(LinearGradient(
                gradient: Gradient(colors: [.green, .blue, .purple]),
                startPoint: .leading,
                endPoint: .trailing))
            .padding()
    }
}

struct SampleGradientView_Previews: PreviewProvider {
    static var previews: some View {
        SampleGradientView()
    }
}
