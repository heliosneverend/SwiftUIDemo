//
//  LoginView.swift
//  BasicView
//
//  Created by helios on 2019/12/13.
//  Copyright © 2019 helios. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    @State var isLogin = false
    @State var name: String = ""
    @State var password: String = ""
    @State private var Img: UIImage? = nil
    
    var title = "请登录"
    var loginName = "Helios"

    let nameText = Text("请输入用户名").foregroundColor(.secondary).font(.system(size: 20))
    let pwdText = Text("请输入密码").foregroundColor(.blue).font(.system(size: 20))
    
    var body: some View {
        VStack {
            TextComponent(text: "请先登录")
            HStack {
                   Image(systemName: "person.2")
                       .imageScale(.large)
                       .frame(width: 32, height: 32)
                   TextField("请输入昵称", text: $name, onEditingChanged: { (changed) in
                           print("onEditing: \(changed)")
                       }, onCommit: {
                           print("userName: \(self.name)")
                           self.endEditing(true)
                       })
               }
               .padding(10).frame(height: 50).textFieldStyle(RoundedBorderTextFieldStyle())
                   
               HStack {
                    Image(systemName: "pencil.circle.fill")
                       .imageScale(.large)
                       .frame(width: 32, height: 32)
                    SecureField("请输入密码", text: $password) {
                       print("Password: \(self.password)")
                       self.endEditing(true)
                   }
               }
               .padding(10).frame(height: 50).textFieldStyle(RoundedBorderTextFieldStyle())
                    }
    }
       
    private func endEditing(_ force: Bool) {
        MainApp.keyWindow?.endEditing(force)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct TextComponent: View {
    var text = "这是一个Text"
    var body: some View {
        HStack {
            Text(text)
                .font(.largeTitle)
                .foregroundColor(.black)
                .bold()
                .fontWeight(.medium)
        }
    }
}


