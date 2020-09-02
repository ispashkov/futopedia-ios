//
//  ContentView.swift
//  futopedia-ios
//
//  Created by Ilya Pashkov on 9/1/20.
//  Copyright © 2020 Ilya Pashkov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Int = 1
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.init(red: 34 / 255, green: 35 / 255, blue: 39 / 255, alpha: 1)
    }
    
    var body: some View {
        TabView(selection: $selection) {
            Home().tabItem {
                Image(self.getImage(name: "house", tag: 1)).renderingMode(.original)
            }.tag(1)
            
            
            News().tabItem {
                Image(self.getImage(name: "news", tag: 2)).renderingMode(.original)
            }.tag(2)
            
            
            Builder().tabItem {
                Image(self.getImage(name: "plus", tag: 3)).renderingMode(.original)
            }.tag(3)
            
            Sbc().tabItem {
                Image(self.getImage(name: "sbc", tag: 4)).renderingMode(.original)
            }.tag(4)
            
            Tasks().tabItem {
                Image(self.getImage(name: "tasks", tag: 5)).renderingMode(.original)
            }.tag(5)
        }
    }
    
    func getImage(name: String, tag: Int) -> String {
        if self.selection == tag {
            return "\(name).fill"
        }
        
        return name
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
