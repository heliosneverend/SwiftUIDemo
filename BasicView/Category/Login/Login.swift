//
//  Login.swift
//  BasicView
//
//  Created by helios on 2019/12/13.
//  Copyright © 2019 helios. All rights reserved.
//

import SwiftUI

struct Login: View {
    var body: some View {
        NavigationView {
            
            NavigationLink(destination: LandmarkList()) {
                   LoginView()
                }
            }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}

