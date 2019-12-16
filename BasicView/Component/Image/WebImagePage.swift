//
//  WebImagePage.swift
//  BasicView
//
//  Created by helios on 2019/12/13.
//  Copyright © 2019 helios. All rights reserved.
//

import SwiftUI

struct WebImagePage: View {
    @State private var uiImage: UIImage? = nil
    let placeholderImage = UIImage(named: "image")!
    
    var body: some View {
        Image(uiImage: self.uiImage ?? placeholderImage)
            .resizable()
            .onAppear(perform: downloadWebImage)
            .frame(width: 80,
                   height: 80,
                   alignment: .center)
            .onTapGesture {
                print("Tap ")
        }.navigationBarTitle(Text("WebImage"))
    }
    
    func downloadWebImage() {
        
        guard let url = URL(string: "https://picsum.photos/50/50?i=30") else {
            print("Invalid URL.")
            return
        }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let data = data, let image = UIImage(data: data) {
                self.uiImage = image
            }else {
                print("error: \(String(describing: error))")
            }
        }.resume()
    }
}

struct WebImagePage_Previews: PreviewProvider {
    static var previews: some View {
        WebImagePage()
    }
}
