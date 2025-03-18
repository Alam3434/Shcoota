//
//  MapView.swift
//  Shcoota
//
//  Created by Mohammad Alam on 1/6/25.
//

import SwiftUI
import MapKit
import CoreLocation

struct MapView: View {
//    let manager = CLLocationManager()
    @State private var cameraPosition: MapCameraPosition = .userLocation(fallback: .automatic)
    @StateObject var locationManager = LocationManager()
    
    private let parking = CLLocationCoordinate2D(latitude: 42.354528, longitude: -71.068369)
    
    public func getUserLocation() {
//        if let location = locationManager.manager.location {
//                print("User's latitude: \(location.coordinate.latitude)")
//            } else {
//                print("User location is not available yet.")
//            }
    }
    
    var body: some View {
        Map(position: $cameraPosition) {
            UserAnnotation()
        }
        .mapControls{
            MapUserLocationButton()
        }
        .onAppear{
//            locationManager.manager.requestWhenInUseAuthorization()
            getUserLocation()
        }
    }
}

#Preview {
    MapView()
}
