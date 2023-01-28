//
//  CardView.swift
//  Honeymoon
//
//  Created by Thomas Cowern on 1/28/23.
//

import SwiftUI

struct CardView: View {
    // MARK: - Properties
    let id = UUID()
    var honeymoon: Destination
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(honeymoon: HoneymoonData[1])
            .previewLayout(.fixed(width: 375, height: 600))
    }
}
