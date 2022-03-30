//
//  SearchResultsView.swift
//  swiftui-paging-tabs
//
//  Created by Crystal Knight on 1/12/22.
//

import SwiftUI

struct SearchResultsView: View {
  // MARK: - Properties

  
  
  // MARK: - View
  var body: some View {
    VStack(alignment: .leading) {
      // Text
      
      
      Divider()
      
      // Results
      
      
      
    } //: Main VStack
  }
  
  // MARK: - Methods
  // Has results
  func hasResults() -> Bool {
    return false
  }
  
  // Is plural
  func isPlural() -> Bool {
    return true
  }
  
  // Is last
  func isLast() -> Bool {
    return false
  }
  
}

// MARK: - Preview
struct SearchResultsView_Previews: PreviewProvider {
  static var previews: some View {
    SearchResultsView()
      .frame(height: 300.0)
      .previewLayout(.sizeThatFits)
  }
}
