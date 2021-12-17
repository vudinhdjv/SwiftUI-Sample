//
//  ChildAnyView.swift
//  Sample
//
//  Created by Dinh Van Vu on 01/11/2021.
//

import SwiftUI

struct ChildAnyView: View {
    
    var tossResult: some View {
        if Bool.random() {
            return AnyView(Image("deposite").resizable().scaledToFit())
        } else {
            return AnyView(Text("Better luck next time").font(.title))
        }
    }
    
    var body: some View {
        VStack {
            Text("Coin Flip")
                .font(.largeTitle)
            tossResult
                .frame(width: 400, height: 300)
        }
    }
}

struct ChildAnyView_Previews: PreviewProvider {
    static var previews: some View {
        ChildAnyView()
    }
}
