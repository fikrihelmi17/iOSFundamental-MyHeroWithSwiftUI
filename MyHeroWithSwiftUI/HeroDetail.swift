//
//  HeroDetail.swift
//  MyHeroWithSwiftUI
//
//  Created by Fikri on 03/07/20.
//  Copyright © 2020 Fikri Helmi. All rights reserved.
//

import SwiftUI

struct HeroDetail: View {
    var hero: Hero
    
    var body: some View{
        ScrollView{
            VStack{
                Spacer(minLength: 20)
                Text(hero.name)
                    .font(.system(size: 25))
                    .bold()
                Spacer(minLength: 80)
                Image(hero.photo)
                .resizable()
                .scaledToFit()
                    .frame(width: /*@START_MENU_TOKEN@*/240.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/240.0/*@END_MENU_TOKEN@*/, alignment: .center)
                Spacer(minLength: 20)
                Text(hero.description)
                    .font(.system(size: 16))
            }
            
        }.padding(EdgeInsets(top: 0, leading: 16, bottom: 16, trailing: 16))
    }
}

struct HeroDetail_Previews: PreviewProvider {
    static var previews: some View {
        HeroDetail(hero: heroes[0])
    }
}
