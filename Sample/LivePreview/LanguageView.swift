//
//  LanguageView.swift
//  Sample
//
//  Created by Dinh Van Vu on 31/10/2021.
//

import SwiftUI

struct LanguageView: View {
    var body: some View {
        VStack {
            Text("Username")
            Text("Password")
        }
    }
}

struct LanguageView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageView()
        LanguageView()
            .environment(\.locale, .init(identifier: "ja"))
    }
}
