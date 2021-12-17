//
//  TapGestureView.swift
//  Sample
//
//  Created by Dinh Van Vu on 27/11/2021.
//

import SwiftUI

struct TapGestureView: View {
    @State var tapped = false
    
    var tap: some Gesture {
        TapGesture(count: 1)
            .onEnded { _ in self.tapped = !self.tapped }
    }
    
    var body: some View {
        Circle()
            .fill(self.tapped ? Color.blue : Color.red)
            .frame(width: 100, height: 100, alignment: .center)
            .gesture(tap)
    }
}

struct TapGestureView_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureView()
    }
}
