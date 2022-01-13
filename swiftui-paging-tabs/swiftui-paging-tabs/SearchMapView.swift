//
//  SearchMapView.swift
//  swiftui-paging-tabs
//
//  Created by Crystal Knight on 1/12/22.
//

import SwiftUI
import MapKit

struct SearchMapView: View {
  // MARK: - Properties
  @ObservedObject private var regionModel = RegionModel(
    region: MKCoordinateRegion(
      center: CLLocationCoordinate2D(
        latitude: 39.8333,
        longitude: -98.5833),
      span: MKCoordinateSpan(
        latitudeDelta: 35,
        longitudeDelta: 35
      )
    )
  )
  
  @Binding var results: [Vacation]
  @Binding var selection: Int
  
  // MARK: - View
  var body: some View {
    Map(
      coordinateRegion: $regionModel.region,
      annotationItems: !results.isEmpty ? results[selection].places : []) { place in
        MapPin(coordinate: place.coordinate)
      }
      .onAppear { findCenter() }
      .onChange(of: selection, perform: { _ in
        findCenter()
      })
      .onChange(of: results, perform: { _ in
        findCenter()
      })
      .ignoresSafeArea(edges: .horizontal)
  }
  
  /// Centers the map on the first place in the vacation.places array.
  func findCenter() {
    // For this demo, we are setting the map center to the first place on the vacation for simplicity, because we know all the vacations are in a single state.
    // There is also a way to determine the center of all the places in the array, but that's overly complex for this simple tutorial.
    if !results.isEmpty, let place = results[selection].places.first {
      regionModel.region.center = place.coordinate
      regionModel.region.span = MKCoordinateSpan(
        latitudeDelta: 1.5,
        longitudeDelta: 1.5
      )
    }
  }
}

struct SearchMapViewPreviews: PreviewProvider {
  static var previews: some View {
    SearchMapView(results: .constant([vacation5]), selection: .constant(0))
      .frame(height: 300.0)
      .previewLayout(.sizeThatFits)
  }
}
