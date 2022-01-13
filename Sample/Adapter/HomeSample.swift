//
//  HomeView.swift
//  Sample
//
//  Created by Dinh Van Vu on 25/12/2021.
//

import SwiftUI

struct HomeSample: View {
    var body: some View {
        NavigationView {
            NavigationLink("Go to UIKit") {
                HomeView()
            }
        }
    }
}

struct HomeSample_Previews: PreviewProvider {
    static var previews: some View {
        HomeSample()
    }
}
