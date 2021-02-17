//
//  AnimalListItemView.swift
//  Africa
//
//  Created by Phonthep Aungkanukulwit on 18/2/2564 BE.
//

import SwiftUI

struct AnimalListItemView: View {
  
  // MARK: - PROPERTIES

  let animal: Animal
  
  // MARK: - BODY
  
  var body: some View {
    HStack(alignment: .center, spacing: 16) {
      Image(animal.image)
        .resizable()
        .scaledToFill()
        .frame(width: 90, height: 90)
        .clipShape(RoundedRectangle(cornerRadius: 12))
      
      VStack(alignment: .leading, spacing: 8) {
        Text(animal.image)
          .font(.title2)
          .fontWeight(.heavy)
          .foregroundColor(.accentColor)
        
        Text(animal.headline)
          .font(.footnote)
          .multilineTextAlignment(.leading)
          .lineLimit(2)
          .padding(.trailing, 8)
      } //: VSTACK
    } //: HSTACK
  }
}

// MARK: - PREVIEW

struct AnimalListItemView_Previews: PreviewProvider {
  static let animal: [Animal] = Bundle.main.decode("animals.json")
  
  static var previews: some View {
    AnimalListItemView(animal: animal[1])
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
