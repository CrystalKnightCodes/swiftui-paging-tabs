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
        ResultMapView()
        
        // Results
        SearchResultsView()
        
        Spacer()
        
      } //: VStack
      .ignoresSafeArea(.keyboard, edges: .bottom)
      .navigationTitle("Vacation Search")
      .navigationBarTitleDisplayMode(.inline)
      
    } //: Navigation View
    .navigationViewStyle(.stack)
    
  }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .previewDevice("iPhone 12")
  }
}
