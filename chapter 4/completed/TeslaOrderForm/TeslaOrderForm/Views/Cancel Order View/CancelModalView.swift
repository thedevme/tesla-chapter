//
//  CancelModalView.swift
//  TeslaOrderForm
//
//  Created by Craig Clayton on 4/10/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct CancelModalView: View {
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                VStack(alignment: .leading, spacing: -10) {
                    Text("CANCEL ORDER?")
                        .customFont(.custom(.bold, 30))

                    Text("You’ll return to the car details")
                        .customFont(.custom(.ultralight, 22))
                }

                Spacer()
            }

            HStack {
                Button("NO, KEEP IT") {
                }
                .buttonStyle(TeslaButtonStyle())
                .background(Color.baseWhite)
                .cornerRadius(8)

                Spacer()

                Button(action: {
                }) {
                    Text("CANCEL")
                }
                .buttonStyle(TeslaButtonStyle())
                .background(Color.baseCardinal)
                .cornerRadius(8)
                .foregroundColor(.white)
            }
        }
        .padding(.horizontal, 10)
        .frame(width: 380, height: 190)
        .background(Color.white)
        .cornerRadius(10)
    }
}

struct CancelModalView_Previews: PreviewProvider {
    static var previews: some View {
        CancelModalView().previewLayout(.fixed(width: 400, height: 200))
    }
}
