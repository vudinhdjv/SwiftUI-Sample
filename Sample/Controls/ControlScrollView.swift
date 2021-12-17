//
//  SampleScrollView.swift
//  Sample
//
//  Created by Dinh Van Vu on 17/11/2021.
//

import SwiftUI

struct SampleControlScrollView: View {
    
    var weathers = Weather.dummyData()
    
    var body: some View {
        ScrollView {
            ForEach(weathers, id: \.city) { weather in
                WeatherRow(weather: weather)
            }
        }
    }
}

struct SampleControlScrollView_Previews: PreviewProvider {
    static var previews: some View {
        SampleControlScrollView()
    }
}
