//
//  SectionHeaderAndFooterPage.swift
//  BasicView
//
//  Created by helios on 2019/12/16.
//  Copyright © 2019 helios. All rights reserved.
//

import SwiftUI

struct SectionHeaderAndFooterPage: View {
    var body: some View {
        
        VStack {
            List {
                Section(header: Text("I'm header"), footer: Text("I'm footer")) {
                    ForEach(0..<3) {
                        Text("Hello \($0)")
                    }
                }
                Section(header: Text("I'm header 2"), footer: Text("I'm footer 2")) {
                    ForEach(6..<10) {
                        Text("Hello \($0)").bold()
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .background(Color.white)
            
            Button(action: {
                print("Tap")
            }) {
                Text("SwiftUI")
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width - 30,height: 45)
            }
            .background(Color.orange)
            .cornerRadius(5)

        }
        .background(Color.white)
        .navigationBarTitle(Text("Section"))
        
    }
}

struct SectionHeaderAndFooterPage_Previews: PreviewProvider {
    static var previews: some View {
        SectionHeaderAndFooterPage()
    }
}
