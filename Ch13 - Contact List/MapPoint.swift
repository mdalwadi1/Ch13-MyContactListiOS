//
//  MapPoint.swift
//  Ch13 - Contact List
//
//  Created by user216619 on 9/19/22.
//

import Foundation
import MapKit

//MKAnnotation specifies 3 properties: title, subtitle, coordinates
//coordinates is only required property
class MapPoint: NSObject, MKAnnotation{
    var title: String?
    var subtitle: String?
    var latitude: Double
    var longitude: Double
    
    //coordinate property set up as read-only; handles conversion here
    var coordinate: CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
    init(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
}
