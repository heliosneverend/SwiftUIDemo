//
//  Landmark.swift
//  Landmarks
//
//  Created by helios on 2019/11/22.
//  Copyright © 2019 helios. All rights reserved.
//

import SwiftUI
import CoreLocation


struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    fileprivate var imageName: String
    fileprivate var coordinates: Coordinates
    var state: String
    var park: String
    var category: Category

    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    enum Category: String, CaseIterable, Codable, Hashable {
        case featured = "Featured"
        case lakes = "Lakes"
        case rivers = "Rivers"
    }
}

extension Landmark {
    var image: Image {
        ImageStore.shared.image(name: imageName, size: 10)
    }
}
extension Landmark {
    var isFavorite: Bool {
       return false
    }
}

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}
