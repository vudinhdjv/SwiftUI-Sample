//
//  SampleProgressView.swift
//  Sample
//
//  Created by Dinh Van Vu on 27/11/2021.
//

import SwiftUI

struct SampleProgressView: View {
    
    var body: some View {
        VStack {
            ProgressView()
                .padding([.bottom], 20)
            ProgressView(value: 0.75)
        }
//        .progressViewStyle(DarkBlueShadowProgressViewStyle())
    }
}

struct DarkBlueShadowProgressViewStyle: ProgressViewStyle {
    func makeBody(configuration: Configuration) -> some View {
        ProgressView(configuration)
            .shadow(color: Color(red: 0, green: 0, blue: 0.6), radius: 4.0, x: 1.0, y: 2.0)
    }
}

struct SampleProgressView_Previews: PreviewProvider {
    static var previews: some View {
        SampleProgressView()
    }
}


struct SampleProgressView2: View {
    
    @State var isLoading = true
    
    var body: some View {
        VStack {
            if isLoading {
                ProgressView(value: 0.5)
            } else {
                Text("Get Data Success")
            }
            Button("Request API") {
                isLoading = !isLoading
            }
        }
    }
}
