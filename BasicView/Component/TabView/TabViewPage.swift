//
//  TabViewPage.swift
//  BasicView
//
//  Created by helios on 2019/12/16.
//  Copyright © 2019 helios. All rights reserved.
//

import SwiftUI

struct TabViewPage: View {
   @State private var index = 0 // 默认选中索引
      
      let imgs = ["photo","paperplane","doc","sunrise","suit.spade"]
    var body: some View {
        
        TabView(selection: $index) {
            ForEach(0..<imgs.count) { item in
                TabItemPage(index: item)
                    .tabItem{
                        Image(systemName: self.imgs[item])
                        Text("\(item)")
                }
                .tag(item)
            }
        }.navigationBarTitle("TabViewPage")
        
    }
}
fileprivate struct TabItemPage: View {
    var index: Int
    var body: some View {
        ZStack {
            Rectangle().foregroundColor(Color.orange)
            VStack {
                Text("\(index)")
                    .foregroundColor(.white)
                    .font(.system(size: 100, design: .rounded))
                    .bold()
                Image("image")
                    .resizable()
                    .frame(width: 200,height: 200)
            }
        }
    }
}
struct TabViewPage_Previews: PreviewProvider {
    static var previews: some View {
        TabViewPage()
    }
}
