//
//  ContentView.swift
//  Africa
//
//  Created by Phonthep Aungkanukulwit on 17/2/2564 BE.
//

import SwiftUI

struct ContentView: View {
  // MARK: - PROPERTIES
  
  let animals: [Animal] = Bundle.main.decode("animals.json")
  let haptic = UIImpactFeedbackGenerator(style: .medium)
  
  @State private var isGridViewActivate: Bool = false
  
  @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
  @State private var gridColumn: Int = 1
  @State private var toolbarIcon: String = "square.grid.2x2"
  
//  let gridLayout: [GridItem] = Array(repeating: GridItem(), count: 2)
  
  // MARK - FUNCTIONS
  func gridSwitch() {
    gridLayout = Array(repeating: .init(.flexible()), count: gridLayout.count % 3 + 1)
    gridColumn = gridLayout.count
    print("Grid Number: \(gridColumn)")
    
    // TOOLBAR IMAGE
    switch gridColumn {
    case 1:
      toolbarIcon = "square.grid.2x2"
    case 2:
      toolbarIcon = "square.grid.3x2"
    case 3:
      toolbarIcon = "rectangle.grid.1x2"
    default:
      toolbarIcon = "square.grid.2x2"
    }
  }
  
  var body: some View {
    // MARK: - BODY
    
    NavigationView {
      Group {
        if !isGridViewActivate {
          List {
            CoverImageView()
              .frame(height: 300)
              .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            ForEach(animals) { animal in
              NavigationLink(destination: AnimalDetailView(animal: animal)) {
                AnimalListItemView(animal: animal)
              } //: LINK
            } //: LOOP
            CreditView()
              .modifier(CenterModifier())
          } //: LIST
        } else {
          ScrollView(.vertical, showsIndicators: false) {
            LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
              ForEach(animals) { animal in
                NavigationLink(destination: AnimalDetailView(animal: animal)) {
                  AnimalGridItemView(animal: animal)
                }
              }
            }
          }
          .padding(10)
          .animation(.easeIn)
        }
      }
      .navigationBarTitle("Africa", displayMode: .large)
      .toolbar {
        ToolbarItem(placement: .navigationBarTrailing) {
          HStack(spacing: 16) {
            // LIST
            Button(action: {
              print("List view is activated")
              isGridViewActivate = false
              haptic.impactOccurred()
            }) {
              Image(systemName: "square.fill.text.grid.1x2")
                .font(.title2)
                .foregroundColor(isGridViewActivate ? .primary : .accentColor)
            }
            
            // GRID
            Button(action: {
              print("Grid view is activated")
              isGridViewActivate = true
              haptic.impactOccurred()
              gridSwitch()
            }) {
              Image(systemName: toolbarIcon)
                .font(.title2)
                .foregroundColor(isGridViewActivate ? .accentColor : .primary)
            }
          } //: HSTACK
        } //: BUTTONS
      } //: TOOLBAR
    } //: NAVIGATION
  }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
