//
//  SearchBarView.swift
//  swiftui-paging-tabs
//
//  Created by Crystal Knight on 1/12/22.
//

import SwiftUI

struct SearchBarView: View {
  // MARK: - Properties
  // ** Properties
  @State private var searchText: String = ""
  @Binding var results: [Vacation]
  @Binding var selection: Int
  
  // MARK: - View
  var body: some View {
    VStack(alignment: .center) {
      // * Text Field
      TextField(
        "Search for a place or a vacation name",
        text: $searchText,
        onEditingChanged: { isEditing in
          // * Clear the search results before searching again.
          if isEditing {
            searchText = ""
            selection = 0
            results = []
          }
        }) // * Run the search "onCommit" when the user hits the "Go" button
      { findVacations() }
      .textFieldStyle(RoundedBorderTextFieldStyle())
      .keyboardType(.webSearch)
      
    } //: VStack
  }
  
  // MARK: - Methods
  // * Search Vactions
  func findVacations() {
    // * 1. Look through all vacations using all(where:)
    // This creates an array of vacations that match the set criteria.
    results = vacations.all(where: { vacation -> Bool in
      // * 2. Check to see if the text is in the vacation name
      if vacation.name.localizedCaseInsensitiveContains(searchText) {
        return true
      } else {
        // * 3. If it isn't in the vacation name, search through each place
        for place in vacation.places {
          if place.name.localizedCaseInsensitiveContains(searchText) {
            return true
          }
        }
      }
      // * 4. If the search text isn't found, nothing is returned.
      return false
    })
  }
}

// MARK: - Preview
struct SearchBarView_Previews: PreviewProvider {
  static var previews: some View {
    // ** Preview properties
    SearchBarView(results: .constant([vacation4]), selection: .constant(0))
      .previewLayout(.sizeThatFits)
  }
}
