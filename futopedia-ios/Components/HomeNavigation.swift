
//
//  HomeNavigation.swift
//  futopedia-ios
//
//  Created by Ilya Pashkov on 9/2/20.
//  Copyright © 2020 Ilya Pashkov. All rights reserved.
//

import SwiftUI

struct HomeNavigation: View {
    let routes: Array<Route> = [
        Route(title: "Дешевые", icon: "coins"),
        Route(title: "Избранное", icon: "heart"),
        Route(title: "TOTW", icon: "totw"),
        Route(title: "Новые", icon: "leaf"),
        Route(title: "Популярные", icon: "fire")
    ]
    
    var body: some View {
        HStack(alignment: .top, spacing: 10) {
            ForEach(routes, id: \.title) { route in
                HomeNavigationItem(title: route.title, icon: route.icon, onClick: {
                    self.handleClickNavItem(title: route.title)
                })
            }
        }
        .frame(width: UIScreen.main.bounds.width)
        .padding([.top, .bottom], 16)
        .background(Color.grayColor)
    }
    
    func handleClickNavItem(title: String) -> Void {
        print(title)
    }
}

struct HomeNavigationItem: View {
    public let title: String
    public let icon: String
    public let onClick: () -> Void
    
    private let size: CGFloat = 46
    private let borderColor: LinearGradient = LinearGradient(gradient: Gradient(colors: [
        Color(red: 240 / 255, green: 240 / 255, blue: 240 / 255),
        Color(red: 255 / 255, green: 150 / 255, blue: 65 / 255),
        Color(red: 255 / 255, green: 221 / 255, blue: 155 / 255),
        Color(red: 169 / 255, green: 44 / 255, blue: 247 / 255),
        Color(red: 169 / 255, green: 44 / 255, blue: 247 / 255),
    ]), startPoint: .topTrailing, endPoint: .bottomTrailing)
    
    var body: some View {
        Button(action: self.onClick) {
            VStack(alignment: .center, spacing: 5) {
                Circle()
                    .stroke(self.borderColor, lineWidth: 1)
                    .overlay(Circle().fill(Color.init(UIColor(white: 1, alpha: 0))))
                    .frame(width: self.size, height: self.size, alignment: .center)
                    .rotationEffect(.degrees(40))
                    .background(Image(self.icon).renderingMode(.original))
                
                Text(self.title)
                    .font(.system(size: 9, weight: .light, design: .default))
                    .foregroundColor(Color.primaryColor)
            }.padding(5)
        }
    }
}

struct HomeNavigation_Previews: PreviewProvider {
    static var previews: some View {
        HomeNavigation()
    }
}
