//
//  HomeList.swift
//  RRD_SwiftUI
//
//  Created by helios on 2019/11/20.
//  Copyright © 2019 helios. All rights reserved.
//

import SwiftUI

struct BHomeList: View {
    let courses = courseData
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                       HStack(alignment: .top) {
                           ForEach(courses) { item in
                               CourseView()
                           }
                       }
                   }
        }
    }
}

struct BHomeList_Previews: PreviewProvider {
    static var previews: some View {
        BHomeList()
    }
}

struct CourseView: View {
    var title = "Build an app with swiftUI"
    var image = "Illustration1"
    var color = "background3"
    var shadowColor = "backgroundShadow3"
    var body: some View {
        VStack(alignment: .leading) {
            Text("Build an app with swiftUI")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .lineLimit(4)
                .padding(20.0)
                .padding(.trailing, 40)
            Spacer()
            Image("Illustration1")
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .frame(width: 246, height: 200)
        }
        .background(Color("background3"))
        .cornerRadius(30)
        .frame(width: 246, height: 360)
        .shadow(color: Color("backgroundShadow3"), radius: 20, x: 0, y: 20)
        .padding(.leading, 30)
    }
}

struct Course : Identifiable {
    var id = UUID()
    var title: String
    var image: String
    var color: String
    var shadowColor: Color
}

let courseData = [
    Course(title: "Build an app with swiftUI",
           image: "Illustration1",
           color: "background3",
           shadowColor: Color("backgroundShadow3")),
    Course(title: "Design Course",
           image: "Illustration2",
           color: "background2",
           shadowColor: Color("backgroundShadow4")),
    Course(title: "测试Title文案",
           image: "Illustration3",
           color: "background4",
           shadowColor: Color("backgroundShadow3"))
]
  
