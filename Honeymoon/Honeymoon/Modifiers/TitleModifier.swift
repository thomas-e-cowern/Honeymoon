//
//  TitleModifier.swift
//  Honeymoon
//
//  Created by Thomas Cowern on 2/1/23.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.pink)
    }
}
