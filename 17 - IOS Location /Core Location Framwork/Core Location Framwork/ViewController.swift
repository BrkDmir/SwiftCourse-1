//
//  ViewController.swift
//  Core Location Framwork
//
//  Created by Berkay DEMİR on 8.09.2023.
//

import UIKit
import CoreLocation

class ViewController: UIViewController {
    
    var locationmanager:CLLocationManager = CLLocationManager()
    
    
    @IBOutlet weak var enlemLabel: UILabel!
    @IBOutlet weak var boylamLabel: UILabel!
    @IBOutlet weak var hizLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationmanager.desiredAccuracy = kCLLocationAccuracyBest
        locationmanager.delegate = self
        locationmanager.requestWhenInUseAuthorization()
        locationmanager.startUpdatingLocation()
        
    }


}
extension ViewController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let sonKonum:CLLocation = locations[locations.count-1]
        enlemLabel.text = "Enlem: \(sonKonum.coordinate.latitude)"
        boylamLabel.text = "Boylam: \(sonKonum.coordinate.longitude)"
        hizLabel.text = "Hız: \(sonKonum.speed)"
        
    }
}

