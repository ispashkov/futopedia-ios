//
//  HostingController.swift
//  futopedia-ios
//
//  Created by Ilya Pashkov on 9/1/20.
//  Copyright © 2020 Ilya Pashkov. All rights reserved.
//

import SwiftUI
 
final class HostingController<Content: View>: UIHostingController<Content> {
    override var preferredStatusBarStyle: UIStatusBarStyle {
       return UIStatusBarStyle.darkContent
    }
}
