//
//  SampleSliderView.swift
//  Sample
//
//  Created by Dinh Van Vu on 08/11/2021.
//

import SwiftUI

struct SampleSliderView: View {
    
    @State var amount: Double = 0
    
    var body: some View {
        VStack {
            HStack {
                Text("0")
                Slider(
                    value: $amount,
                    in: 0.0 ... 10.0,
                    step: 0.5) { data in
                        print(data)
                    }
                Text("10")
            }
            Text("\(amount)")
        }
        .padding()
    }
}

struct SampleSliderView_Previews: PreviewProvider {
    static var previews: some View {
        SampleSliderView()
    }
}
