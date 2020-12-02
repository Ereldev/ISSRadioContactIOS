//
//  ISSRadioContactApp.swift
//  ISSRadioContact
//
//  Created by admin on 25/11/2020.
//

import SwiftUI

@main
struct ISSRadioContactApp: App {
    
    @AppStorage("onboardingDisplayed") private var onboardingDisplayed = false
    
    var body: some Scene {
        WindowGroup {
            if onboardingDisplayed {
                MainView()
            } else {
                OnboardingView(viewModel: OnboardingViewModel())
            }
        }
    }
    
}
