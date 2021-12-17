//
//  GeometryReaderView.swift
//  Sample
//
//  Created by Dinh Van Vu on 27/11/2021.
//

import SwiftUI

struct GeometryReaderView: View {
    var body: some View {
        GeometryReader { (proxy: GeometryProxy) in
            Color.green
                .frame(
                    width: proxy.size.width / 2,
                    height: proxy.size.height / 2
                ).overlay(
                    GeometryReader { (proxy: GeometryProxy) in
                         Color.red
                            .frame(
                                width: proxy.size.width / 2,
                                height: proxy.size.height / 2
                            )
                    }
                )
        }
    }
}

struct GeometryReaderView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderView()
    }
}
