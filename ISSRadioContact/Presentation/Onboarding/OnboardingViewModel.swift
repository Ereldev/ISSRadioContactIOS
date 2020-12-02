//
//  OboardingViewModel.swift
//  ISSRadioContact
//
//  Created by admin on 02/12/2020.
//

import Foundation

class OnboardingViewModel: ObservableObject {
    
    private var preferencesDomain: PreferencesDomain
    
    init(preferencesDomain: PreferencesDomain = PreferencesDomain()) {
        self.preferencesDomain = preferencesDomain
    }
    
    func onStartClick() {
        preferencesDomain.setOnboardingDisplayed()
    }
 
}
