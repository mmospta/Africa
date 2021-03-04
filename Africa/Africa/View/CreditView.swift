//
//  CreditView.swift
//  Africa
//
//  Created by Phonthep Aungkanukulwit on 4/3/2564 BE.
//

import SwiftUI

struct CreditView: View {
  var body: some View {
    VStack {
      Image("compass")
        .resizable()
        .scaledToFit()
        .frame(width: 128, height: 128)
      Text("""
  Copyright © Phonthep Aungkanukulwit
  All right reserved
  """)
        .font(.footnote)
        .multilineTextAlignment(.center)
    }
    .padding()
    .opacity(0.4)
  }
}

struct CreditView_Previews: PreviewProvider {
  static var previews: some View {
    CreditView()
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
