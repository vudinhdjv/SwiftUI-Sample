//
//  SampleZStackView.swift
//  Sample
//
//  Created by Dinh Van Vu on 03/11/2021.
//

import SwiftUI

struct SampleZStackView: View {
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            ItemView(width: 300, height: 300, name: "1", backgroundColor: Color(.blue))
            ItemView(width: 200, height: 200, name: "2", backgroundColor: Color(.green))
            ItemView(width: 100, height: 100, name: "3", backgroundColor: Color(.red))
            ItemView(width: 50, height: 50, name: "4", backgroundColor: Color(.darkGray))
        }
    }
}

struct SampleZStackView_Previews: PreviewProvider {
    static var previews: some View {
        SampleZStackView()
    }
}
