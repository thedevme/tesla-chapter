//
//  BottomOrderView.swift
//  TeslaOrderForm
//
//  Created by Craig Clayton on 2/23/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct BottomOrderView: View {
    
    var body: some View {
        VStack {
            HStack {
                HStack(spacing: 4) {
                    Text("1")
                        .customFont(.custom(.medium, 22))
                    Text("car")
                        .customFont(.custom(.ultralight, 22))
                }
        
                Spacer()
        
                HStack(spacing: 4) {
                    Text("2")
                        .customFont(.custom(.medium, 22))
                    Text("hours")
                        .customFont(.custom(.ultralight, 22))
                }
        
                Spacer()
        
                HStack(spacing: 4) {
                    Text("$160")
                        .customFont(.custom(.medium, 22))
                }
            }
            .padding(.horizontal, 15)
            .frame(height: 55)
            .frame(minWidth: 0, maxWidth: .infinity)
            .background(Color.baseGray)
            .cornerRadius(10)
        
            ZStack {
                Image("sample-map")
                    .padding(.bottom, 30)
            
                HStack {
                    Image(systemName: "clock")
                    HStack(spacing: 4) {
                        Text("The car will arrive in").customFont(.custom(.ultralight, 22))
                        Text("20 mins").customFont(.custom(.medium, 22))
                    }
                    Spacer()
                    Image("disclosure-indicator")
                }
                .frame(height: 40)
                .padding(.horizontal, 10)
                .background(Color.white)
                .cornerRadius(10)
                .padding(.horizontal, 10)
                .offset(y: 75)
            }.frame(width: 370)

            Button(action: { }) {
                Text("CANCEL ORDER")
            }
            .frame(height: 55)
            .frame(minWidth: 0, maxWidth: .infinity)
            .background(Color.baseGray)
            .buttonStyle(PlainButtonStyle())
            .cornerRadius(10)
            .foregroundColor(.baseCardinal)
            .customFont(.custom(.bold, 28))
            
            Spacer()
        }
    }
}

struct BottomOrderView_Previews: PreviewProvider {
    static var previews: some View {
        BottomOrderView()
            .previewLayout(.fixed(width: 400, height: 400))
    }
}
