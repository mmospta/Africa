//
//  CenterModifier.swift
//  Africa
//
//  Created by Phonthep Aungkanukulwit on 4/3/2564 BE.
//

import SwiftUI

struct CenterModifier: ViewModifier {
  func body(content: Content) -> some View {
    HStack {
      Spacer()
      content
      Spacer()
    }
  }
}
