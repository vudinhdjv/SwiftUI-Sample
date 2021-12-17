//
//  ToolBarItemView.swift
//  Sample
//
//  Created by Dinh Van Vu on 27/11/2021.
//

import SwiftUI

struct ToolBarItemView: View {
    var body: some View {
        NavigationView {
            Text("Hello, World!")
                .toolbar {
                    ToolbarItem(id: "bananas") {
                        Image(systemName: "camera")
                            .foregroundColor(Color.green)
                    }
                }
        }
    }
}

struct ToolBarItemView_Previews: PreviewProvider {
    static var previews: some View {
        ToolBarItemView()
    }
}
