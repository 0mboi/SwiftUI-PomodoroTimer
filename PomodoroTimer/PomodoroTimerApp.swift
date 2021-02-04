//
//  PomodoroTimerApp.swift
//  PomodoroTimer
//
//  Created by Christopher Hicks on 2/3/21.
//

import SwiftUI

@main
struct PomodoroTimerApp: App {
    
    @StateObject var model: TimeModel = TimeModel()
    
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(model)
        }
    }
}
