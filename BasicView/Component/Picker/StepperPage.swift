//
//  StepperPage.swift
//  BasicView
//
//  Created by helios on 2019/12/16.
//  Copyright © 2019 helios. All rights reserved.
//

import SwiftUI
import Combine

struct StepperPage : View {
    
    @State var value = 0
    
    var body: some View {
        HStack {
            Stepper(value: $value, step: 2, onEditingChanged: { c in
                print(c)
            }) {
                Text("Stepper Value: \(self.value)")
            }.padding(50)
        }.navigationBarTitle(Text("Stepper"))
    }
}

struct StepperPage_Previews: PreviewProvider {
    static var previews: some View {
        StepperPage()
    }
}
