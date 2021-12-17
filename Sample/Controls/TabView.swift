//
//  SampleTabView.swift
//  Sample
//
//  Created by Dinh Van Vu on 27/11/2021.
//

import SwiftUI

struct SampleTabView: View {
    
    init() {
        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().backgroundColor = .lightGray.withAlphaComponent(0.5)
        UITabBar.appearance().barTintColor = .systemBackground
           UITabBar.appearance().unselectedItemTintColor = UIColor(named: "BackgroundColor")
    }
    
    var body: some View {
        TabView {
            Text("Bananas 🍌🍌")
                .tabItem {
                    Image(systemName: "1.circle.fill")
                    Text("🍌🍌")
                }
            Text("Apples 🍏🍏")
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("🍏🍏")
                }
            Text("Peaches 🍑🍑")
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("🍑🍑")
                }
        }
        .font(.headline)
    }
}

struct SampleTabView_Previews: PreviewProvider {
    static var previews: some View {
        SampleTabView()
    }
}
