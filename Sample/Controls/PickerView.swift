//
//  SamplePickerView.swift
//  Sample
//
//  Created by Dinh Van Vu on 10/11/2021.
//

import SwiftUI

struct SamplePickerView: View {
    @State private var selectedStrength = "Mild"
    
    let strengths = ["Mild", "Medium", "Mature"]
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker("Strength", selection: $selectedStrength) {
                        ForEach(strengths, id: \.self) {
                            Text($0)
                        }
                    }
                }
            }
        }
    }
}


struct SamplePickerView1: View {
    
    let aligments: [TextAlignment] = [.leading, .center, .trailing]
    @State private var alignment = TextAlignment.leading
    
    var body: some View {
        VStack {
            Picker("Text alignment", selection: $alignment) {
                ForEach(aligments, id: \.self) { alignment in
                    HStack {
                        Text(String(describing: alignment))
                        Image(systemName: "star")
                    }
                }
            }
            
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
                .font(.custom("Helvetica Neue", size: 25))
                .foregroundColor(Color.green)
                .multilineTextAlignment(alignment)
                .lineLimit(5)
                .truncationMode(.middle)
        }
    }
}

struct SamplePickerView_Previews: PreviewProvider {
    static var previews: some View {
        SamplePickerView()
    }
}
