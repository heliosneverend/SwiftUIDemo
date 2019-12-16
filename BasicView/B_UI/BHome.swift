//
//  SwiftUIView.swift
//  RRD_SwiftUI
//
//  Created by helios on 2019/11/20.
//  Copyright © 2019 helios. All rights reserved.
//

import SwiftUI
struct BHome: View {
    @State var show = false
    @State var showProfile = false
    var body: some View {
        ZStack {
            BHomeList()
                .blur(radius: show ? 20 : 0)
                .scaleEffect(showProfile ? 0.95 : 1)
                .animation(.default)
            
            ContentView()
                .background(Color.white)
                .cornerRadius(30)
                .shadow(radius: 20)
                .animation(.spring())
                .offset(y: showProfile ? 40 : UIScreen.main.bounds.height)
            MenuButton(show: $show)
                .offset(x: -30, y: showProfile ? 0 : 80)
                .animation(.spring())
            MenuRightBtn(show: $showProfile)
                .offset(x: -16, y: showProfile ? 0 : 88)
                .animation(.spring())
            MenuView(show: $show)
        }
    }
}
/**
 * 要支持预览视图，需要实现 PreviewProvider 协议，并在协议属性内返回该视图实例，比如为 ContentView
 */
struct BHome_Previews: PreviewProvider {
    static var previews: some View {
        BHome()
    }
}

struct MenuRow: View {
    var image = "creditcard"
    var text = "我的账户"
    var body: some View {
        HStack {
            Image(systemName: image).imageScale(.large).foregroundColor(Color("icons")).frame(width: 32, height: 32)
            Text(text).font(.headline)
            Spacer()
        }
    }
}

struct Menu: Identifiable {
    var id = UUID()
    var title: String
    var icon: String
}

let menuData = [
    Menu(title: "我的账户", icon: "person.crop.circle"),
    Menu(title: "信用卡", icon: "creditcard"),
    Menu(title: "我的团队", icon: "person.and.person"),
    Menu(title: "退出", icon: "arrow.uturn.down")
]

struct MenuView: View {
    let menu = menuData
    @Binding var show : Bool
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            ForEach(menu) { item in
                MenuRow(image: item.icon, text: item.title)
            }
            Spacer()
        }
        .padding(.top, 20)
        .padding(30)
        .frame(minWidth: 0, maxHeight: .infinity)
        .background(Color.white)
        .cornerRadius(30)
        .padding(.trailing, 60)
        .shadow(radius: 20)
        .rotation3DEffect(Angle(degrees: show ? 0 : 60), axis: (x: 0, y: 10.0, z: 0))
        .animation(.easeInOut(duration: 0.5))
        .offset(x: show ? 0 :  -UIScreen.main.bounds.width)
        .onTapGesture {
            self.show.toggle()
        }
    }
}

struct CircleButton: View {
    var icon = "person.crop.circle"
    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.black)
        }
        .frame(width: 44, height: 44)
        .background(Color.white)
        .cornerRadius(30)
        .shadow(color: Color("buttonShadow"), radius: 10, x: 0, y: 10)
    }
}

struct MenuButton: View {
    @Binding var show: Bool
    var body: some View {
        VStack(alignment: .trailing) {
            HStack(alignment: .top) {
                Button(action: { self.show.toggle() }) {
                    HStack {
                        Spacer()
                        Image(systemName: "list.dash")
                            .foregroundColor(.black)
                    }
                    .padding(.trailing, 20)
                    .frame(width: 90, height: 60)
                    .background(Color.white)
                    .cornerRadius(30)
                    .shadow(color: Color("buttonShadow"), radius: 10, x: 0, y: 10)
                }
                Spacer()
            }
            Spacer()
        }
    }
}

struct MenuRightBtn: View {
    @Binding var show: Bool
    var body: some View {
        VStack(alignment: .trailing) {
            HStack(alignment: .bottom) {
                Spacer()
                Button(action: { self.show.toggle() }) {
                    CircleButton(icon: "person.crop.circle")
                    CircleButton(icon: "bell")
                }
            }
            Spacer()
        }
    }
}
