//
//  SliderPage.swift
//  BasicView
//
//  Created by helios on 2019/12/16.
//  Copyright © 2019 helios. All rights reserved.
//

import SwiftUI
import Combine

struct SliderPage : View {
    
    @State var rating = 0.5

    var body: some View {
        VStack {
            Text("Slider Value: \(self.rating)")
            Slider(value: $rating)
                .padding(30)
            
        }.navigationBarTitle(Text("Slider"))
    }
}


struct SliderPage_Previews: PreviewProvider {
    static var previews: some View {
        SliderPage()
    }
}
