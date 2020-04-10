//
//  BottomSectionView.swift
//  TeslaOrderForm
//
//  Created by Craig Clayton on 2/11/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct BottomSectionView: View {

    @ObservedObject var order = OrderViewModel()
    @Binding var isOrderComplete: Bool

    init(isOrderComplete: Binding<Bool>) {
        UITableView.appearance().sectionHeaderHeight = 0
        UITableView.appearance().sectionFooterHeight = 10
        UITableView.appearance().backgroundColor = .clear
        UITableView.appearance().tableFooterView = UIView(frame: .zero)
        UISwitch.appearance().onTintColor = UIColor.baseGreen
        _isOrderComplete = isOrderComplete
    }

    var body: some View {
        VStack {
            Form {
                Section {
                    Picker(selection: $order.prototypeAmt, label: Text("Pick-up location")) {
                        ForEach(0 ..< order.prototypeArray.count) {
                            Text("\(self.order.prototypeArray[$0])").tag($0)
                        }
                    }

                    Picker(selection: $order.prototypeAmt, label: Text("Return location")) {
                        ForEach(0 ..< order.prototypeArray.count) {
                            Text("\(self.order.prototypeArray[$0])").tag($0)
                        }
                    }
                }
                .listRowBackground(Color.baseGray)

                Section {
                    Toggle(isOn: $order.prototypeBoolean) {
                        Text("Drivers")
                    }
                }.listRowBackground(Color.baseGray)

                Section {
                    VStack {
                        Text("$160")
                            .customFont(.custom(.bold, 60))
                            .padding(.bottom)

                        Button(action: {
                            self.isOrderComplete.toggle()
                            self.sendOrder()
                        }) {
                            Text("COMPLETE ORDER")
                        }
                        .customFont(.custom(.bold, 28))
                        .frame(width: 350, height: 60)
                        .foregroundColor(.white)
                        .background(Color.baseGreen)
                        .cornerRadius(10)
                    }
                }
            }.environment(\.horizontalSizeClass, .regular)
        }
    }

    func sendOrder() {
        guard let encoded = try? JSONEncoder().encode(order) else {
            print("failed to encode")
            return
        }

        print("send order")
        dump(encoded)
    }
}

struct BottomSectionView_Previews: PreviewProvider {
    static var previews: some View {
        BottomSectionView(isOrderComplete: .constant(false))
    }
}
