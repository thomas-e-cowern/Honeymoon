//
//  HeaderView.swift
//  Honeymoon
//
//  Created by Thomas Cowern on 1/28/23.
//

import SwiftUI

struct HeaderView: View {
    // MARK: - Properties
    @Binding var showGuideview: Bool
    
    var body: some View {
        HStack {
            Button {
                // Action
                print("Information")
            } label: {
                Image(systemName: "info.circle")
                    .font(.system(size: 24, weight: .regular))
            }
            .tint(.primary)
            
            Spacer()
            
            Image("logo-honeymoon-pink")
                .resizable()
                .scaledToFit()
                .frame(height: 28)
            
            Spacer()
            
            Button {
                self.showGuideview.toggle()
                print("Guide")
            } label: {
                Image(systemName: "questionmark.circle")
                    .font(.system(size: 24, weight: .regular))
            }
            .tint(.primary)
            .sheet(isPresented: $showGuideview) {
                GuideView()
            }


        }
        .padding()
    }
}

struct HeaderView_Previews: PreviewProvider {
    @State static var showGuide: Bool = false
    
    static var previews: some View {
        HeaderView(showGuideview: $showGuide)
            .previewLayout(.fixed(width: 375, height: 80))
    }
}
