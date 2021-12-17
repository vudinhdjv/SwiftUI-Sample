//
//  SampleEditButtonView.swift
//  Sample
//
//  Created by Dinh Van Vu on 23/11/2021.
//

import SwiftUI

struct SampleEditButtonView: View {
    
    @State var fruits = ["😀", "😂", "🤣"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits, id: \.self) { fruit in
                    Text(fruit)
                }
                .onDelete { offset in
                    fruits.remove(atOffsets: offset)
                }
            }
            .toolbar {
                EditButton()
            }
        }
    }
}

struct SampleEditButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SampleEditButtonView()
    }
}
