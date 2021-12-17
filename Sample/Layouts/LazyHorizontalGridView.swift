//
//  LazyHorizontalGridView.swift
//  Sample
//
//  Created by Dinh Van Vu on 27/11/2021.
//

import SwiftUI

struct LazyHorizontalGridView: View {
    private var flexibleLayout = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView() {
            VStack {
                ScrollView(.horizontal) {
                    LazyHGrid(rows: flexibleLayout, alignment: .top) {
                        ForEach((1...1000), id: \.self) {
                            Text("\($0)")
                                .font(.title)
                                .frame(width: 50)
                                .background(Color.yellow)
                        }
                    }.frame(height: 150)
                }
                .navigationTitle("Lazy Grids")
                Spacer()
            }
        }
    }
}

struct LazyHorizontalGridView_Previews: PreviewProvider {
    static var previews: some View {
        LazyHorizontalGridView()
    }
}
