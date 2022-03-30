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
  // StateObject

  
  // Bindings

  
  // MARK: - View
  var body: some View {
    // Map
    Text("Map")

  }
  
  // MARK: - Methods
  /// * Centers the map on the first place in the vacation.places array.
  func centerMap() {
    
  }
}

// MARK: - Preview
struct ResultMapViewPreviews: PreviewProvider {
  static var previews: some View {
    ResultMapView()
      .frame(height: 300.0)
      .previewLayout(.sizeThatFits)
  }
}
