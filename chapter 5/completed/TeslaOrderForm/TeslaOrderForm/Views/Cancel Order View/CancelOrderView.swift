//
//  CancelOrderView.swift
//  TeslaOrderForm
//
//  Created by Craig Clayton on 4/10/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct CancelOrderView: View {
    
    @EnvironmentObject var order:OrderViewModel
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.clear)
                .background(VibrancyBackground())
                .edgesIgnoringSafeArea(.all)

            GeometryReader { geo in
                ZStack {
                    Rectangle()
                        .frame(width: 380, height: 190)
                        .background(Color.black)
                        .cornerRadius(10)
                        .opacity(0.2)
                        .blur(radius: 10)

                    CancelModalView()
                }
                .animation(.default)
            }
        }.onAppear {
            self.order.isModalVisible = true
        }.onTapGesture {
            self.order.isCancelOrderVisible.toggle()
            self.order.isModalVisible.toggle()
        }
    }
}

struct CancelOrderView_Previews: PreviewProvider {
    static var previews: some View {
        CancelOrderView()
    }
}
