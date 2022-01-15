//
//  ResultCardView.swift
//  swiftui-paging-tabs
//
//  Created by Crystal Knight on 1/12/22.
//

import SwiftUI

struct ResultCardView: View {
  // MARK: - Properties

  
  // MARK: - View
  var body: some View {
    HStack(alignment: .top) {
      // Image
      
      
      Spacer()
      
      VStack(alignment: .leading) {
        // Vacation Name
        Text("Result Card")
        
        // Places

        
        Spacer()
        
      } //: VStack
    } //: HStack

    
  }
}

// MARK: - Preview
struct ResultCardView_Previews: PreviewProvider {
  static var previews: some View {
    ResultCardView()
      .previewLayout(.sizeThatFits)
  }
}
