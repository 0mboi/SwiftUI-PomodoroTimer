//
//  ContentView.swift
//  PomodoroTimer
//
//  Created by Christopher Hicks on 2/3/21.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model: TimeModel
    
    var body: some View {
        
        VStack {
            VStack {
                TimeBar()
                TimeLabel()
            }
            
           
            HStack {
                
//                if model.timerActive == true {
//
//                TimeButton(buttonName: "10.circle.fill", color: Color(.systemPurple), time: 11).opacity(0.4)
//                TimeButton(buttonName: "25.circle.fill", color: Color(.systemBlue), time: 26).opacity(0.4)
//                TimeButton(buttonName: "50.circle.fill", color: Color(.systemIndigo), time: 51).opacity(0.4)
//                } else {
                    TimeButton(buttonName: "10.circle.fill", color: Color(.systemPurple), time: 11)
                    TimeButton(buttonName: "25.circle.fill", color: Color(.systemBlue), time: 26)
                    TimeButton(buttonName: "50.circle.fill", color: Color(.systemIndigo), time: 51)
//                }
                
            }.offset(y: 40)
        }
    }
}


