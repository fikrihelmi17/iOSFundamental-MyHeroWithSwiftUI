//
//  HeroList.swift
//  MyHeroWithSwiftUI
//
//  Created by Fikri on 03/07/20.
//  Copyright © 2020 Fikri Helmi. All rights reserved.
//

import SwiftUI

struct HeroList: View {
    
    var body: some View {
        List(heroes){ hero in
            ZStack{
                HeroRow(hero: hero)
                NavigationLink(destination: HeroDetail(hero: hero)) {
                    EmptyView()
                    //HeroRow(hero: hero)
                }
            }
            
        }
    }
}



struct HeroList_Previews: PreviewProvider {
    static var previews: some View {
        HeroList()
    }
}


