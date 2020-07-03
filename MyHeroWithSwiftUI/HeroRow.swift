//
//  HeroRow.swift
//  MyHeroWithSwiftUI
//
//  Created by Fikri on 03/07/20.
//  Copyright © 2020 Fikri Helmi. All rights reserved.
//

import SwiftUI

struct HeroRow: View {
    var hero: Hero
    
    var body: some View {
        HStack{
            Image(hero.photo)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 80.0, height: 80.0)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
            VStack(alignment: .leading, spacing: 0){
                Text(hero.name)
                    .font(.system(size: 20))
                Text(hero.description)
                    .font(.system(size: 14))
                    .lineLimit(3)
            }.padding(.leading, 8)
            
        }.padding(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
        
    }
}

struct HeroRow_Previews: PreviewProvider {
    static var previews: some View {
        HeroRow(hero: heroes[1])
            .previewLayout(.fixed(width: 400, height: 100))
    }
}
