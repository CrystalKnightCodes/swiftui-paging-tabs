//
//  SearchResultsView.swift
//  swiftui-paging-tabs
//
//  Created by Crystal Knight on 1/12/22.
//

import SwiftUI

struct SearchResultsView: View {
  // MARK: - Properties
  // ** Properties
  @Binding var results: [Vacation]
  @Binding var selection: Int
  
  // MARK: - View
  var body: some View {
    VStack(alignment: .leading) {
      // * Text
      // ** Create hasResults() and isPlural() for conditional text
      Text("\(hasResults() ? "\(selection + 1)" : "0") of \(results.count) \(isPlural() ? "Results" : "Result") ")
        .font(.title2)
      
      Divider()
      
      // * Results
      // * 1. Make sure there are results to display.
      if !results.isEmpty {
        // * TabView
        TabView(selection: $selection)  {
          // * 2. Zip the results instead of enumerating them to avoid errors.
          // * For explanation, see: https://stackoverflow.com/questions/59295206/how-do-you-use-enumerated-with-foreach-in-swiftui
          let zippedResults = Array(zip(results.indices, results))
          // * 3. Iterate through the zipped results.
          ForEach(zippedResults, id: \.0) { index, result in
            VStack {
              HStack(alignment: .center) {
                // * 4. Show a result card for each result.
                ResultCardView(vacation: results[index]).tag(index)
                
                // * 5. Let the user know there are more cards, when appropriate
                
                Image(systemName: "greaterthan")
                  .resizable()
                  .aspectRatio(contentMode: .fit)
                  .font(.title.weight(.bold))
                  .frame(maxWidth: 20)
                // ** Create isLast() for image opacity.
                  .opacity(isLast() ? 0 : 1) // Hides the image if the visible card is the last of the results. Keeps empty space for hidden item
                
              } //: HStack
              // ** Spacer
              Spacer()
              
            } //: Result VStack
          } //: ForEach
        } //: TabView
        // ** Magic happens here
        .tabViewStyle(.page)
        
      } else {
        // * 6.  If there are no results, let the user know.
        Text("No current results.")
        
        Spacer()
      }
    } //: Main VStack
  }
  
  // MARK: - Methods
  // * Has results
  func hasResults() -> Bool {
    return results.count > 0
  }
  
  // * Is plural
  func isPlural() -> Bool {
    return results.count > 1
  }
  
  // * Is last
  func isLast() -> Bool {
    return results.count - selection == 1
  }
}

// MARK: - Preview
struct SearchResultsView_Previews: PreviewProvider {
  static var previews: some View {
    // ** Preview Properties
    SearchResultsView(results: .constant([vacation2]), selection: .constant(0))
      .frame(height: 300.0)
      .previewLayout(.sizeThatFits)
  }
}
