//
//  LoadableImageView.swift
//  Sample
//
//  Created by Dinh Van Vu on 03/11/2021.
//

import SwiftUI

struct LoadableImageView: View {
    
    @StateObject var downloader = Downloader()
    var urlString: String
    
    init(with urlString: String) {
        self.urlString = urlString
    }
    
    var stateContent: some View {
        Group {
            if let image = UIImage(data: downloader.data) {
                Image(uiImage: image).resizable()
            } else {
                ZStack {
                    PreviewView()
                }.frame(minWidth: 0,
                        maxWidth: .infinity,
                        minHeight: 0,
                        maxHeight: .infinity,
                        alignment: .center
                )
            }
        }
    }
    
    var body: some View {
        HStack {
            stateContent
        }
        .background(Color.gray)
        .onAppear {
            downloader.loadAPI(urlString: urlString)
        }
    }
}

struct LoadableImageView_Previews: PreviewProvider {
    static var previews: some View {
        LoadableImageView(with: "https://is2-ssl.mzstatic.com/image/thumb/Music113/v4/3d/6d/d0/3d6dd00b-b480-740f-bc6e-e2ca78ff918e/190296882920.jpg/200x200bb.png")
            .previewLayout(.device)
            .frame(width: 300.0, height: 300.0)
    }
}
