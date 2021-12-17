//
//  AlertView.swift
//  Sample
//
//  Created by Dinh Van Vu on 27/11/2021.
//

import SwiftUI

struct AlertView: View {
    @State private var showAlert = false
    
    var body: some View {
        Button("Tap to view alert") {
            showAlert = true
        }
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("An important title!"),
                message: Text("A message that adds additional context on the alert.")
            )
        }
    }
}

struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        AlertView()
    }
}
