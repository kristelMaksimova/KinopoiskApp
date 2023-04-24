//
//  FavoritesView.swift
//  KinopoiskApp
//
//  Created by Kristi on 24.04.2023.
//

import SwiftUI

struct FavoritesView: View {
    
    let selectedFilms: [Films]
    
    var body: some View {
        NavigationView{
            List(selectedFilms, id: \.name) { film in
                HStack {
                    Image(systemName: "heart")
                        .frame(width: 80, height: 120)
                        .foregroundColor(.blue)
                    Text(film.name)
                        .font(.system(size: 26))
                }
            }
            .navigationBarTitle("Избранное")
        }
    }
}


struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView(selectedFilms: Films.getFilms())
    }
}
