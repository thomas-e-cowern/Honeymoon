//
//  ContentView.swift
//  Honeymoon
//
//  Created by Thomas Cowern on 1/28/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CardView(honeymoon: HoneymoonData[1])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
