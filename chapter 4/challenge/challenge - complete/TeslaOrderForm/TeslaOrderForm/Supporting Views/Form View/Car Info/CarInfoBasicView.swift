//
//  CarInfoBasicView.swift
//  TeslaOrderForm
//
//  Created by Craig Clayton on 2/13/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct CarInfoBasicView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) { // (1)
            HStack { // (2)
                Text("TESLA MODEL S")
                    .customFont(.custom(.bold, 28))
                Spacer()
                Image(systemName: "info.circle")
                    .font(.system(size: 28))
                    .offset(y: -2)
            }
        
            VStack(alignment: .leading, spacing: 4) { // (3)
                Text("$80/hr")
                    .customFont(.custom(.medium, 19))
                    .foregroundColor(.baseDarkGray)
        
                HStack {
                    ForEach(0..<5) { _ in
                        Image(systemName: "star.fill")
                            .font(.system(size: 15))
                    }
                }
            }
        }

    }
}

struct CarInfoBasicView_Previews: PreviewProvider {
    static var previews: some View {
        CarInfoBasicView()
            .previewLayout(.fixed(width: 400, height: 100))
    }
}
