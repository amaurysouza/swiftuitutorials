//
//  Landmark.swift
//  SwiftUITutorials
//
//  Created by Amaury A V A Souza on 26/03/20.
//  Copyright © 2020 Amaury A V A Souza. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    fileprivate var imageName: String
    fileprivate var coordinates: Coordinates
    var state: String
    var park: String
    var category: Category
    
    var locationCoordinate: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    enum Category: String, CaseIterable, Codable, Hashable{
        case features = "Featured"
        case lakes = "Lakes"
        case rivers = "Rivers"
    }
}

extension Landmark{
    var image:Image {
        ImageStore.shared.image(name: imageName)
    }
}

struct Coordinates: Hashable, Codable{
    var latitude:Double
    var longitude:Double
}
