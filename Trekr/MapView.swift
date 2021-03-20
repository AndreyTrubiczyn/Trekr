//
//  MapView.swift
//  Trekr
//
//  Created by Andrey Trubiczyn on 26.02.2021.
//

import MapKit
import SwiftUI

struct MapView: View {
    
    @EnvironmentObject var locations: Locations
    
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 62.758433, longitude: 98.979278), span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40)
    )
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: locations.places) { location in
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)) {
                NavigationLink(destination: ContentView(location: location)) {
                    Image(location.country)
                        .resizable()
                        .cornerRadius(8)
                        .frame(width: 80, height: 40)
                        .shadow(radius: 3)
                }
            }
        }
            .navigationTitle("Map")
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
