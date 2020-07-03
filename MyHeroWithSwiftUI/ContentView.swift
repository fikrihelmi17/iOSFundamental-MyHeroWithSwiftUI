//MyHeroWithSwiftUI
//  ContentView.swift
//  MyHeroWithSwiftUI
//
//  Created by Fikri on 03/07/20.
//  Copyright © 2020 Fikri Helmi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            HeroList()
            .navigationBarTitle(Text("Pahlawan Indonesia"), displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
