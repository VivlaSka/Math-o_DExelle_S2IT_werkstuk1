//
//  AnnotationPers.swift
//  Werkstuk1 Mathéo DExelle
//
//  Created by student on 03/06/2018.
//  Copyright © 2018 matheo. All rights reserved.
//

import Foundation
import MapKit

class AnnotationPers: NSObject, MKAnnotation{
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    init(coordinate: CLLocationCoordinate2D, title:String?, subtitle: String?) {
        self.coordinate = coordinate
        self.title = title
        self.subtitle = subtitle
    }
}
