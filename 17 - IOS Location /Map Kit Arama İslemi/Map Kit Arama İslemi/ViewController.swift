//
//  ViewController.swift
//  Map Kit Arama İslemi
//
//  Created by Berkay DEMİR on 8.09.2023.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var aramaBar: UISearchBar!
    
    let istek = MKLocalSearch.Request()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        aramaBar.delegate = self
        mapView.delegate = self
        
        // 41.071230 , 37.772084
        
        let konum = CLLocationCoordinate2D(latitude: 41.071230 , longitude: 37.772084)
        let span = MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.03)
        let bolge = MKCoordinateRegion(center: konum, span: span)
        mapView.setRegion(bolge, animated: true)
        istek.region = mapView.region
    }
}
extension ViewController: UISearchBarDelegate,MKMapViewDelegate{
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        self.view.endEditing(true)
        istek.naturalLanguageQuery = searchBar.text!
        
        if mapView.annotations.count > 0{
            mapView.removeAnnotations(mapView.annotations)
        }
        let arama = MKLocalSearch(request: istek)
        arama.start(completionHandler: {
            (response,error) in
            if error != nil{
                print("HATA")
            }else if response!.mapItems.count == 0{
                print("MEKAN YOK")
            }else{
                for mekan in response!.mapItems{
                    
                    if let ad = mekan.name,let tel = mekan.phoneNumber{
                        print("Ad: \(ad)")
                        print("Tel: \(tel)")
                        print("Enlem: \(mekan.placemark.coordinate.latitude)")
                        print("Boylam: \(mekan.placemark.coordinate.longitude)")
                       
                        let pin = MKPointAnnotation()
                        pin.coordinate = mekan.placemark.coordinate
                        pin.title = ad
                        pin.subtitle = tel
                        self.mapView.addAnnotation(pin)
                    }
                }
            }
        })
    }
}
