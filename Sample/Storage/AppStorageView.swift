//
//  AppStorageView.swift
//  Sample
//
//  Created by Dinh Van Vu on 20/12/2021.
//

import SwiftUI

struct AppStorageView: View {
    
    @AppStorage("count") var count: Int = 0
    
    
    
    var body: some View {
        NavigationView {
            VStack {
                Text("\(count)")
                Button("Tap Me!") {
                    count += 1
                }
                NavigationLink("Detail", destination: AppStorageDetailView())
            }
        }
    }
}

struct AppStorageDetailView: View {
    
    @AppStorage("count") var count: Int = 0
    
    var body: some View {
        VStack {
            Text("\(count)")
            Button("Tap Me!") {
                count += 1
            }
        }
    }
}

struct AppStorageView_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageView()
    }
}
