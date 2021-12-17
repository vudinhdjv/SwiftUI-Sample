//
//  BindingView.swift
//  Sample
//
//  Created by Dinh Van Vu on 03/12/2021.
//

import SwiftUI

struct BindingView: View {
    @State private var count: Int = 0
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Count \(count)")
                    .font(.title)
                NavigationLink(
                    destination: BindingViewDetail(count: $count),
                    label: {
                        Text("Tap me")
                        .padding(.all)
                        .background(Color.green)
                    })
            }
        }
    }
}

struct BindingViewDetail: View {
    
    @Binding var count: Int
    
    var body: some View {
        VStack {
            Text("Count Detail \(count)")
                .font(.title)
            Button {
                count += 1
            } label: {
                Text("Tap me")
            }
            .padding(.all)
            .background(Color.green)
        }
    }
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView()
    }
}
