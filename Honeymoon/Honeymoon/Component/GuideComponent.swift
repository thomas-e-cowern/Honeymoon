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
        HStack(alignment: .center, spacing: 20) {
            Image(systemName: icon)
                .font(.largeTitle)
                .foregroundColor(.pink)
            
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Text(title.uppercased())
                        .fontWeight(.heavy)
                    
                    Spacer()
                    
                    Text(subTitle.uppercased())
                        .font(.footnote)
                        .fontWeight(.heavy)
                        .foregroundColor(.pink)
                }
            }
        }
    }
}

struct GuideComponent_Previews: PreviewProvider {
    static var previews: some View {
        GuideComponent(title: "Title", subTitle: "Swip right", description: "This is a placeholder sentence his is a placeholder sentence his is a placeholder sentence his is a placeholder sentence", icon: "heart.circle")
            .previewLayout(.sizeThatFits)
    }
}
