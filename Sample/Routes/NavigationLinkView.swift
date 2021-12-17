//
//  NavigationLinkView.swift
//  Sample
//
//  Created by Dinh Van Vu on 27/11/2021.
//

import SwiftUI

struct NavigationLinkView: View {
    struct BananasView: View {
        var body: some View {
            Text("Bananas")
                .navigationTitle("🍌🍌")
        }
    }
    
    var body: some View {
        NavigationView {
            NavigationLink(destination: BananasView()) {
                Text("I want bananas!")
            }
        }
    }
}

struct NavigationLinkView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationLinkView()
    }
}
