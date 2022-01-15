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
      Text("\(hasResults() ? "\(selection + 1)" : "0") of \(results.count) \(isPlural() ? "Results" : "Result") ")
        .font(.title2)
      
      // ** Divider
      Divider()
      
      // * Results
      if !results.isEmpty {
        // Zip the results instead of enumerating them to avoid errors.
        // For explanation, see: https://stackoverflow.com/questions/59295206/how-do-you-use-enumerated-with-foreach-in-swiftui
        let zippedResults = Array(zip(results.indices, results))
        
        // ** TabView
        TabView(selection: $selection)  {
          ForEach(zippedResults, id: \.0) { index, result in
            VStack {
              HStack(alignment: .center) {
                ResultCardView(vacation: results[index]).tag(index)
                
                Image(systemName: "greaterthan")
                  .resizable()
                  .aspectRatio(contentMode: .fit)
                  .font(.title.weight(.bold))
                  .frame(maxWidth: 20)
                  .opacity(isLast() ? 0 : 1) // Hides the image if the visible card is the last of the results. Keeps empty space for hidden item
                
              } //: HStack
              // ** Spacer
              Spacer()
              
            } //: Result VStack
          } //: ForEach
        } //: TabView
        // * Magic happens here
        .tabViewStyle(.page)
        
      } else {
        Text("No current results.")
        
        Spacer()
      }
    } //: Main VStack
  }
  
  // MARK: - Methods
  func hasResults() -> Bool {
    return results.count > 0
  }
  
  func isPlural() -> Bool {
    return results.count > 1
  }
  
  func isLast() -> Bool {
    return results.count - selection == 1
  }
}

// MARK: - Preview
struct SearchResultsView_Previews: PreviewProvider {
  static var previews: some View {
    SearchResultsView(results: .constant([vacation2]), selection: .constant(0))
      .frame(height: 300.0)
      .previewLayout(.sizeThatFits)
  }
}
