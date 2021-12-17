//
//  SampleStepperView.swift
//  Sample
//
//  Created by Dinh Van Vu on 08/11/2021.
//

import SwiftUI

struct SampleStepperView: View {
    
    @State var quantity = 0.0
    
    var body: some View {
        VStack {
            Stepper(
                "Quantity: \(quantity)",
                value: $quantity,
                in: 0 ... 10,
                step: 0.5
            )
        }
    }
}

struct SampleStepperView_Previews: PreviewProvider {
    static var previews: some View {
        SampleStepperView()
    }
}
