//
//  Models.swift
//  swiftui-paging-tabs
//
//  Created by Crystal Knight on 1/12/22.
//

import SwiftUI
import MapKit

/// A single location.
struct Place: Identifiable, Equatable, Hashable {
  let id = UUID() // Required to conform to Identifiable
  var name: String
  var latitude: Double
  var longitude: Double
  var coordinate: CLLocationCoordinate2D {
    CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
  }
}

/// A group of locations visited in a single trip.
struct Vacation: Identifiable, Equatable, Hashable {
  let id = UUID()
  let name: String
  let imageName: String
  let places: [Place]
}

// ** Region Model
/// An observable region so the map will automatically update to reflect the search result locations.
class MapModel: ObservableObject {
  @Published var region: MKCoordinateRegion
  
  init(region: MKCoordinateRegion)
  {
    self.region = region
  }
}
