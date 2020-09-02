
//
//  Home.swift
//  futopedia-ios
//
//  Created by Ilya Pashkov on 9/2/20.
//  Copyright © 2020 Ilya Pashkov. All rights reserved.
//

import SwiftUI

struct Home: View {
    @State var isOpenMenu: Bool = false
    
    var body: some View {
        ZStack(alignment: .top) {
            Color.primaryColor.edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .trailing, spacing: 0) {
                Header(action: clickOnMenu)
                
                HomeNavigation()
                
                SearchField()
                
                Spacer()
            }
            .background(Color.white)
        }
        
    }
    
    func clickOnMenu() -> Void {
        withAnimation(.spring()) {
            self.isOpenMenu.toggle()
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
