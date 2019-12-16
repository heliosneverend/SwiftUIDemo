//
//  ScrollViewPage.swift
//  BasicView
//
//  Created by helios on 2019/12/16.
//  Copyright © 2019 helios. All rights reserved.
//

import SwiftUI

struct ScrollViewPage : View {
    var body: some View {
        ScrollView {
            Text("SwiftUI").padding(20)
            Divider()
            Image("image")
                .resizable()
                .frame(width: 300, height: 300, alignment: .center)
            Divider()
            Text("Views and controls are the visual building blocks of your app’s user interface.")
            }
            .border(Color.gray, width: 1)
            .cornerRadius(10)
            .padding(10)
            .navigationBarTitle(Text("ScrollView"))
    }
}

struct ScrollViewPage_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewPage()
    }
}
