//
//  DragGestureView.swift
//  Sample
//
//  Created by Dinh Van Vu on 27/11/2021.
//

import SwiftUI

struct DragGestureView: View {
    @State private var location: CGPoint = CGPoint(x: 50, y: 50);
    @State var isDragging = false
    
    var simpleDrag: some Gesture {
        DragGesture()
            .onChanged { value in
                self.location = value.location
                self.isDragging = true
                
            }
            .onEnded {_ in self.isDragging = false}
    }
    
    var body: some View {
        Circle()
            .fill(self.isDragging ? Color.red : Color.yellow)
            .frame(width: 100, height: 100)
            .position(location)
            .gesture(simpleDrag)
    }
}

struct DragGestureView_Previews: PreviewProvider {
    static var previews: some View {
        DragGestureView()
    }
}
