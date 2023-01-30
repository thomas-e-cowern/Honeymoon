//
//  GuideView.swift
//  Honeymoon
//
//  Created by Thomas Cowern on 1/30/23.
//

import SwiftUI

struct GuideView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                
                HeaderComponent()
                
                Spacer(minLength: 10)
                
                Text("Get Started")
                    .fontWeight(.black)
                    .font(.largeTitle)
                    .foregroundColor(.pink)
                
                Text("Discover and pick the perfect destination for you romantic Honeymoon")
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
                
                Spacer(minLength: 10)
                
                VStack(alignment: .leading, spacing: 25) {
                    GuideComponent(title: "Like", subTitle: "Swipe Right", description: "Do you like this destination?  Touch the screen and swipe right, it will be save to favorites", icon: "heart.circle")
                }
                
                Spacer(minLength: 10)
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.top, 15)
            .padding(.bottom, 25)
            .padding(.horizontal, 25)
        }
    }
}

struct GuideView_Previews: PreviewProvider {
    static var previews: some View {
        GuideView()
    }
}
