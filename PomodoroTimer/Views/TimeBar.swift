//
//  TimeButton.swift
//  PomodoroTimer
//
//  Created by Christopher Hicks on 2/3/21.
//

import SwiftUI

struct TimeBar: View {
    
    @EnvironmentObject var model: TimeModel
    
    var progressBar: CGFloat {
        
        if model.timeStart == 11 {
            return CGFloat(model.timeRemaing / model.timeStart * 350)
            
        } else {
            return 0
        }
      
    }
    
    
    var progressBarColor: Color {
        
        if model.timeStart > 15.0 {
            return Color(.systemPurple)
        } else if model.timeStart > 30.0 {
            return Color(.systemBlue)
        } else if model.timeStart > 55.0 {
            return Color(.systemIndigo)
        } else {
            return Color(.systemRed)
        }
    }
    
    
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 5)
                .frame(width: 5, height: 350, alignment: .center)
                .foregroundColor(Color(.systemGray))
            
            VStack {
                Spacer()
                
                RoundedRectangle(cornerRadius: 5)
                    .frame(width: 5, height: progressBar, alignment: .center)
                    .foregroundColor(Color(.systemIndigo))
                
            }
            
            
        }.frame(width: 5, height: 350, alignment: .center)
        
        
        
    }
}
