//
//  SampleAngleView.swift
//  Sample
//
//  Created by Dinh Van Vu on 27/11/2021.
//

import SwiftUI

struct SampleAngleView: View {
    var body: some View {
        VStack(spacing: 50) {
            Rectangle()
                .frame(width: 100, height: 100)
                .rotationEffect(Angle(degrees: 15))
                .border(Color.orange)
            Rectangle()
                .frame(width: 100, height: 100)
                .rotationEffect(.degrees(15))
                .border(Color.orange)
        }
    }
}

struct SampleAngleView_Previews: PreviewProvider {
    static var previews: some View {
        SampleAngleView()
    }
}
