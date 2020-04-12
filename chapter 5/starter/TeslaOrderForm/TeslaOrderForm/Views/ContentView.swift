//
//  ContentView.swift
//  TeslaOrderForm
//
//  Created by Craig Clayton on 1/23/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        ZStack {
            NavigationView {
                ScrollView(.vertical) {
                    VStack(spacing: 0) {
                        CarDetailView()
                            .frame(height: 600)
                        FormView()
                            .frame(height: 570)
                    }.padding(.top, 100)
                }.hideNavigationBar()
            }
        
            CompleteOrderView()
                .opacity(0)
                .animation(.default)
        }.padding(.horizontal, 35)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



