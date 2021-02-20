//
//  VideoModel.swift
//  Africa
//
//  Created by Phonthep Aungkanukulwit on 19/2/2564 BE.
//

import Foundation

struct Video: Codable, Identifiable {
  let id: String
  let name: String
  let headline: String
  
  // Computed Property
  var thumbnail: String {
    "video-\(id)"
  }
}
