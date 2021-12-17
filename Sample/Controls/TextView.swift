//
//  SampleTextView.swift
//  Sample
//
//  Created by Dinh Van Vu on 03/11/2021.
//

import SwiftUI

struct SampleTextView: View {
    var body: some View {
        VStack {
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
                .font(.body)
                .foregroundColor(Color.green)
                .multilineTextAlignment(TextAlignment.center)
                .lineLimit(3)
                .truncationMode(.middle)
                .lineSpacing(20.0)
                .padding(.top, 30.0)
                .rotationEffect(.degrees(45))
                .rotation3DEffect(.degrees(60), axis: (x: 1, y: 0, z: 0))
                .shadow(color: .gray, radius: 2, x: 0, y: 15)
            
            Text(Date().addingTimeInterval(600), style: .date)
            Text(Date().addingTimeInterval(600), style: .time)
            Text(Date().addingTimeInterval(600), style: .relative)
            Text(Date().addingTimeInterval(600), style: .timer)
            Text("Dr.JOY")
                .background(Color.red)
                .padding(.top, 150)
            Text("Pr.JOY")
                .padding()
                .background(Color.red)
        }
    }
}

struct SampleTextView_Previews: PreviewProvider {
    static var previews: some View {
        SampleTextView()
    }
}
