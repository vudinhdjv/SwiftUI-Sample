//
//  SampleTextFieldView.swift
//  Sample
//
//  Created by Dinh Van Vu on 09/11/2021.
//

import SwiftUI

struct SampleTextFieldView: View {
    
    @State var name: String = ""
    @State var birthday: Date = Date()
    @State var age: CGFloat = 14.3
    
    static var dateformater: DateFormatter {
        let df = DateFormatter()
        df.dateStyle = .short
        return df
    }
    
    static var numberFormater: NumberFormatter {
        let nf = NumberFormatter()
        nf.numberStyle = .decimal
        return nf
    }
    
    var body: some View {
        VStack {
            VStack {
                TextField("Username", text: $name) { isBegin in
                    if isBegin {
                        print("Begins editing")
                    } else {
                        print("Finished editing")
                    }
                }.textFieldStyle(RoundedBorderTextFieldStyle())
                Spacer()
                Text(name == "" ? "Please, input your name" : "Hello, \(name)!")
                Spacer()
                Divider()
            }
            VStack {
                TextField("Age",
                          value: $age,
                          formatter: SampleTextFieldView.numberFormater
                ).textFieldStyle(RoundedBorderTextFieldStyle())
                Spacer()
                Text(age == 0 ? "Please, input your age" : "\(age)")
                Spacer()
                Divider()
            }
            VStack {
                TextField(
                    "Birthday",
                    value: $birthday,
                    formatter: SampleTextFieldView.dateformater
                ).textFieldStyle(RoundedBorderTextFieldStyle())
                Spacer()
                Text(SampleTextFieldView.dateformater.string(from: birthday))
                Spacer()
                Divider()
            }
            VStack {
                Button {
                    name = ""
                    age = 0
                    birthday = Date()
                } label: {
                    Text("Clear")
                        .foregroundColor(Color.white)
                }
                .padding()
                .background(Color.blue)
            }
        }
        .frame(height: 300.0)
        .padding()
    }
}

struct SampleTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        SampleTextFieldView()
    }
}
