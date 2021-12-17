//
//  SampleVStackView.swift
//  Sample
//
//  Created by Dinh Van Vu on 03/11/2021.
//

import SwiftUI

struct SampleVStackView: View {
    var body: some View {
        VStack {
            HStack {
                ItemView(width: 50, height: 50, name: "1")
                ItemView(width: 50, height: 50, name: "2")
                ItemView(width: 50, height: 50, name: "3")
                ItemView(width: 50, height: 50, name: "4")
            }
            HStack {
                ItemView(width: 50, height: 50, name: "5")
                ItemView(width: 50, height: 50, name: "6")
                ItemView(width: 50, height: 50, name: "7")
                ItemView(width: 50, height: 50, name: "8")
            }
            HStack {
                ItemView(width: 50, height: 50, name: "9")
                ItemView(width: 50, height: 50, name: "10")
                ItemView(width: 50, height: 50, name: "11")
                ItemView(width: 50, height: 50, name: "12")
            }
            HStack {
                ItemView(width: 50, height: 50, name: "13")
                ItemView(width: 50, height: 50, name: "14")
                ItemView(width: 50, height: 50, name: "15")
                ItemView(width: 50, height: 50, name: "16")
            }
        }
    }
}

struct SampleVStackView_Previews: PreviewProvider {
    static var previews: some View {
        SampleVStackView()
    }
}
