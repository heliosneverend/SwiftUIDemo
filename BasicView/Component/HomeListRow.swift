//
//  HomeListRow.swift
//  BasicView
//
//  Created by helios on 2019/12/13.
//  Copyright © 2019 helios. All rights reserved.
//

import SwiftUI

struct HomeListRow: View {
    private let title: String
    private let subTitle: String?
    init(title: String, subTitle: String? = nil) {
        self.title = title
        self.subTitle = subTitle
    }
    var body: some View {
           VStack(alignment: .leading, spacing: 5) {
               Text(title).bold()
               if subTitle != nil {
                   Text(subTitle!).font(.subheadline).opacity(0.5).lineLimit(nil)
               }
           }
       }
}

struct HomeListRow_Previews: PreviewProvider {
    static var previews: some View {
        HomeListRow(title: "title")
    }
}
