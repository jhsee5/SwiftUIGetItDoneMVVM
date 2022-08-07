//
//  GetItDoneApp.swift
//  GetItDone
//
//  Created by Jian Hui See on 28/07/2022.
//

import SwiftUI

/*
 MVVM Architecture
 
 Model = data point
 View - UI
 ViewModel - manages models for view
 
 
 */


@main
struct GetItDoneApp: App {
    
    @StateObject var listViewModel: ListVM = ListVM()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{ //all apps will be within a NavigationView
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
