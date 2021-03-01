//
//  GalleryView.swift
//  Africa
//
//  Created by Phonthep Aungkanukulwit on 17/2/2564 BE.
//

import SwiftUI

struct GalleryView: View {
  var body: some View {
    ScrollView(.vertical, showsIndicators: false) {
      Text("Gallery")
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(MotionAnimationView())
  }
}

struct GalleryView_Previews: PreviewProvider {
  static var previews: some View {
    GalleryView()
      .previewDevice("iPhone 11 Pro")
  }
}
