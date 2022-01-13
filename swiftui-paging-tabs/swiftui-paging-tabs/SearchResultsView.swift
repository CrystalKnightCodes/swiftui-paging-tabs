//
//  SearchResultsView.swift
//  swiftui-paging-tabs
//
//  Created by Crystal Knight on 1/12/22.
//

import SwiftUI

struct SearchResultsView: View {
  // MARK: - Properties
  @Binding var results: [Vacation]
  @Binding var selection: Int
  
  // MARK: - View
  var body: some View {
    VStack(alignment: .leading) {
      Text("\(hasResults() ? "\(selection + 1)" : "0") of \(results.count) \(hasOne() ? "Result" : "Results") ")
        .font(.title2)
      
      Divider()
      
      if !results.isEmpty {
        TabView(selection: $selection)  {
          ForEach(Array(zip(results.indices, results)), id: \.0) { index, result in
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
              
              Spacer()
            } //: Result VStack
          } //: ForEach
        } //: TabView
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
      } else {
        Text("No current results.")
        
        Spacer()
      }
    } //: Main VStack
  }
  
  func hasResults() -> Bool {
    return results.count > 0
  }
  
  func hasOne() -> Bool {
    return results.count == 1
  }
  
  func isLast() -> Bool {
    return results.count - selection == 1
  }
}

struct SearchResultsView_Previews: PreviewProvider {
  static var previews: some View {
    SearchResultsView(results: .constant([vacation2]), selection: .constant(0))
      .frame(height: 300.0)
      .previewLayout(.sizeThatFits)
  }
}
