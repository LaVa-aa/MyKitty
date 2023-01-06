//
//  ContentView.swift
//  MyKitty
//

import SwiftUI

struct KittyList: View {
    @EnvironmentObject var kittyViewModel: KittyFetcher
    var body: some View {
        NavigationView{
            List(kittyViewModel.pictures, id:\.self){kitty in
                NavigationLink(destination: KittyDetail(kitty: kitty)) {Text(kitty)
                }
            .navigationTitle("Kittys")
            
            }
        }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        KittyList().environmentObject(KittyFetcher())
    }
}
