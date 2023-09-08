//
//  ViewController.swift
//  Map Kit Kullanimi
//
//  Created by Berkay DEMİR on 8.09.2023.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let konum = CLLocationCoordinate2D(latitude: 41.0961664, longitude: 37.6484669)
        let span =  MKCoordinateSpan(latitudeDelta: 0.15, longitudeDelta: 0.15)
        let bolge = MKCoordinateRegion(center: konum, span: span)
        mapView.setRegion(bolge,animated: true)
        let pin = MKPointAnnotation()
        pin.coordinate = konum
        pin.title = "Home"
        pin.subtitle = "Köy"
        mapView.addAnnotation(pin)
        
        
    }


}

