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
  // ** Properties
  @State var results = [Vacation]()
  @State var selection = 0
  
  // MARK: - View
  var body: some View {
    NavigationView {
      VStack(alignment: .center) {
        // * Search Bar
        SearchBarView(results: $results, selection: $selection)
          .padding(.horizontal)
        
        // * Map
        SearchMapView(results: $results, selection: $selection)
          .frame(maxHeight: UIScreen.main.bounds.height/3)
        
        // * Results
        SearchResultsView(results: $results, selection: $selection)
          .padding(.horizontal)
        
        // ** Spacer
        Spacer()
        
      } //: VStack
      // ** VStack modifiers
      .ignoresSafeArea(.keyboard, edges: .bottom)
      .navigationTitle("Vacation Search")
      .navigationBarTitleDisplayMode(.inline)
      
    } //: Navigation View
    // ** NavView Style
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
