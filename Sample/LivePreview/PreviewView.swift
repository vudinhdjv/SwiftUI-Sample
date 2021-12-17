//
//  PreviewView.swift
//  Sample
//
//  Created by Dinh Van Vu on 03/11/2021.
//

import SwiftUI

struct PreviewView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> PreviewViewController {
        let previewViewController = PreviewViewController(nibName: "PreviewViewController", bundle: nil)
        return previewViewController
    }
    
    func updateUIViewController(_ uiViewController: PreviewViewController, context: Context) {}
}

struct PreviewView_Previews: PreviewProvider {
    static var previews: some View {
        PreviewView()
    }
}
