//
//  PersoonSingleton.swift
//  Werkstuk1 Mathéo DExelle
//
//  Created by student on 03/06/2018.
//  Copyright © 2018 matheo. All rights reserved.
//

import UIKit

final class PersoonSingleton{
    static let instance = PersoonSingleton()
    private var arrayPersonen = [Persoon]()
    
    private init(){
        self.arrayPersonen = [
        Persoon(naam: "DExelle Mathéo",voornaam: "",profielfoto: "",straat: "",nummer: "",postcode: "",gemeente: "",GPSLong: 0.0,GPSLat: 0.0,telefoon: ""),
        Persoon(naam: "Van Perk",voornaam: "Michiel",profielfoto: "",straat: "",nummer: "",postcode: "",gemeente: "",GPSLong: 0.0,GPSLat: 0.0,telefoon: ""),
        Persoon(naam: "Verhuffel",voornaam: "Sandrien",profielfoto: "",straat: "",nummer: "",postcode: "",gemeente: "",GPSLong: 0.0,GPSLat: 0.0,telefoon: ""),
        Persoon(naam: "Verbroden",voornaam: "Sam",profielfoto: "",straat: "",nummer: "",postcode: "",gemeente: "",GPSLong: 0.0,GPSLat: 0.0,telefoon: ""),
        Persoon(naam: "Tonio",voornaam: "Veronique",profielfoto: "",straat: "",nummer: "",postcode: "",gemeente: "",GPSLong: 0.0,GPSLat: 0.0,telefoon: ""),
        
        ]
    }
    public func getArrayPersonen() -> [Persoon]{
        return self.arrayPersonen
    }
}
