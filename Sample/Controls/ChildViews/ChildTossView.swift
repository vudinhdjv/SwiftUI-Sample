//
//  ChildTossView.swift
//  Sample
//
//  Created by Dinh Van Vu on 01/11/2021.
//

import SwiftUI

struct TossResult: View {
    var body: some View {
        if Bool.random() {
            Image("deposite")
                .resizable()
                .scaledToFit()
        } else {
            Text("Better luck next time")
        }
    }
}

struct ChildTossView: View {
    var body: some View {
        VStack {
            Text("Coin Flip")
            TossResult()
                .frame(width: 300, height: 400)
        }
    }
}

struct ChildTossView_Previews: PreviewProvider {
    static var previews: some View {
        ChildTossView()
    }
}
