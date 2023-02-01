//
//  InfoView.swift
//  Honeymoon
//
//  Created by Thomas Cowern on 2/1/23.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                HeaderComponent()
                
                Spacer(minLength: 10)
                
                Text("App Info")
                    .fontWeight(.black)
                    .modifier(TitleModifier())
                
                AppInfoView()
                
                Text("Credits")
                    .fontWeight(.black)
                    .modifier(TitleModifier())
                
                HStack {
                    Text("Photos").foregroundColor(.gray)
                    Spacer()
                    Text("Unsplash")
                }
                
                Spacer(minLength: 10)
                
                Button {
                    print("InfoView button was tapped")
                } label: {
                    Text("Continue".uppercased())
                }
                .modifier(ButtonModifier())

                
                
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.top, 15)
            .padding(.bottom, 25)
            .padding(.horizontal, 25)
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}

struct AppInfoView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            RowAppInfoView()
        }
    }
}

struct RowAppInfoView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Application")
                    .foregroundColor(.gray)
                Spacer()
                Text("Honeymoon")
            }
            Divider()
        }
    }
}
