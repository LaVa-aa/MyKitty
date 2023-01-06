//
//  KittyDetail.swift
//  MyKitty
//


import SwiftUI

struct KittyDetail: View {
    @State var kitty: String
    var body: some View {
        ZStack{
            Color.red
            //Text hvis man vil ikke lave om på date
            // Text(kitty) uden at tilføje @State
            TextField(kitty, text: $kitty)
                .font(.largeTitle)
            }
        .ignoresSafeArea()
        }
    }

struct KittyDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            KittyDetail(kitty: "untitled.jpeg")
                .navigationTitle("demo")
            
        }
    
    }
}
