//
//  SymbolModifier.swift
//  Honeymoon
//
//  Created by Thomas Cowern on 2/2/23.
//

import SwiftUI

struct SymbolModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .font(.system(size: 120))
            .shadow(radius: 12, x: 0, y: 0)
    }
}
