//
//  SampleEmptyView.swift
//  Sample
//
//  Created by Dinh Van Vu on 23/11/2021.
//

import SwiftUI

struct SampleEmptyView: View {
    
    @State var isEmpty = true
    
    var body: some View {
        Group {
            VStack {
                if isEmpty {
                    Text("Hello world!")
                } else {
                    EmptyView()
                }
                Button("Tap") {
                    isEmpty = !isEmpty
                }
            }
        }
    }
}

struct SampleEmptyView_Previews: PreviewProvider {
    static var previews: some View {
        SampleEmptyView()
    }
}
