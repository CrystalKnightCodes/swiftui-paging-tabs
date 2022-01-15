//
//  ContentView.swift
//  swiftui-paging-tabs
//
//  Created by Crystal Knight on 1/12/22.
//

import SwiftUI
import MapKit

struct ContentView: View {
  // MARK: - Properties

  
  // MARK: - View
  var body: some View {
    NavigationView {
      VStack(alignment: .center) {
        // Search Bar
        SearchBarView()
        
        // Map
        SearchMapView()
        
        // Results
        SearchResultsView()
        
        Spacer()
        
      } //: VStack

      
    } //: Navigation View
    
    
  }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .previewDevice("iPhone 12")
  }
}
