//
//  MapViewController.swift
//  Poputka
//
//  Created by Sanira Madzhikova on 4/3/18.
//  Copyright © 2018 Neobis. All rights reserved.
//

import UIKit
import MapKit
class MapViewController: UIViewController {

	@IBOutlet weak var mapView: MKMapView!
	@IBOutlet weak var segmentedControl: UISegmentedControl!
	var mapManager: CLLocationManager!
	var currentLocation: CLLocation?!
	var zoomLevel: Float = 30.0
	
    override func viewDidLoad() {
        super.viewDidLoad()
		setupIOSMap()
		
		let from = CLLocationCoordinate2D(latitude: 42.856802, longitude: 74.616406)
		let to = CLLocationCoordinate2D(latitude: 42.8103655, longitude: 74.6276869)
		
		let fromPoint = MKPointAnnotation.init()
		fromPoint.coordinate = from
		fromPoint.title = "Откуда"
		
		mapView.addAnnotation(fromPoint)
		
		let toPoint = MKPointAnnotation.init()
		toPoint.coordinate = to
		toPoint.title = "Куда"
		mapView.addAnnotation(toPoint)
		
	}
	
	func setupIOSMap() {
		mapView.delegate = self
		mapManager = CLLocationManager()
		//mapManager.delegate = self as! CLLocationManagerDelegate
		mapManager.desiredAccuracy = kCLLocationAccuracyBest
		mapManager.requestAlwaysAuthorization()
		mapManager.distanceFilter = 100
		mapManager.startUpdatingLocation()
		
		mapView.showsUserLocation = true
	}
	

}

extension MapViewController: MKMapViewDelegate {
	func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
		
		let annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: "pin")
		
		if annotation.title! == "Откуда" {
			
			annotationView.pinTintColor = UIColor.green
			
		} else {
			
			annotationView.pinTintColor = UIColor.red
		}
		
		
		return annotationView
	}
}
