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
  @State var results = [Vacation]()
  @State var selection = 0
  
  // MARK: - View
  var body: some View {
    VStack(alignment: .center) {
      SearchBarView(results: $results, selection: $selection)
        .padding()
      
      SearchMapView(results: $results, selection: $selection)
        .frame(maxHeight: UIScreen.main.bounds.height/3)
      
      SearchResultsView(results: $results, selection: $selection)
      
      Spacer()
    } //: VStack
    .ignoresSafeArea(.keyboard, edges: .bottom)
    .padding(.horizontal)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .previewDevice("iPhone 12")
  }
}
