//
//  ExplicitTransitionView.swift
//  Sample
//
//  Created by Dinh Van Vu on 27/11/2021.
//

import SwiftUI

struct ExplicitTransitionView: View {
    @State var showBanana = false
    
    var body: some View {
        Button("Toggle") {
            withAnimation(.easeInOut) { showBanana.toggle() }
        }
        if showBanana {
            Text("🍌")
                .transition(.slide)
        }
    }
}

struct ExplicitTransitionView_Previews: PreviewProvider {
    static var previews: some View {
        ExplicitTransitionView()
    }
}
