//
//  ContentView.swift
//  KinopoiskApp
//
//  Created by Kristi on 24.04.2023.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    let selectedFilms: [Films]
    
    var body: some View {
       
        TabView {

            CatalogView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            SearchView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            FavoritesView(selectedFilms: selectedFilms)
                .tabItem {
                    Label("avorites", systemImage: "heart")
                }
        }
        .opacity(20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(selectedFilms: Films.getFilms()).preferredColorScheme(.dark).environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
