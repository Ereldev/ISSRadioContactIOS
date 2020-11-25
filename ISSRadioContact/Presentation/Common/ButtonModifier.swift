//
//  ButtonModifier.swift
//  ISSRadioContact
//
//  Created by admin on 25/11/2020.
//

import SwiftUI

struct ButtonModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Color.buttonBackground)
            .cornerRadius(10)
            .foregroundColor(.white)
    }
    
}

extension View {
    
    func mainButton() -> ModifiedContent<Self, ButtonModifier> {
        return modifier(ButtonModifier())
    }
    
}
