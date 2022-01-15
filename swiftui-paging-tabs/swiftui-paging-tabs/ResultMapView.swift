//
//  ResultMapView.swift
//  swiftui-paging-tabs
//
//  Created by Crystal Knight on 1/12/22.
//

import SwiftUI
import MapKit

struct ResultMapView: View {
  // MARK: - Properties
  // * Observed Object
  @StateObject private var map = MapModel(region: defaultRegion)
  
  // * Bindings
  @Binding var results: [Vacation]
  @Binding var selection: Int
  
  // MARK: - View
  var body: some View {
    // * Map
    // * 1. Instantiate map
    Map(
      coordinateRegion: $map.region, // ** map center
      annotationItems: !results.isEmpty ? results[selection].places : []) { place in // ** pins on map
        MapPin(coordinate: place.coordinate)
      }
      .ignoresSafeArea(edges: .horizontal)
    // * 2. Update map when it appears
      .onAppear { centerMap() }
    // * 3. Update map when a search returns new results
      .onChange(of: results, perform: { _ in
        centerMap()
      })
    // * 4. Update map when the visible result card changes
      .onChange(of: selection, perform: { _ in
        centerMap()
      })
    
  }
  
  // MARK: - Methods
  /// * Centers the map on the first place in the vacation.places array.
  func centerMap() {
    // * IF there are results to display, set the map center to the first place on the vacation for simplicity, because we know all the vacation places are near each other.
    if !results.isEmpty, let place = results[selection].places.first {
      map.region.center = place.coordinate
      map.region.span = MKCoordinateSpan(
        latitudeDelta: 1.5,
        longitudeDelta: 1.5
      )
    }
  }
}

// MARK: - Preview
struct SearchMapViewPreviews: PreviewProvider {
  static var previews: some View {
    // ** Preview Properties
    ResultMapView(results: .constant([vacation5]), selection: .constant(0))
      .frame(height: 300.0)
      .previewLayout(.sizeThatFits)
  }
}
