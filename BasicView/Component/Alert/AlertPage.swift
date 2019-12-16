//
//  AlertPage.swift
//  BasicView
//
//  Created by helios on 2019/12/16.
//  Copyright © 2019 helios. All rights reserved.
//

import SwiftUI

struct AlertPage : View {
    
    @State var showAlert = false
    var body: some View {
        Button(action: {
            self.showAlert = true
            print("Tap")
        }) {
            Text("支付")
                .font(.system(size: 40,
                              design: .rounded))
        }
        .alert(isPresented: $showAlert, content: {
            Alert(title: Text("确定要支付这100000美元吗？"),
                  message: Text("请谨慎操作\n一旦确认，钱款将立即转入人人贷账户"),
                  primaryButton: .destructive(Text("确认")) { print("已转出") },
                  secondaryButton: .cancel())
        }).navigationBarTitle(Text("Alert"))
        
    }
}

struct AlertPage_Previews: PreviewProvider {
    static var previews: some View {
        AlertPage()
    }
}
