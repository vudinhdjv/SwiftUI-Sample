//
//  SampleMenuView.swift
//  Sample
//
//  Created by Dinh Van Vu on 26/11/2021.
//

import SwiftUI

struct SampleMenuView: View {
    var body: some View {
        Menu("Actions") {
            Button("Duplicate") {
                print("Duplicate")
            }
            Button("Delete...") {
                print("Delete...")
            }
            Menu("Copy") {
                Button("Copy") {
                    print("Copy")
                }
                Button("Copy Formatted") {
                    print("Copy Formatted")
                }
            }
        }
    }
}

struct SampleMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SampleMenuView()
    }
}
