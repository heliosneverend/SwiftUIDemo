//
//  ButtonPage.swift
//  BasicView
//
//  Created by helios on 2019/12/13.
//  Copyright © 2019 helios. All rights reserved.
//

import SwiftUI

struct ButtonPage: View {
    var body: some View {
        Button(action: {
            print("Tap")
        }) {
            Text("续期按钮").bold()
                .font(.system(size: 40,design: .rounded))
                .shadow(radius: 1)

        }.navigationBarTitle(Text("Button"))
    }
}

struct ButtonPage_Previews: PreviewProvider {
    static var previews: some View {
        ButtonPage()
    }
}
