//
//  ChildViewBuilder.swift
//  Sample
//
//  Created by Dinh Van Vu on 01/11/2021.
//

import SwiftUI

struct ChildViewBuilder: View {
    
    @ViewBuilder var tossResult: some View {
        if Bool.random() {
            Image("deposite")
                .resizable()
                .scaledToFit()
        } else {
            Text("Better luck next time")
                .font(.title)
        }
    }
    
    var body: some View {
        VStack {
            Text("Coin Flip")
            tossResult
                .frame(width: 300, height: 400)
        }
    }
}

struct ChildViewBuilder_Previews: PreviewProvider {
    static var previews: some View {
        ChildViewBuilder()
    }
}
