//
//  AnimalModel.swift
//  Africa
//
//  Created by Phonthep Aungkanukulwit on 18/2/2564 BE.
//

import Foundation

struct Animal: Codable, Identifiable {
  let id: String
  let name: String
  let headline: String
  let description: String
  let link: String
  let image: String
  let gallery: [String]
  let fact: [String]
}
