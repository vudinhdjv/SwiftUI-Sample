//
//  NotificationVC.swift
//  Sample
//
//  Created by Dinh Van Vu on 25/10/2021.
//

import UIKit
import SwiftUI
import Combine

struct NotificationView: UIViewControllerRepresentable {
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let notificationVC = NotificationVC(nibName: "NotificationVC", bundle: nil)
        return notificationVC
    }
}

class User {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

class NotificationVC: UIViewController {
    
    private var cancellableBag = Set<AnyCancellable>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let myNotification = Notification.Name("DrNotification")
        NotificationCenter.default.publisher(for: myNotification)
            .compactMap{$0.object as? User}
            .map{$0.lastName}
            .sink {
                print($0)
            }
            .store(in: &cancellableBag)
    }
    
    @IBAction func onClick(sender: UIButton) {
        self.present(NotificationVC2(), animated: true)
    }
    
}
