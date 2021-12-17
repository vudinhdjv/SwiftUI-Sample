//
//  ActionSheetView.swift
//  Sample
//
//  Created by Dinh Van Vu on 27/11/2021.
//

import SwiftUI

struct ActionSheetView: View {
    @State private var showActionSheet = false
    
    var body: some View {
        Button("Eat 🍌") {
            showActionSheet = true
        }
        .actionSheet(isPresented: $showActionSheet) {
            ActionSheet(
                title: Text("Food alert!"),
                message: Text("You have made a selection"),
                buttons: [
                    .cancel(),
                    .destructive(Text("Change to 🍑")) { /* override */ },
                    .default(Text("Confirm")) { /* confirm */ }
                ]
            )
        }
    }
}

struct ActionSheetView_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetView()
    }
}
