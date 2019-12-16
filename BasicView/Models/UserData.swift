//
//  UserData.swift
//  Landmarks
//
//  Created by helios on 2019/11/22.
//  Copyright © 2019 helios. All rights reserved.
//

import SwiftUI
import Combine
//引入Combine 遵循ObservableObject协议
// 随着数据发生改变 订阅者视图也随之改变

final class UserData: ObservableObject  {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}






