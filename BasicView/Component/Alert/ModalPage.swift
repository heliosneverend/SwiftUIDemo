//
//  ModalPage.swift
//  BasicView
//
//  Created by helios on 2019/12/16.
//  Copyright © 2019 helios. All rights reserved.
//

import SwiftUI

struct ModalPage : View {
    
    @State var showModal = false
    
    var body: some View {
        VStack {
            Button(action: {
                self.showModal = true
            }) {
                Text("Modal View")
                    .bold()
                    .font(.system(.largeTitle,
                                  design: .serif))
            }
        }
    }
}

struct ModalPage_Previews: PreviewProvider {
    static var previews: some View {
        ModalPage()
    }
}
