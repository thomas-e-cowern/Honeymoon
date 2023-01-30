//
//  GuideComponent.swift
//  Honeymoon
//
//  Created by Thomas Cowern on 1/30/23.
//

import SwiftUI

struct GuideComponent: View {
    
    // MARK: Properties
    
    var title: String
    var subTitle: String
    var description: String
    var icon: String
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct GuideComponent_Previews: PreviewProvider {
    static var previews: some View {
        GuideComponent(title: "Title", subTitle: "Swip right", description: "This is a placeholder sentence his is a placeholder sentence his is a placeholder sentence his is a placeholder sentence", icon: "heart.circle")
            .previewLayout(.sizeThatFits)
    }
}
