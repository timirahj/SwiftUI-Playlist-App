//
//  ContentView.swift
//  SwiftUI-Playlist-App
//
//  Created by Timirah James on 1/7/21.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    let categories: [Genre] = [
      Genre(category: "Rock & Roll"),
      Genre(category: "Hip-Hop"),
      Genre(category: "R&B"),
      Genre(category: "Gospel")
    ]
    
    NavigationView {
      List(categories) { category in
        Text(category.category)
      }.navigationBarTitle("Music")
    }
 }
}


struct Genre: Identifiable {
var id = UUID()
var category: String
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
