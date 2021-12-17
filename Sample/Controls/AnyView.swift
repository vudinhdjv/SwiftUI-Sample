//
//  SampleAnyView.swift
//  Sample
//
//  Created by Dinh Van Vu on 27/11/2021.
//

import SwiftUI

struct SampleAnyView: View {
    let foo: Bool = true
    
    func makeHelperView() -> some View {
        if foo {
            return AnyView(Text("Hello, world!"))
        } else {
            return AnyView(Color.red)
        }
    }
    
    var body: some View {
        makeHelperView()
    }
}

struct SampleAnyView_Previews: PreviewProvider {
    static var previews: some View {
        SampleAnyView()
    }
}
