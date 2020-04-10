//
//  TopSectionView.swift
//  TeslaOrderForm
//
//  Created by Craig Clayton on 2/11/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct TopSectionView: View {
    @ObservedObject var order = OrderViewModel()

    init() {
        UITableView.appearance().sectionHeaderHeight = 0
        UITableView.appearance().sectionFooterHeight = 10
        UITableView.appearance().backgroundColor = .clear
        UITableView.appearance().tableFooterView = UIView(frame: .zero)
    }

    var body: some View {
        VStack {
            Form {
                Section {
                    Picker(selection: $order.prototypeAmt, label: Text("Rental period")) {
                        ForEach(0 ..< order.prototypeArray.count) {
                            Text("\(self.order.prototypeArray[$0])").tag($0)
                        }
                    }
                }.listRowBackground(Color.baseGray)

                Section {
                    Picker(selection: $order.prototypeAmt, label: Text("Number of cars")) {
                        ForEach(0 ..< order.prototypeArray.count) {
                            Text("\(self.order.prototypeArray[$0])").tag($0)
                        }
                    }
                }.listRowBackground(Color.baseGray)

                Section {
                    Picker(selection: $order.prototypeAmt, label: Text("Pick-up time")) {
                        ForEach(0 ..< order.prototypeArray.count) {
                            Text("In \(self.order.prototypeArray[$0]) mins").tag($0)
                        }
                    }
                }.listRowBackground(Color.baseGray)
            }.environment(\.horizontalSizeClass, .regular)
        }
    }
}

struct TopSectionView_Previews: PreviewProvider {
    static var previews: some View {
        TopSectionView()
    }
}
