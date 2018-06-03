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
        Persoon(naam: "Skeleton",voornaam: "Sans",profielfoto: "sans",straat: "Snowy Street",nummer: "5",postcode: "46451",gemeente: "Snowding Town",GPSLong: 14.66666,GPSLat: 46.2987,telefoon: "312231231"),
        Persoon(naam: "Skeleton",voornaam: "Papyrus",profielfoto: "papyrus",straat: "Sunny Street",nummer: "10",postcode: "45318",gemeente: "Volcano Core",GPSLong: 14.66666,GPSLat: 62.3333,telefoon: "3131213"),
        Persoon(naam: "Dreemurr",voornaam: "Toriel",profielfoto: "toriel",straat: "Monster Castle",nummer: "1",postcode: "45646",gemeente: "",GPSLong: 53.1111,GPSLat: 32.222,telefoon: "3515356")
        ]
    }
    public func getArrayPersonen() -> [Persoon]{
        return self.arrayPersonen
    }
}
