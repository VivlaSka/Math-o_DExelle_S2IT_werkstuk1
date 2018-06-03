//
//  LocatieViewController.swift
//  Werkstuk1 Mathéo DExelle
//
//  Created by student on 03/06/2018.
//  Copyright © 2018 matheo. All rights reserved.

import UIKit
import MapKit
import CoreLocation
class LocatieViewController: UIViewController, CLLocationManagerDelegate {
    //https://www.youtube.com/watch?v=UyiuX8jULF4 Tutorial gevolgd voor annotation en map
    
        @IBOutlet weak var myMap: MKMapView!
        var arrayPersonen = PersoonSingleton.instance.getArrayPersonen()
        let manager = CLLocationManager()
        func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
            let location = locations[0]
            let span:MKCoordinateSpan = MKCoordinateSpanMake(100,100)
            let myLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude)
            let region:MKCoordinateRegion = MKCoordinateRegionMake(myLocation, span)
            
            myMap.setRegion(region, animated: true)
            self.myMap.showsUserLocation = true
            
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            manager.delegate = self
            manager.desiredAccuracy = kCLLocationAccuracyBest
            manager.requestWhenInUseAuthorization()
            manager.startUpdatingLocation()
            manager.pausesLocationUpdatesAutomatically = true
            for p in arrayPersonen {
                let location = CLLocationCoordinate2DMake(p.GPSLat, p.GPSLong)
                let annotation:AnnotationPers = AnnotationPers(coordinate: location, title: "This is "+p.naam, subtitle: "Stay determined")
                myMap.addAnnotation(annotation)
            }
            
}
}
