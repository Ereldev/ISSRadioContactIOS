//
//  ContentView.swift
//  ISSRadioContact
//
//  Created by admin on 25/11/2020.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = UIColor.accentColor
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.accentColor.withAlphaComponent(0.4)
    }
    
    var body: some View {
        TabView() {
            VStack() {
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
            VStack() {
                Image("iss_logo")
                    .padding([.top, .bottom])
                Text("ISS Radio Contact")
                    .font(.title)
                    .padding(.bottom)
                Text("ONBOARDING_DESC_2")
                    .multilineTextAlignment(.center)
                    .font(.subheadline)
                    .padding(.bottom)
                Button(action: {
                    
                }) {
                    Text("START_NOW")
                        .mainButton()
                }
                Spacer()
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
