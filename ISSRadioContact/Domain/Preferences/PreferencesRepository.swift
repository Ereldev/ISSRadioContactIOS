//
//  PreferencesRepository.swift
//  ISSRadioContact
//
//  Created by admin on 02/12/2020.
//

import Foundation

class PreferencesRepository {
    
    func setOnboardingDisplayed() {
        UserDefaults.standard.set(true, forKey: "onboardingDisplayed")
    }
    
}
