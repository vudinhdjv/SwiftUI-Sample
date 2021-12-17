//
//  DrButtonViewModifier.swift
//  Sample
//
//  Created by Dinh Van Vu on 09/11/2021.
//

import Foundation
import SwiftUI

struct DrButtonViewModifier: ViewModifier {
    var isDisabled = false
    
    func body(content: Content) -> some View {
        content
            .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
            .background(isDisabled ? Color.gray : Color.black)
            .cornerRadius(8)
            .shadow(color: Color.gray.opacity(1.0), radius: 3, x: 1, y: 2)
    }
}

extension View {
    func DrButton(isDisabled: Bool = false) -> some View {
        ModifiedContent(
            content: self,
            modifier: DrButtonViewModifier(isDisabled: isDisabled)
        )
    }
}


