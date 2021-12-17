//
//  MagnificationGestureView.swift
//  Sample
//
//  Created by Dinh Van Vu on 27/11/2021.
//

import SwiftUI

struct MagnificationGestureView: View {
    @GestureState var magnifyBy = 1.0
    
    var magnification: some Gesture {
        MagnificationGesture()
            .updating($magnifyBy) { currentState, gestureState, transaction in
                gestureState = currentState
            }
    }
    
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .scaleEffect(magnifyBy)
            .gesture(magnification)
    }
}

struct MagnificationGestureView_Previews: PreviewProvider {
    static var previews: some View {
        MagnificationGestureView()
    }
}
