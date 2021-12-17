//
//  SampleDisclosureGroupView.swift
//  Sample
//
//  Created by Dinh Van Vu on 18/11/2021.
//

import SwiftUI

struct SampleDisclosureGroupView: View {
    
    @State private var settingsIsExpanded = true
    @State private var batteryIsExpanded = false
    @State private var soundIsExpanded = false
    @State private var isLowPowerModeOn = true
    @State private var volume: Double = 0
    
    var body: some View {
        VStack {
            DisclosureGroup("Settings", isExpanded: $settingsIsExpanded) {
                DisclosureGroup("Battery", isExpanded: $batteryIsExpanded) {
                    Toggle("Low Power Mode", isOn: $isLowPowerModeOn).padding()
                }
                .padding([.top, .leading, .trailing], 20.0)
                DisclosureGroup(
                    isExpanded: $soundIsExpanded,
                    content: {
                        Slider(value: $volume, in: 0...10)
                    },
                    label: {
                        HStack(spacing: 20) {
                            Image(systemName: "speaker")
                            Text("Sound")
                        }
                    }
                ).accentColor(.red)
                    .padding()
            }
            .padding()
            Spacer()
        }
    }
}

struct SampleDisclosureGroupView_Previews: PreviewProvider {
    static var previews: some View {
        SampleDisclosureGroupView()
    }
}
