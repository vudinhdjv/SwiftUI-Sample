//
//  SampleDividerView.swift
//  Sample
//
//  Created by Dinh Van Vu on 26/11/2021.
//

import SwiftUI

struct SampleDividerView: View {
    var body: some View {
        VStack {
            Text("My Awesome Book")
            Divider()
                .background(Color.orange)
            Text("My Name")
        }
    }
}

struct SampleDividerView_Previews: PreviewProvider {
    static var previews: some View {
        SampleDividerView()
    }
}
