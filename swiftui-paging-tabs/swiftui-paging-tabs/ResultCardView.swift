//
//  ResultCardView.swift
//  swiftui-paging-tabs
//
//  Created by Crystal Knight on 1/12/22.
//

import SwiftUI

struct ResultCardView: View {
  // MARK: - Properties
  let vacation: Vacation
  
  // MARK: - View
  var body: some View {
    HStack(alignment: .top) {
      // * Image
      Image(systemName: vacation.imageName)
        .resizable()
        .renderingMode(.original) // So pics will have color
        .aspectRatio(contentMode: .fit)
        .frame(maxWidth: 200, maxHeight: 200)
        .padding(2)
        .background(Color.gray.opacity(0.15)) // For contrast
      
      Spacer()
      
      VStack(alignment: .leading) {
        // * Vacation Name
        Text(vacation.name)
          .bold()
        
        // * Places
        ForEach(vacation.places, id: \.self) { place in
          Text(place.name)
        }
        
        Spacer()
        
      } //: VStack
    } //: HStack
    .frame(maxHeight: 200) // Ensures the > image is centered
    
  }
}

// MARK: - Preview
struct ResultCardView_Previews: PreviewProvider {
  static var previews: some View {
    // ** Preview Properties
    ResultCardView(vacation: vacation7)
      .previewLayout(.sizeThatFits)
  }
}
