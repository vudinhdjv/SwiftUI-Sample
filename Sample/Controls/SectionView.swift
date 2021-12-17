//
//  SampleSectionView.swift
//  Sample
//
//  Created by Dinh Van Vu on 26/11/2021.
//

import SwiftUI

struct SampleSectionView: View {
    
    var footer: some View {
        Text("This is a disclaimer about section number 2. Use at your own risk.")
    }
    
    var body: some View {
        Form {
            Section(header: Text("Section #1")) {
                Text("I'm in the first 🥇 section")
                Text("Number 1️⃣")
            }
            
            Section(header: Text("Section #2"), footer: footer) {
                Text("Second is the best 🥈")
                Text("Indeed✌️")
            }
        }
    }
}

struct SampleSectionView_Previews: PreviewProvider {
    static var previews: some View {
        SampleSectionView()
    }
}
