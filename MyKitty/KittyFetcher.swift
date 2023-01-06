//
//  KittyFetcher.swift
//  MyKitty
//
//

import Foundation

class KittyFetcher: ObservableObject{
    @Published var pictures = [String]()
    init(){let fileManager = FileManager.default
        let path = Bundle.main.resourcePath!
        //! means der er ikke 0 da resourcePath er obtional string?
        // path laves om til string
        
        let items = try!fileManager.contentsOfDirectory(atPath:path)
        for item in items{
            if item.hasSuffix("jpeg"){
                pictures.append(item)
}
        }
    }
    
}
