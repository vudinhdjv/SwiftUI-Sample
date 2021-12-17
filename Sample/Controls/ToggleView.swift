//
//  SampleToggleView.swift
//  Sample
//
//  Created by Dinh Van Vu on 08/11/2021.
//

import SwiftUI

struct SampleToggleView: View {
    
    @State var isOn = true
    
    var body: some View {
        HStack {
            Toggle("Remember me", isOn: $isOn)
        }
    }
}

struct SampleToggleView_Previews: PreviewProvider {
    static var previews: some View {
        SampleToggleView()
            
    }
}
