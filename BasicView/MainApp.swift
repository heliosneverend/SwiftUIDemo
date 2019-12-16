//
//  MainApp.swift
//  BasicView
//
//  Created by helios on 2019/12/13.
//  Copyright © 2019 helios. All rights reserved.
//

import UIKit

struct MainApp {
    public static var keyWindow: UIWindow? {
        return UIApplication.shared.connectedScenes
            .filter({$0.activationState == .foregroundActive})
            .map({$0 as? UIWindowScene})
            .compactMap({$0})
            .first?.windows
            .filter({$0.isKeyWindow}).first ?? nil
    }
}
