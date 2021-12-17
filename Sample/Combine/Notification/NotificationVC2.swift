//
//  NotificationVC2.swift
//  Sample
//
//  Created by Dinh Van Vu on 25/10/2021.
//

import UIKit

class NotificationVC2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func onClick(sender: UIButton) {
        let myNotification = Notification.Name("DrNotification")
        NotificationCenter.default.post(name: myNotification, object: User(firstName: "Vu", lastName: "DV"))
    }

}
