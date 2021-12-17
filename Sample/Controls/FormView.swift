//
//  SampleFormView.swift
//  Sample
//
//  Created by Dinh Van Vu on 04/11/2021.
//

import SwiftUI

struct SampleFormView: View {
    
    @State var notifyMeAbout = true
    @State var playNotificationSounds = true
    @State var sendReadReceipts = true
    @State var profileImageSize = true
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Notifications")) {
                    Picker("Notify Me About", selection: $notifyMeAbout) {
                        Text("Direct Messages").tag(NotifyMeAboutType.directMessages)
                        Text("Mentions").tag(NotifyMeAboutType.mentions)
                        Text("Anything").tag(NotifyMeAboutType.anything)
                    }
                    Toggle("Play notification sounds", isOn: $playNotificationSounds)
                    Toggle("Send read receipts", isOn: $sendReadReceipts)
                }
                Section(header: Text("User Profiles")) {
                    Picker("Profile Image Size", selection: $profileImageSize) {
                        Text("Large").tag(ProfileImageSize.large)
                        Text("Medium").tag(ProfileImageSize.medium)
                        Text("Small").tag(ProfileImageSize.small)
                    }
                    Button("Clear Image Cache") {}
                }
            }
        }
    }
    
    enum NotifyMeAboutType {
        case directMessages
        case mentions
        case anything
    }
    
    enum ProfileImageSize {
        case large
        case medium
        case small
    }
}

struct SampleFormView_Previews: PreviewProvider {
    static var previews: some View {
        SampleFormView()
    }
}
