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
        text: $searchText, onEditingChanged: { isEditing in
          if isEditing { // Clear the search results before searching again.
            searchText = ""
            selection = 0
            results = []
          }
        })
      { findVacations() } // This runs the search "onCommit" when the user hits the "Go" button
      .textFieldStyle(RoundedBorderTextFieldStyle())
      .keyboardType(.webSearch)
      
    } //: VStack
  }
  
  // MARK: - Methods
  // * Search Vactions
  func findVacations() {
    results = vacations.all(where: { vacation -> Bool in
      // First check to see if the text is in the vacation name
      if vacation.name.localizedCaseInsensitiveContains(searchText) {
        return true
      } else {
        // If it isn't in the vacation name, search through each place
        for place in vacation.places {
          if place.name.localizedCaseInsensitiveContains(searchText) {
            return true
          }
        }
      }
      return false
    })
  }
}

// MARK: - Preview
struct SearchBarView_Previews: PreviewProvider {
  static var previews: some View {
    SearchBarView(results: .constant([vacation4]), selection: .constant(0))
      .previewLayout(.sizeThatFits)
  }
}
