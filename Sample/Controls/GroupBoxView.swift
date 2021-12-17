//
//  SampleGroupBoxView.swift
//  Sample
//
//  Created by Dinh Van Vu on 23/11/2021.
//

import SwiftUI

struct SampleGroupBoxView: View {
    
    @State var userAgreed = false
    
    let agreementText = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
    
    var body: some View {
        GroupBox {
            ScrollView(.vertical, showsIndicators: true) {
                Text(agreementText)
                    .font(.footnote)
            }
            .frame(height: 100)
            Toggle(isOn: $userAgreed) {
                Text("I agree to the above terms")
            }
        } label: {
            Label("End-User Agreement", systemImage: "building.columns")
        }

    }
}

struct SampleGroupBoxView_Previews: PreviewProvider {
    static var previews: some View {
        SampleGroupBoxView()
    }
}
