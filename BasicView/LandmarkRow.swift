//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by helios on 2019/11/22.
//  Copyright © 2019 helios. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark

    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .imageScale(.medium)
                    .foregroundColor(.yellow)
                    .padding(.trailing, 20)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
//        LandmarkRow(landmark: landmarkData[1])
//         .previewLayout(.fixed(width: 300, height: 70))//预览范围
        
//        Group {
//            LandmarkRow(landmark: landmarkData[0])
//            LandmarkRow(landmark: landmarkData[1])
//        }
//        .previewLayout(.fixed(width: 300, height: 70))
          LandmarkList()
    }
}
