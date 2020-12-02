//
//  ContentView.swift
//  ISSRadioContact
//
//  Created by admin on 25/11/2020.
//

import SwiftUI

struct OnboardingView: View {
    
    @ObservedObject var viewModel: OnboardingViewModel
    
    init(viewModel: OnboardingViewModel) {
        self.viewModel = viewModel
        
        UIPageControl.appearance().currentPageIndicatorTintColor = UIColor.accentColor
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.accentColor.withAlphaComponent(0.4)
    }
    
    var body: some View {
        NavigationView {
            TabView() {
                VStack {
                    Image("iss_logo")
                        .padding([.top, .bottom])
                    Text("ISS_RADIO_CONTACT")
                        .font(.title)
                        .padding(.bottom)
                    Text("ONBOARDING_DESC_1")
                        .multilineTextAlignment(.center)
                        .font(.subheadline)
                    Spacer()
                }
                VStack {
                    Image("iss_logo")
                        .padding([.top, .bottom])
                    Text("ISS Radio Contact")
                        .font(.title)
                        .padding(.bottom)
                    Text("ONBOARDING_DESC_2")
                        .multilineTextAlignment(.center)
                        .font(.subheadline)
                        .padding(.bottom)
                    NavigationLink(destination: MainView().onAppear {
                        viewModel.onStartClick()
                    }) {
                        Text("START_NOW")
                            .mainButton()
                    }
                    Spacer()
                }
            }
            .navigationBarHidden(true)
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(viewModel: .init())
    }
}
