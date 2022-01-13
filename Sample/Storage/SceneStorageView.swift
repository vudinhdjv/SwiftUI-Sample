//
//  SceneStorageView.swift
//  Sample
//
//  Created by Dinh Van Vu on 20/12/2021.
//

import SwiftUI

struct SceneStorageView: View {
    
    @SceneStorage("selectedTab") var selection = 0
    
    var body: some View {
        TabView(selection: $selection, content: {
            View10A().tag(0)
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
                }
            View10B().tag(1)
                .tabItem {
                    Label("Menu", systemImage: "square.and.dash")
                }
        })
    }
}

struct View10A: View {
    @SceneStorage("selectedTab") var selection = 0
    
    var body: some View {
        VStack {
            Text("selectedTab = \(selection)")
            Button {
                selection = 1
            } label: {
                Text("Change")
            }
        }
    }
}

struct View10B: View {
    @SceneStorage("selectedTab") var selection = 0
    
    var body: some View {
        VStack {
            Text("selectedTab = \(selection)")
            Button {
                selection = 0
            } label: {
                Text("Change")
            }
        }
    }
}

struct SceneStorageView_Previews: PreviewProvider {
    static var previews: some View {
        SceneStorageView()
    }
}
