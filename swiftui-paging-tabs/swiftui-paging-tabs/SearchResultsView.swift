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
      // 1. Make sure there are results to display.
      
      
        // TabView
      
      
          // 2. Zip the results instead of enumerating them to avoid errors.
          // For explanation, see: https://stackoverflow.com/questions/59295206/how-do-you-use-enumerated-with-foreach-in-swiftui
      
      
          // 3. Iterate through the zipped results.
      
      
                // 4. Show a result card for each result.
      
      
                // 5. Let the user know there are more cards, when appropriate
      
      
      // MAGIC!
      
      

      // 6. If there are no results, let the user know.
      
      
    } //: Main VStack
  }
  
  // MARK: - Methods
  // Has results

  
  // Is plural

  
  // Is last

  
}

// MARK: - Preview
struct SearchResultsView_Previews: PreviewProvider {
  static var previews: some View {
    SearchResultsView()
      .frame(height: 300.0)
      .previewLayout(.sizeThatFits)
  }
}
