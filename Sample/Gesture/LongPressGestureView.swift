//
//  LongPressGesture.swift
//  Sample
//
//  Created by Dinh Van Vu on 27/11/2021.
//

import SwiftUI

struct LongPressGestureView: View {
    @GestureState var isDetectingLongPress = false
    @State var completedLongPress = false
    
    var longPress: some Gesture {
        LongPressGesture(minimumDuration: 3)
            .updating($isDetectingLongPress) { currentstate, gestureState,
                transaction in
                gestureState = currentstate
                transaction.animation = Animation.easeIn(duration: 2.0)
            }
            .onEnded { finished in
                self.completedLongPress = finished
            }
    }
    
    var body: some View {
        Circle()
            .fill(self.isDetectingLongPress ?
                  Color.red :
                    (self.completedLongPress ? Color.green : Color.yellow))
            .frame(width: 100, height: 100, alignment: .center)
            .gesture(longPress)
    }
}

struct LongPressGestureView_Previews: PreviewProvider {
    static var previews: some View {
        LongPressGestureView()
    }
}
