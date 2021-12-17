//
//  SampleArcView.swift
//  Sample
//
//  Created by Dinh Van Vu on 27/11/2021.
//

import SwiftUI

struct SampleArcView: View {
    var body: some View {
        Arc(endAngle: Angle.degrees(270))
            .stroke(Color.orange, lineWidth: 20)
    }
}

struct Arc: Shape {
    var endAngle: Angle
    
    func path(in rect: CGRect) -> Path {
        Path { p in
            p.addArc(center: CGPoint(x: rect.midX, y: rect.midY),
                     radius: rect.width / 2 ,
                     startAngle: Angle.zero,
                     endAngle: endAngle,
                     clockwise: false)
        }
    }
}

struct SampleArcView_Previews: PreviewProvider {
    static var previews: some View {
        SampleArcView()
    }
}
