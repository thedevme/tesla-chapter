//
//  CarInfoDetailView.swift
//  TeslaOrderForm
//
//  Created by Craig Clayton on 2/13/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct CarInfoDetailView: View {
    var body: some View {
        HStack { // (1)
            VStack(alignment: .leading) { // (2)
                Text("Transmission")
                    .customFont(.custom(.medium, 16))
                    .foregroundColor(.baseDarkGray)
        
                Text("Automatic")
                .customFont(.custom(.medium, 22))
            }
        
            Spacer() // (3)
        
            VStack(alignment: .leading) { // (4)
                Text("Class")
                    .customFont(.custom(.medium, 16))
                    .foregroundColor(.baseDarkGray)
        
                Text("Luxury")
                    .customFont(.custom(.medium, 22))
            }
        
            Spacer()
        
            VStack(alignment: .leading) {
                Text("Year")
                    .customFont(.custom(.medium, 16))
                    .foregroundColor(.baseDarkGray)
                Text("2020")
                .customFont(.custom(.medium, 22))
            }
        }.padding(.top, 15)
    }
}

struct CarInfoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CarInfoDetailView()
            .previewLayout(.fixed(width: 400, height: 100))
    }
}
