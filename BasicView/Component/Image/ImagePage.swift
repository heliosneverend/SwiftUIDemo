//
//  ImagePage.swift
//  BasicView
//
//  Created by helios on 2019/12/13.
//  Copyright © 2019 helios. All rights reserved.
//

import SwiftUI

struct ImagePage: View {
    let range = 1 ..< 6
    var body: some View {
        VStack {
            ForEach(range) { index in
                Image("image")
                    .resizable()
                    .frame(width: CGFloat(30 * index),
                           height: CGFloat(30 * index),
                           alignment: .center)
                    .onTapGesture {
                        print("Tap \(index)")
                }
            }
        }.navigationBarTitle(Text("Image"))
    }
}

struct ImagePage_Previews: PreviewProvider {
    static var previews: some View {
        ImagePage()
    }
}
