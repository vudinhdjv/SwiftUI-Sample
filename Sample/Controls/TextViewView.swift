//
//  SampleTextViewView.swift
//  Sample
//
//  Created by Dinh Van Vu on 17/11/2021.
//

import SwiftUI

struct SampleTextViewView: View {
    
    @State var text: String = """
                            Simple Swift Guide tutorials.\n
                            Simple Swift Guide tutorials.\n
                            Simple Swift Guide tutorials.
                            """
    
    var body: some View {
        TextEditor(text: $text)
            .padding()
            .foregroundColor(Color.blue)
            .frame(width: 400, height: 300)
            .multilineTextAlignment(.center)
            .lineSpacing(10.0)
            .onChange(of: text) { newValue in
                print("Value of text modified to = \(text)")
            }
    }
}

struct SampleTextViewView_Previews: PreviewProvider {
    static var previews: some View {
        SampleTextViewView()
    }
}
