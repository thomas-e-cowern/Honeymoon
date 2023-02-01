//
//  ContentView.swift
//  Honeymoon
//
//  Created by Thomas Cowern on 1/28/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    @State var showAlert: Bool = false
    @State var showGuide: Bool = false
    @State var showInfo: Bool = false
    
    // MARK: - Card Views
    
    var cardViews: [CardView] = {
        var views = [CardView]()
        for honeymoon in honeymoonData {
            views.append(CardView(honeymoon: honeymoon))
        }
        
        return views
    }()
    
    // MARK: - Top card
    private func isTopCard(cardView: CardView) -> Bool {
        guard let index = cardViews.firstIndex(where: { $0.id == cardView.id }) else {
            return false
        }
        return index == 0
    }
    
    var body: some View {
        VStack {
            // MARK: - Header
            HeaderView(showGuideview: $showGuide, showInfoView: $showInfo)
            
            Spacer()
            
            // MARK: - Cards
            ZStack {
                ForEach(cardViews) { cardView in
                    cardView
                }
            }
            
            Spacer()
            
            // MARK: - Footer
            FooterView(showBookingAlert: $showAlert)
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Success"), message: Text("Wishing you a lovely and most precious time together for the amazing couple"), dismissButton: .default(Text("Happy Honeymoon")))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
