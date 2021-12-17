//
//  SampleSignAppleView.swift
//  Sample
//
//  Created by Dinh Van Vu on 27/11/2021.
//

import SwiftUI
import AuthenticationServices

struct SampleSignAppleView: View {
    var body: some View {
        SignInWithAppleButton(.signIn,
                     onRequest: { request in
                         request.requestedScopes = [.fullName, .email]
        },
        onCompletion: { result in
            switch result {
            case .success(_):
                  print("Authorization successful.")
               case .failure(let error):
                  print("Authorization failed: " + error.localizedDescription)
        }
        }).frame(width: 200, height: 20)
    }
}

struct SampleSignAppleView_Previews: PreviewProvider {
    static var previews: some View {
        SampleSignAppleView()
    }
}
