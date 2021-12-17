//
//  SampleColorView.swift
//  Sample
//
//  Created by Dinh Van Vu on 27/11/2021.
//

import SwiftUI

struct SampleColorView: View {
    var body: some View {
        VStack {
            Color.yellow
                .frame(width: 100, height: 100)
            Circle()
                .fill(Color.yellow)
                .frame(width: 100, height: 100)
        }
    }
}

struct SampleColorView_Previews: PreviewProvider {
    static var previews: some View {
        SampleColorView()
    }
}
