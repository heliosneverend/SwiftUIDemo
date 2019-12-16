//
//  VStackPage.swift
//  BasicView
//
//  Created by helios on 2019/12/16.
//  Copyright © 2019 helios. All rights reserved.
//

import SwiftUI

struct VStackPage: View {
    var body: some View {
        VStack {
        Text("1980年旅美华侨许景由回国与失散30多年的儿子许灵均团聚,")
            Divider()
        Text("舍不得草原小学校的孩子、舍不得老乡、更舍不得自己的家与祖国,")
        }
    }
}

struct VStackPage_Previews: PreviewProvider {
    static var previews: some View {
        VStackPage()
    }
}
