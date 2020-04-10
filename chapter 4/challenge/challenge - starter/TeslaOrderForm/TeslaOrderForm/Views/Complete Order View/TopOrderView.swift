//
//  TopOrderView.swift
//  TeslaOrderForm
//
//  Created by Craig Clayton on 2/23/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct TopOrderView: View {

    var body: some View {
        VStack { // (1)
            HStack {
                Button(action: {}) {
                    Image("close-btn")
                }
                Spacer()
            }
            .padding(.bottom, 10)
            .buttonStyle(PlainButtonStyle())
        
            
            Text("ORDER COMPLETED")
                .customFont(.custom(.bold, 42))
        
            VStack(spacing: 0) {
                HStack {
                    Spacer()
            
                    Image(systemName: "info.circle")
                        .font(.system(size: 28))
                        .offset(x: -30)
                }
            
                ZStack {
                    Image("car-bg-shape")
                    Image("tesla-s")
                        .resizable()
                        .frame(width: 268, height: 125)
                }
            
                Text("TESLA MODEL S")
                    .customFont(.custom(.bold, 21))
                    .padding(.top, 30)
            }
            .frame(width: 268)
            .padding(.bottom, 20)
        }
    }
}

struct TopOrderView_Previews: PreviewProvider {
    static var previews: some View {
        TopOrderView()
            .previewLayout(.fixed(width: 400, height: 450))
    }
}
