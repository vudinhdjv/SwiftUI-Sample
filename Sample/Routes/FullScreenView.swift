//
//  FullScreenView.swift
//  Sample
//
//  Created by Dinh Van Vu on 27/11/2021.
//

import SwiftUI

struct FullScreenView: View {
    @State private var showCover: Bool = false
    
    var body: some View {
        Button("Open sesame 📬") {
            showCover = true
        }
        .fullScreenCover(isPresented: $showCover,
                         onDismiss: { print("dismissed!") },
                         content: { ExampleFullScreen() })
    }
}

struct ExampleFullScreen: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack {
            Button("CLOSE 📪") {
                presentationMode.wrappedValue.dismiss()
            }
        }
    }
}

struct FullScreenView_Previews: PreviewProvider {
    static var previews: some View {
        FullScreenView()
    }
}
