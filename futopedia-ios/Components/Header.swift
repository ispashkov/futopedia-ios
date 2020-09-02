//
//  Header.swift
//  futopedia-ios
//
//  Created by Ilya Pashkov on 9/1/20.
//  Copyright © 2020 Ilya Pashkov. All rights reserved.
//

import SwiftUI

struct Header: View {
    public var action: () -> Void
    
    var body: some View {
        HStack {
            HStack {
                Image("logo")
                Text("Futopedia".uppercased())
                    .font(.system(size: 20, weight: .heavy, design: .default))
                    .italic()
            }
            
            Spacer()
            
            Button(action: self.action) {
                Image("menu")
            }
        }
        .padding()
        .foregroundColor(Color.white)
        .background(Color.primaryColor)
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header(action: {
            print("props click")
        })
    }
}
