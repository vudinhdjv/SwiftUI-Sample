//
//  RotatedShape.swift
//  Sample
//
//  Created by Dinh Van Vu on 27/11/2021.
//

import SwiftUI

struct SampleRotatedShape: View {
    var body: some View {
        let shape = Rectangle().scale(0.5)
        let angle = Angle(degrees: 30)
        let rotatedShape = RotatedShape(shape: shape, angle: angle)
        
        return rotatedShape
            .border(Color.orange)
            .padding()
    }
}

struct RotatedShape_Previews: PreviewProvider {
    static var previews: some View {
        SampleRotatedShape()
    }
}
