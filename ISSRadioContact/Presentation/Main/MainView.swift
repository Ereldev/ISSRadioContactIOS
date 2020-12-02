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
                RadioView()
                    .tabItem {
                        Image(systemName: "1.square.fill")
                        Text("TAB_RADIO")
                    }
                PassListView()
                    .tabItem {
                        Image(systemName: "2.square.fill")
                        Text("TAB_PASS")
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
