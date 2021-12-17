//
//  RotationGestureView.swift
//  Sample
//
//  Created by Dinh Van Vu on 27/11/2021.
//

import SwiftUI

struct RotationGestureView: View {
    @State var angle = Angle(degrees: 0.0)
    
    var rotation: some Gesture {
        RotationGesture()
            .onChanged { angle in
                self.angle = angle
            }
    }
    
    var body: some View {
        Rectangle()
            .frame(width: 200, height: 200, alignment: .center)
            .foregroundColor(Color.yellow)
            .rotationEffect(self.angle)
            .gesture(rotation)
    }
}

struct RotationGestureView_Previews: PreviewProvider {
    static var previews: some View {
        RotationGestureView()
    }
}
