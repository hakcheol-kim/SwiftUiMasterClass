//
//  LocationModel.swift
//  Africa
//
//  Created by 김학철 on 2021/06/15.
//

import SwiftUI
import MapKit
struct NationalParkLocation: Codable, Identifiable {
    var id: String
    var name: String
    var image: String
    var latitude: Double
    var longitude: Double
    
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
