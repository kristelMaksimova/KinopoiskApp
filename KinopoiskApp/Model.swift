//
//  Model.swift
//  KinopoiskApp
//
//  Created by Kristi on 24.04.2023.
//

import Foundation

struct Films {
    let name: String
}

extension Films {
    
    static func getFilms() -> [Films] {
        
        var films: [Films] = []
        
        let names = DataManager.shared.name.shuffled()
        
        for film in names {
            
            let film = Films(name: film)
            
            films.append(film)
        }
    
        return films
    }
}
