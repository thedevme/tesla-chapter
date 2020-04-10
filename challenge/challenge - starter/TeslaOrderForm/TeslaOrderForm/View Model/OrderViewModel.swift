//
//  OrderViewModel.swift
//  TeslaOrderForm
//
//  Created by Craig Clayton on 2/11/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class OrderViewModel: ObservableObject {

    // Prototype data
    @Published var prototypeAmt = 1
    @Published var prototypeBoolean = true
    let prototypeArray = Array(stride(from: 0, through: 10, by: 1))

}
