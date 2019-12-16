//
//  ActionSheetPage.swift
//  BasicView
//
//  Created by helios on 2019/12/16.
//  Copyright © 2019 helios. All rights reserved.
//

import SwiftUI

struct ActionSheetPage : View {
    
    @State var showSheet = false
    var body: some View {
        VStack {
            Button(action: {
                self.showSheet = true
            }) {
                Text("ActionSheet")
                    .bold()
                    .font(.system(.largeTitle,
                                  design: .rounded))
            }
            .actionSheet(isPresented: $showSheet, content: {sheet})
        }

    }
    
    private var sheet: ActionSheet {

        let action = ActionSheet(title: Text("Title"),
                                 message: Text("Message"),
                                 buttons:
            [.default(Text("Default"), action: {
                print("Default")
                self.showSheet = false
            }),.destructive(Text("destructive"), action: {
                print("destructive")
                self.showSheet = false
            }),.cancel({
                print("Cancel")
                self.showSheet = false
            })])
        
        return action
    }
}


struct ActionSheetPage_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetPage()
    }
}
