//
//  PowerOfPlayer1.swift
//  the-xadraz
//
//  Created by Raul Braga on 08/12/22.
//

import Foundation

class SettingsOfPlayers: ObservableObject, Identifiable{
    @Published var turn: Bool;
    @Published var Power1: Powers;
    @Published var Power2: Powers;
    @Published var count1: Int;
    @Published var count2: Int;
    @Published var timeRemaining: [Int];
    @Published var isThirdView: Bool;
    
    init(Power1: Powers, Power2: Powers){
        self.Power1 = Power1
        self.Power2 = Power2
        self.count1 = 0
        self.count2 = 0
        self.timeRemaining = [300, 300]
        self.turn = false
        self.isThirdView = false
    }
    
    func setTime(time: Time){
        
        self.timeRemaining = [time.rawValue, time.rawValue]
        
    }
    
    func formatTime(player: Int) -> String
    {
        return String(format: "%02d:%02d", self.timeRemaining[player] / 60, self.timeRemaining[player] % 60)
    }
    
    
    
    
}
