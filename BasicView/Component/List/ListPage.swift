//
//  ListPage.swift
//  BasicView
//
//  Created by helios on 2019/12/16.
//  Copyright © 2019 helios. All rights reserved.
//

import SwiftUI

struct ListPage: View {
    var body: some View {
        List(0..<30) { item in
            Text("List")
        }
        .navigationBarTitle(Text("List"), displayMode: .large)
    }
}

struct ListPage_Previews: PreviewProvider {
    static var previews: some View {
        ListPage()
    }
}
