//
//  SampleButtonView.swift
//  Sample
//
//  Created by Dinh Van Vu on 08/11/2021.
//

import SwiftUI

struct SampleButtonView: View {
    
    @State var count: Int = 0
    
    var body: some View {
        VStack {
            Text("Count: \(self.count)")
                .font(.title)
            Button {
                self.count += 1
            } label: {
                Text("Press Me!")
            }
            .padding(.all)
            .background(Color.green)
        }
    }
}



struct SampleButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SampleButtonView()
    }
}

















struct SampleButtonView1: View {
    var body: some View {
        Button {
            
        } label: {
            VStack {
                Text("Press Me!")
                Image(systemName: "star.fill")
            }
        }
    }
}

struct SampleButtonView2: View {
    var body: some View {
        Button {
            
        } label: {
            Text("Press Me!")
            Image(systemName: "star.fill")
        }
        .foregroundColor(.orange)
        .padding(.all)
        .background(Color.black)
        .cornerRadius(16)
    }
}

struct SampleButtonView3: View {
    var body: some View {
        Button {
            
        } label: {
            Text("Press Me!")
            Image(systemName: "star.fill")
        }
        .frame(width: 140, height: 60, alignment: .topLeading)
        .foregroundColor(.orange)
        .padding(.all)
        .background(Color.black)
        .cornerRadius(16)
    }
}

struct SampleButtonView4: View {
    var body: some View {
        Button {
            
        } label: {
            Text("Press Me!")
                .padding()
                .background(
                    Circle()
                        .fill(Color.black)
                        .scaledToFill()
                )
                .foregroundColor(.orange)
        }
    }
}


struct SampleButtonView10: View {
    var body: some View {
        Button("Press Me!") {
            print("Button Tapped")
        }
    }
}
