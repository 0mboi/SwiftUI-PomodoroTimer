//
//  TimeLabel.swift
//  PomodoroTimer
//
//  Created by Christopher Hicks on 2/3/21.
//

import SwiftUI

struct TimeLabel: View {
    
    @EnvironmentObject var model: TimeModel
    
    var timeRemainingString: String { String(model.timeRemaing) }
    
    
    var body: some View {
        
        
        ZStack {
            
            if model.timerActive == false {
                
                Image(systemName: "checkmark.circle.fill")
                    .foregroundColor(Color(.systemGray))
                    .font(.largeTitle)
                    .frame(width: 100, height: 100, alignment: .center)
                
            } else {
                
                Text(timeRemainingString)
                    .font(.largeTitle)
                    .foregroundColor(Color(.systemGray))
                    .frame(width: 100, height: 100, alignment: .center)
                
            }
            
            
        }
    }
}


