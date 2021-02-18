//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Phonthep Aungkanukulwit on 18/2/2564 BE.
//

import SwiftUI

struct AnimalDetailView: View {
  // MARK: - PROPERTIES
  
  let animal: Animal
  
  // MAKE: - BODY
  
  var body: some View {
    ScrollView(.vertical, showsIndicators: false) {
      VStack(alignment: .center, spacing: 20) {
        // HERO IMAGE
        Image(animal.image)
          .resizable()
          .scaledToFit()
        
        // TITLE
        Text(animal.name)
          .font(.largeTitle)
          .fontWeight(.heavy)
          .multilineTextAlignment(.center)
          .padding(.vertical, 8)
          .foregroundColor(.primary)
          .background(
            Color.accentColor
              .frame(height: 8)
              .offset(y: 24)
            
          )
        
        // HEADLINE
        Text(animal.headline)
          .font(.headline)
          .multilineTextAlignment(.leading)
          .foregroundColor(.accentColor)
          .padding(.horizontal)
        
        // GALLERY
        Group {
          HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wildreness in Pictures")
          InsetGalleryView(animal: animal)
        }
        .padding(.horizontal)
        
        // FACTS
        Group {
          HeadingView(headingImage: "questionmark.circle", headingText: "Did you know?")
          InsetFactView(animal: animal)
        }
        .padding(.horizontal)
        
        // DESCRIPTION
        Group {
          HeadingView(headingImage: "info.circle", headingText: "All about \(animal.name)")
          
          Text(animal.description)
            .multilineTextAlignment(.leading)
            .layoutPriority(1)
        }
        .padding(.horizontal)
        
        // MAP
        Group {
          HeadingView(headingImage: "map", headingText: "National Parks")
          
        InsetMapView()
        }
        .padding(.horizontal)
        
        // LINK
        Group {
          HeadingView(headingImage: "books.vertical", headingText: "Learn mode")
          
          ExternalWeblinkView(animal: animal)
        }
        .padding(.horizontal)
        
        
      } //: VSTACK
      .navigationBarTitle("Learn about \(animal.name)", displayMode: .inline)
    } //: SCROLL
  }
}

// MARK: - PREVIEW

struct AnimalDetailView_Previews: PreviewProvider {
  static let animal: [Animal] = Bundle.main.decode("animals.json")
  
  static var previews: some View {
    Group {
      NavigationView {
        AnimalDetailView(animal: animal[0])
      }
      .previewDevice("iPhone 11 Pro")
    }
  }
}
