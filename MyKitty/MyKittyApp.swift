//
//  MyKittyApp.swift
//  MyKitty
//
//

import SwiftUI

@main
struct MyKittyApp: App {
    //To-Do: opret en stateobject m
    @StateObject private var appState = KittyFetcher()
    var body: some Scene {
        WindowGroup {
            KittyList().environmentObject(appState)
        }
    }
}
