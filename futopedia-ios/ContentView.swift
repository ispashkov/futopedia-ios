//
//  ContentView.swift
//  futopedia-ios
//
//  Created by Ilya Pashkov on 9/1/20.
//  Copyright © 2020 Ilya Pashkov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    init() {
        UITabBar.appearance().backgroundColor = UIColor.init(red: 34 / 255, green: 35 / 255, blue: 39 / 255, alpha: 1)
    }
    
    var body: some View {
        TabView {
            Home().tabItem {
                Image("house").renderingMode(.original)
            }
            
            
            News().tabItem {
                Image("news").renderingMode(.original)
            }
            
            
            Builder().tabItem {
                Image("plus").renderingMode(.original)
            }
            
            Sbc().tabItem {
                Image("sbc").renderingMode(.original)
            }
            
            Tasks().tabItem {
                Image("tasks").renderingMode(.original)
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
