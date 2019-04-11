//
//  Annotation.swift
//  GarbageTruck
//
//  Created by Louis on 2019/3/13.
//  Copyright © 2019 Louis. All rights reserved.
//

import Foundation
import MapKit

// Generic 泛型(T-Template 模板)
class GarbageAnnotation<T>: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var model: T?
    init(_ coordinate: CLLocationCoordinate2D){
        self.coordinate = coordinate
    }
}

// NSObject是繼承，而MKAnnotation是protocol
class PointAnnotation: GarbageAnnotation<TrackModel> {
    
    var isSelected = false
    // designated convenience
    convenience init(model: TrackModel, isSelected: Bool){
        self.init(model.coordinate ?? CLLocationCoordinate2D())
        self.model = model
        self.title = model.name
        self.isSelected = isSelected
    }
    
}

class TruckAnnotation: GarbageAnnotation<TruckModel> {
    
    convenience init(model: TruckModel) {
        self.init(model.coordinate ?? CLLocationCoordinate2D())
        self.model = model
        self.title = model.car
    }
    
}

