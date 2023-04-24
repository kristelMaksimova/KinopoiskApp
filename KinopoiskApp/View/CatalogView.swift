//
//  CatalogView.swift
//  KinopoiskApp
//
//  Created by Kristi on 24.04.2023.
//

import SwiftUI

struct CatalogView: View {
    var body: some View {
        
        ScrollView {
            
            ZStack {
                
                Image("Матрица").resizable().frame(height: 650)
                
                VStack {
                    Spacer()
                    Button("Смотреть описание") {
                        print("показать экран детальной информации")
                    }
                    .foregroundColor(.white)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.white, lineWidth: 3)
                    )
                    .padding(45)
                    .font(.system(size: 26))
                }
            }
            
            
            
            
            
            
        }
        
    }
}
struct CatalogView_Previews: PreviewProvider {
    static var previews: some View {
        CatalogView()
            .preferredColorScheme(.dark)
        
    }
}
