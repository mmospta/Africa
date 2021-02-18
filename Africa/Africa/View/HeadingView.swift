//
//  HeadingView.swift
//  Africa
//
//  Created by Phonthep Aungkanukulwit on 18/2/2564 BE.
//

import SwiftUI

struct HeadingView: View {
  // MARK: - PROPERTIES
  
  var headingImage: String
  var headingText: String
  
  // MARK: - BODY
  
  var body: some View {
    HStack {
      Image(systemName: headingImage)
        .foregroundColor(.accentColor)
        .imageScale(.large)
      
      Text(headingText)
        .font(.title3)
        .fontWeight(.bold)
    } //: HSTACK
    .padding(.vertical)
    
  }
}

// MARK: - PREVIEW

struct HeadingView_Previews: PreviewProvider {
  static var previews: some View {
    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wildreness in Pictures")
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
