//
//  PowerOfPlayer1.swift
//  the-xadraz
//
//  Created by Raul Braga on 08/12/22.
//

import Foundation

class PowerOfPlayers: ObservableObject, Identifiable{
    
    @Published var Power1: Powers;
    @Published var Power2: Powers;
    @Published var count1: Int;
    @Published var count2: Int;
    
    
    init(Power1: Powers, Power2: Powers){
        self.Power1 = Power1
        self.Power2 = Power2
        self.count1 = 0
        self.count2 = 0
    }
    
    
    
}
