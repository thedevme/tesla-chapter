//
//  FormView.swift
//  ShoeStore
//
//  Created by Craig Clayton on 1/22/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct FormView: View {

    @ObservedObject var order = OrderViewModel()
    
    init() {
        UITableView.appearance().sectionHeaderHeight = 0
        UITableView.appearance().sectionFooterHeight = 10
        UITableView.appearance().backgroundColor = .clear
        UISwitch.appearance().onTintColor = UIColor.baseGreen
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
                
                        Button(action: {}) {
                            Text("COMPLETE ORDER")
                        }
                        .customFont(.custom(.bold, 28))
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .frame(height: 60)
                        .foregroundColor(.white)
                        .background(Color.baseGreen)
                        .cornerRadius(10)
                    }
                }

            }
                .environment(\.horizontalSizeClass, .regular)
        }
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}

