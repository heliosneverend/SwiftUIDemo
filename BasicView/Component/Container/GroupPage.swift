//
//  GroupPage.swift
//  BasicView
//
//  Created by helios on 2019/12/16.
//  Copyright © 2019 helios. All rights reserved.
//

import SwiftUI

struct GroupPage: View {
   var body: some View {
    VStack(spacing: 20) {
           Group {
               Text("Hello World !")
               Text("Hello World !")
           }
           .padding(15)
           .border(Color.orange,
                   width: 1)
               .cornerRadius(5)
           Group {
               Text("Hello World !")
               Text("Hello World !")
           }.padding(25)
               .border(Color.black,
                       width: 1)
               .cornerRadius(5)
           Group {
               Text("Hello World !")
               Text("Hello World !")
           }.padding(35)
               .border(Color.green,
                       width: 1)
               .cornerRadius(5)
       }.navigationBarTitle(Text("Group"))
   }
}

struct GroupPage_Previews: PreviewProvider {
    static var previews: some View {
        GroupPage()
    }
}
