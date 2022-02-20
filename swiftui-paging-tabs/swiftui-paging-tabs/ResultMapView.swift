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
    // 1. Instantiate Map
    Text("Map")
    
    // 2. Update map when it appears
    
    
    // 3. Update map when a search returns new results


    //  4. Update map when the visible result card changes
    

  }
  
  // MARK: - Methods
  /// * Centers the map on the first place in the vacation.places array.

  
  // * IF there are results to display, set the map center to the first place on the vacation for simplicity, because we know all the vacation places are near each other.


  
}

// MARK: - Preview
struct ResultMapViewPreviews: PreviewProvider {
  static var previews: some View {
    ResultMapView()
      .frame(height: 300.0)
      .previewLayout(.sizeThatFits)
  }
}
