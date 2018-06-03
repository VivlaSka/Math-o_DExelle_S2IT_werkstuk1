//
//  Persoon.swift
//  Werkstuk1 Mathéo DExelle
//
//  Created by student on 02/06/2018.
//  Copyright © 2018 matheo. All rights reserved.
//

import UIKit

class Persoon {
    var naam: String
    var voornaam: String
    var profielfoto: String
    var straat: String
    var nummer: String
    var postcode: String
    var gemeente: String
    var GPSLong: Double
    var GPSLat: Double
    var telefoon: String
    
    init() {
        naam = ""
        voornaam = ""
        profielfoto = ""
        straat = ""
        nummer = ""
        postcode = ""
        gemeente = ""
        GPSLong = 0.0
        GPSLat = 0.0
        telefoon = ""
    }
    init(naam: String,voornaam: String,profielfoto: String,straat: String,nummer: String,postcode: String,gemeente: String,GPSLong: Double,GPSLat: Double,telefoon: String) {
        self.naam = naam
        self.voornaam = voornaam
        self.profielfoto = profielfoto
        self.straat = straat
        self.nummer = nummer
        self.postcode = postcode
        self.gemeente = gemeente
        self.GPSLong = GPSLong
        self.GPSLat = GPSLat
        self.telefoon = telefoon
    }
}
