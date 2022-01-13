//
//  ResultCardView.swift
//  swiftui-paging-tabs
//
//  Created by Crystal Knight on 1/12/22.
//

import SwiftUI

struct ResultCardView: View {
  // MARK: - Properties
  var vacation: Vacation
  
  // MARK: - View
  var body: some View {
    HStack(alignment: .top) {
      Image(systemName: vacation.imageName)
        .resizable()
        .renderingMode(.original) // So pics will have color
        .aspectRatio(contentMode: .fit)
        .frame(width: 150)
        .padding()
        .background(Color.gray.opacity(0.15)) // For contrast
      
      VStack(alignment: .leading) {
        Text(vacation.name)
          .bold()
        
        ForEach(vacation.places, id: \.self) { place in
          Text(place.name)
        }
        
        Spacer()
      } //: VStack
      .padding()
      
    } //: HStack
    .padding(.leading)
    .frame(maxHeight: 200)
  }
}

struct ResultCardView_Previews: PreviewProvider {
  static var previews: some View {
    ResultCardView(vacation: vacation7)
      .previewLayout(.sizeThatFits)
  }
}
