//
//  TogglePage.swift
//  BasicView
//
//  Created by helios on 2019/12/16.
//  Copyright © 2019 helios. All rights reserved.
//

import SwiftUI
import Combine
struct TogglePage : View {
    
    @State var isOn = false
    
    var body: some View {
        HStack {
            Toggle(isOn: $isOn) {
                Text("State: \(self.isOn == true ? "开":"关")")
            }.padding(20)
            Spacer()
        }.navigationBarTitle(Text("Toggle"))
    }
}


struct TogglePage_Previews: PreviewProvider {
    static var previews: some View {
        TogglePage()
    }
}
