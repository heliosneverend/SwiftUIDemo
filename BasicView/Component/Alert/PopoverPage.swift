//
//  PopoverPage.swift
//  BasicView
//
//  Created by helios on 2019/12/16.
//  Copyright © 2019 helios. All rights reserved.
//

import SwiftUI

struct PopoverPage : View {
    
    @State var showPop = false
    
    var body: some View {
        VStack {
            Button(action: {
                self.showPop = true
                print(self.showPop)
            }) {
                Text("Popover").bold().font(.system(.largeTitle, design: .monospaced))
            }
            .popover(isPresented: $showPop, content: {
                ImagePage()
            })
        }
    }
}

struct PopoverPage_Previews: PreviewProvider {
    static var previews: some View {
        PopoverPage()
    }
}
