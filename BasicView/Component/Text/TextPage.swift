//
//  TextPage.swift
//  BasicView
//
//  Created by helios on 2019/12/13.
//  Copyright © 2019 helios. All rights reserved.
//

import SwiftUI
private let url = "https://www.renrendai.com"
struct TextPage: View {
    var body: some View {
        VStack(spacing: 15) {
            Text("SwiftUI")
            VStack {
                Text("SwiftUI")
                    .foregroundColor(.orange)
                    .bold()
                    .font(.system(.largeTitle))
                    .fontWeight(.medium)
                    .shadow(color: .black, radius: 1, x: 0, y: 2)
            }
            
            Text(url)
                .underline(true, color: Color.gray)
                .font(.system(size: 16, design: .serif))
                .onTapGesture {
                    print(url)
                }
            
            HStack(spacing: 20) {
                Text("Text")
                Text("TextField").bold()
                Text("SecureField").italic()
            }
            
            Text("Views and controls are the visual building blocks of your app’s user interface." +
                " Use them to present your app’s content onscreen.")
                .lineLimit(nil)
        }
    }
}

struct TextPage_Previews: PreviewProvider {
    static var previews: some View {
        TextPage()
    }
}
