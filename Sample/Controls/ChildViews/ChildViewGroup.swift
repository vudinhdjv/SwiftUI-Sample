//
//  ChildViewGroup.swift
//  Sample
//
//  Created by Dinh Van Vu on 01/11/2021.
//

import SwiftUI

struct ChildViewGroup: View {
    
    var tossResult: some View {
        Group {
            if Bool.random() {
                Image("deposite")
                    .resizable()
                    .scaledToFit()
            } else {
                Text("Better luck next time")
                    .font(.title)
            }
        }
        .frame(width: 400, height: 300)
    }
    
    var body: some View {
        VStack {
            Text("Coin Flip")
                .font(.largeTitle)
            tossResult
        }
    }
}

struct ChildViewGroup_Previews: PreviewProvider {
    static var previews: some View {
        ChildViewGroup()
    }
}
