//
//  WeatherRow.swift
//  Sample
//
//  Created by Dinh Van Vu on 17/11/2021.
//

import SwiftUI

struct WeatherRow: View {
    
    var weather: Weather
    
    var body: some View {
        HStack {
            Image(systemName: weather.getStatusInfo())
                .resizable()
                .padding()
                .frame(width: 80.0, height: 80.0)
                .aspectRatio(contentMode: .fill)
            VStack(alignment: .leading) {
                Text(weather.city)
                    .font(.title)
                Text(weather.country)
                    .fontWeight(.thin)
            }
            Spacer()
            Text("\(weather.temperature) ℃")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(.all)
        }
    }
}

struct WeatherRow_Previews: PreviewProvider {
    static var previews: some View {
        WeatherRow(weather: Weather(city: "Hà Nội", country: "Việt Nam", temperature: 30, status: .sun))
    }
}
