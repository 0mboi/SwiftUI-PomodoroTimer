//
//  TimeModel.swift
//  PomodoroTimer
//
//  Created by Christopher Hicks on 2/3/21.
//

import SwiftUI


class TimeModel: ObservableObject {
    
    
    var timer: Timer?
    
    @Published var timeRemaing: Float = 0
    @Published var timeStart: Float = 0
    @Published var timerActive: Bool = false
    
    
    
    func startTimer(time: Float) {
        
        timerActive = true
        invaliateTimer()
        initTimer(time: time)
    }
    
    func resetTimer() {
        invaliateTimer()
        timerActive = false
        timeRemaing = 0
    }
    
    
    func initTimer(time: Float) {
        
       
        timeStart = time
        timeRemaing = timeStart
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in self.timerFunction() }
    }
    
    func timerFunction() {
        
        if timeRemaing == 0 {
            timerActive = false
            timeRemaing = 0
            invaliateTimer()
        } else {
            timerActive = true
            reduceTime()
        }
    }
    
    
    
    func reduceTime() {
        timeRemaing -= 1
    }
    
    
    func invaliateTimer() {
        timer?.invalidate()
    }
}
