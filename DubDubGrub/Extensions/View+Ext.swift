//
//  View+Ext.swift
//  DubDubGrub
//
//  Created by Christian Skorobogatow on 24/6/21.
//

import SwiftUI

extension View {
    func profileNameText() -> some View {
        self.modifier(ProfileNameText())
    }
}
