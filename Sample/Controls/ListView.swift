//
//  SampleListView.swift
//  Sample
//
//  Created by Dinh Van Vu on 26/11/2021.
//

import SwiftUI

struct SampleListView: View {
    
    @State var fruits: [String] = ["Bananas 🍌🍌", "Apples 🍏🍏", "Peaches 🍑🍑"]
    
    var body: some View {
        List {
            Section(header: Text("Not a fruit")) {
                Text("Hello, World!")
            }
            
            Section(header: Text("Fruit")) {
                ForEach(fruits, id: \.self) { (fruit: String) in
                    Text(fruit)
                }
            }
        }.listStyle(InsetGroupedListStyle())
    }
}

struct SampleListView_Previews: PreviewProvider {
    static var previews: some View {
        SampleListView()
    }
}
