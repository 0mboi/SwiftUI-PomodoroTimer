//
//  TimeButton.swift
//  PomodoroTimer
//
//  Created by Christopher Hicks on 2/3/21.
//

import SwiftUI

struct TimeButton: View {
    
    @EnvironmentObject var model: TimeModel
    
    var buttonName: String = ""
    var color: Color
    var time: Float
    
    var opacity: Double {
        if model.timerActive == true {
            return 0.4
        } else {
            return 10
        }
        
    }
    
    
    var body: some View {
        

            
            Image(systemName: buttonName)
                .font(.largeTitle)
                .frame(width: 100, height: 100, alignment: .center)
                .foregroundColor(color)
                .opacity(opacity)
                .onTapGesture {
                    model.startTimer(time: time)
                }
                .onLongPressGesture {
                    model.resetTimer()
                }
             
    
            
            
        }
    }



