//
//  SearchBarView.swift
//  swiftui-paging-tabs
//
//  Created by Crystal Knight on 1/12/22.
//

import SwiftUI

struct SearchBarView: View {
  // MARK: - Properties
  @State private var text: String = ""
  @Binding var results: [Vacation]
  @Binding var selection: Int
  
  // MARK: - View
  var body: some View {
    VStack(alignment: .center) {
      Text("Vacation Search")
        .font(.headline)
      
      TextField(
        "Search for a place or a vacation name",
        text: $text, onEditingChanged: { isEditing in
          if isEditing { // Clear the search results before searching again.
            text = ""
            selection = 0
            results = []
          }
        })
      { findGroup() } // This runs the search "onCommit"
      .textFieldStyle(RoundedBorderTextFieldStyle())
    } //: VStack
  }
  
  // MARK: - Methods
  func findGroup() {
    results = vacations.all(where: { vacation -> Bool in
      // First check to see if the text is in the vacation name
      if vacation.name.localizedCaseInsensitiveContains(text) {
        return true
      } else {
        // If it isn't in the vacation name, search through each place
        for place in vacation.places {
          if place.name.localizedCaseInsensitiveContains(text) {
            return true
          }
        }
      }
      return false
    })
  }
}

struct SearchBarView_Previews: PreviewProvider {
  static var previews: some View {
    SearchBarView(results: .constant([vacation4]), selection: .constant(0))
      .previewLayout(.sizeThatFits)
  }
}
