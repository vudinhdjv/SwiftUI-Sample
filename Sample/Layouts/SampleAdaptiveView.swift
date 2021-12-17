//
//  SampleAdaptiveView.swift
//  Sample
//
//  Created by Dinh Van Vu on 04/11/2021.
//

import SwiftUI

struct SampleAdaptiveView: View {
    var body: some View {
        Text("Hello, World!")
            .foregroundColor(Color.white)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
            .background(Color.green)
    }
}

struct SampleAdaptiveView2: View {
    var body: some View {
        ZStack {
            Image(systemName: "circle")
                .font(.system(size: 60))
                .foregroundColor(Color.white)
                .offset(x: 40, y: -40)
        }.frame(width: 300, height: 300)
            .background(Color.green)
    }
}

struct SampleAdaptiveView_Previews: PreviewProvider {
    static var previews: some View {
        SampleAdaptiveView2()
    }
}
