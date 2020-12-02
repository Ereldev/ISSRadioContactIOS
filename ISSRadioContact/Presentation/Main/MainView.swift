//
//  MainView.swift
//  ISSRadioContact
//
//  Created by admin on 02/12/2020.
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
        NavigationView {
            TabView {
                Text("Tab 1")
                    .tabItem {
                        Text("Tab 1")
                    }
                Text("Tab 2")
                    .tabItem {
                        Text("Tab 2")
                    }
            }
        }
    }
    
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
