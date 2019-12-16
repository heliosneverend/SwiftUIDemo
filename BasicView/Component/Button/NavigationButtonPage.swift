//
//  NavigationButtonPage.swift
//  BasicView
//
//  Created by helios on 2019/12/16.
//  Copyright © 2019 helios. All rights reserved.
//

import SwiftUI

struct NavigationButtonPage: View {
    var body: some View {
        NavigationLink(destination: NavigationButtonPage()) {
            Text("NavigationButton")
                .bold()
                .foregroundColor(.blue)
                .font(.largeTitle)
            }
            .navigationBarTitle(Text("Page"))
    }
}

struct NavigationButtonPage_Previews: PreviewProvider {
    static var previews: some View {
        NavigationButtonPage()
    }
}
