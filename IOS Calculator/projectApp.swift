//
//  TestProjectApp.swift
//  TestProject
//
//  Created by Roshan Arun on 12/14/22.
//
 
import SwiftUI
 
@main
struct TestProjectApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Calculator())
        }
    }
}


