//
//  SampleApp.swift
//  Sample
//
//  Created by Dinh Van Vu on 24/10/2021.
//

import SwiftUI

@main
struct SampleApp: App {
    
    var userDetails = UserDetails()
    
    var body: some Scene {
        WindowGroup {
            HomeSample().environmentObject(userDetails)
        }
    }
}
