//
//  MainViewModel.swift
//  GarbageTruck
//
//  Created by Louis on 2019/3/11.
//  Copyright © 2019 Louis. All rights reserved.
//

import Foundation
import MapKit
class MainViewModel: NSObject {
    
    private var mapView: MKMapView
//    private var annotations = [MKAnnotation]()
    private var lines = [String: [PointAnnotation]]()
    private var trucks = [TruckAnnotation]()
    
    // CLLocationManager目的為取得地圖上藍點
    private let locationManager = CLLocationManager()
    
    private var target: MainVC
    private var trackBarButtonItem: UIBarButtonItem
    private var reloadBarButtonItem: UIBarButtonItem
    private var loadingAnimatingView: LoadingAnimatingView
    
    
    init(target: MainVC) {
        self.target = target
        self.mapView = target.mapView
        self.trackBarButtonItem = target.trackBarButtonItem
        self.reloadBarButtonItem = target.reloadBarButtonItem
        self.loadingAnimatingView = target.loadingAnimatingView
        super.init()
        self.mapView.delegate = self
    }
    
}

// 地圖相關
extension MainViewModel: MKMapViewDelegate {
    
    func setupMapView() {
        let span = MKCoordinateSpan(latitudeDelta: 0.44, longitudeDelta: 0.44)
        let location = CLLocationCoordinate2D(latitude: 25.0339639, longitude: 121.5622835)
        let region = MKCoordinateRegion(center: location, span: span)
        self.mapView.setRegion(region, animated: true)
    }
    
    func requestAuthorization() {
        if CLLocationManager.locationServicesEnabled() {
            self.locationManager.requestWhenInUseAuthorization()
        }
    }
    
    func updateLines(_ tracks: [String: [TrackModel]], line_id: String = "") {
        self.lines.forEach { (_, values) in
            self.mapView.removeAnnotations(values)
        }
        self.lines.removeAll()
        tracks.forEach { (key, values) in
            let tracks = values.map({ model -> PointAnnotation in
                let annotation = PointAnnotation(model: model, isSelected: model.line_id == line_id)
                self.mapView.addAnnotation(annotation)
                return annotation
            })
            self.lines[key] = tracks
        }
    }
    
    func updateTrucks(_ trucks: [TruckModel]) {
        self.mapView.removeAnnotations(self.trucks)
        self.trucks.removeAll()
        self.trucks = trucks.map({ model -> TruckAnnotation in
            let annotation = TruckAnnotation(model: model)
            annotation.title = model.car
            return annotation
        })
        self.mapView.addAnnotations(self.trucks)
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        
        if let annotation =  annotation as? TruckAnnotation {
            let rightAccessoryView = AnnotationAccessoryButton()
            rightAccessoryView.setTitle("導航", for: .normal)
            rightAccessoryView.handler = {
                let start = self.mapView.userLocation.coordinate
                let end = annotation.coordinate
                self.openMaps(start: start, end: end)
                
            }
            
            let annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: "TruckAnnotation")
            
            annotationView.image = #imageLiteral(resourceName: "truck")
            annotationView.canShowCallout = true    // 點選大頭針後跳出的泡泡
            annotationView.rightCalloutAccessoryView = rightAccessoryView
            return annotationView
        }
        
        if let annotation =  annotation as? PointAnnotation {
            let rightAccessoryView = AnnotationAccessoryButton()
            rightAccessoryView.setTitle("資訊", for: .normal)
            rightAccessoryView.handler = {
                self.target.performSegue(withIdentifier: "toPointVC", sender: annotation.model)
        }
        let leftAccessoryView = AnnotationAccessoryLabel()
        leftAccessoryView.text = annotation.model?.rank
        let annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: "PointAnnotation")
            annotationView.image = annotation.isSelected ? #imageLiteral(resourceName: "point_c") : #imageLiteral(resourceName: "point")
            annotationView.canShowCallout = true
            annotationView.rightCalloutAccessoryView = rightAccessoryView
            annotationView.leftCalloutAccessoryView = leftAccessoryView
            return annotationView
        }
        return nil
    }
    
    private func openMaps(start: CLLocationCoordinate2D, end: CLLocationCoordinate2D) {
        // 起點
        let startPlaceMark = MKPlacemark(coordinate: start)
        let startItem = MKMapItem(placemark: startPlaceMark)
        // 終點
        let endPlaceMark = MKPlacemark(coordinate: end)
        let endItem = MKMapItem(placemark: endPlaceMark)
        // 設置起點跟終點，還有地圖參數
        let mapItems = [startItem, endItem]
        let options = [
            MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeWalking as AnyObject, MKLaunchOptionsMapTypeKey: MKMapType.standard.rawValue as AnyObject, MKLaunchOptionsShowsTrafficKey: true as AnyObject
        ]
        MKMapItem.openMaps(with: mapItems, launchOptions: options)
    }
}

// UI控管
extension MainViewModel {
    
    func startLoading() {
        
        // isUserInteractionEnabled(與使用者互動"同isEnabled")
        self.trackBarButtonItem.isEnabled = false
        self.reloadBarButtonItem.isEnabled = false
        self.mapView.isUserInteractionEnabled = false
        self.loadingAnimatingView.start()
    }
    
    func stopLoading() {
        self.trackBarButtonItem.isEnabled = true
        self.reloadBarButtonItem.isEnabled = true
        self.mapView.isUserInteractionEnabled = true
        self.loadingAnimatingView.stop()
    }
    

    
}


