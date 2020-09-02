//
//  SearchField.swift
//  futopedia-ios
//
//  Created by Ilya Pashkov on 9/2/20.
//  Copyright © 2020 Ilya Pashkov. All rights reserved.
//

import SwiftUI

struct SearchField: View {
    @State private var name: String = ""
    
    private let paddingSize: CGFloat = 20
    private let borderWidth: CGFloat = 1
    
    var body: some View {
        VStack {
            TextField("Поиск", text: $name)
        }
        .frame(width: UIScreen.main.bounds.width + (self.borderWidth * 2) - (self.paddingSize * 2))
        .padding(self.paddingSize)
        .border(Color.gray, width: self.borderWidth)
    }
}

struct SearchField_Previews: PreviewProvider {
    static var previews: some View {
        SearchField()
    }
}
