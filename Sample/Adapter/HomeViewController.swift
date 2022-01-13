//
//  HomeViewController.swift
//  Sample
//
//  Created by Dinh Van Vu on 25/12/2021.
//

import UIKit
import SwiftUI

struct HomeView: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> UIViewController {
        let storyboard = UIStoryboard(name: "HomeVC", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        return vc
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        
    }
}

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func goToSwiftUI(sender: UIButton) {
        let hostVC = UIHostingController(rootView: LoginView())
        self.present(hostVC, animated: true, completion: nil)
    }
}
