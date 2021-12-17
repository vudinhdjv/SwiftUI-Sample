//
//  SampleDatePickerView.swift
//  Sample
//
//  Created by Dinh Van Vu on 17/11/2021.
//

import SwiftUI

struct SampleDatePickerView: View {
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }()
    
    @State private var birthDate = Date()
    
    var body: some View {
        VStack {
            DatePicker(selection: $birthDate, in: ...Date(), displayedComponents: .date) {
                Text("Select a date")
            }
            
            Text("Date is \(birthDate, formatter: dateFormatter)")
        }
    }
}

struct SampleDatePickerStyleView: View {
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }()
    
    @State private var date = Date()
    
    var body: some View {
        VStack {
            Text("Enter your birthday")
                .font(.largeTitle)
            DatePicker("Enter your birthday", selection: $date)
                .datePickerStyle(GraphicalDatePickerStyle())
                .frame(maxHeight: 400)
            Text("Date is \(date, formatter: dateFormatter)")
        }
    }
}

struct SampleDatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        SampleDatePickerView()
    }
}
