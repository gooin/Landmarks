//
//  Landmark.swift
//  Landmarks
//
//  Created by zhitao on 2021/7/9.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
//   import CoreLocation
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
                    latitude: coordinates.latitude,
                    longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var longitude: Double
        var latitude: Double
    }
    
    
}
