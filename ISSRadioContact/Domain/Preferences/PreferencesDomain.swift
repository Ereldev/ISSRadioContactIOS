//
//  PreferencesDomain.swift
//  ISSRadioContact
//
//  Created by admin on 02/12/2020.
//

import Foundation

class PreferencesDomain {
    
    private var repository: PreferencesRepository
    
    init(repository: PreferencesRepository = PreferencesRepository()) {
        self.repository = repository
    }
    
    func setOnboardingDisplayed() {
        repository.setOnboardingDisplayed()
    }
    
}
