//
//  Downloader.swift
//  Sample
//
//  Created by Dinh Van Vu on 03/11/2021.
//

import Foundation
import SwiftUI
import Combine

class Downloader: ObservableObject {
    @Published var data = Data()
    
    func loadAPI(urlString: String) {
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { [weak self] (data, _, _) in
            guard let data = data else { return }
            DispatchQueue.main.async {
                self?.data = data
            }
        }.resume()
    }
}
