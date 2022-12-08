//
//  PowerOfPlayer1.swift
//  the-xadraz
//
//  Created by Raul Braga on 08/12/22.
//

import Foundation

class PowerOfPlayers: ObservableObject{
    
    @Published var Power1: Powers;
    @Published var Power2: Powers;
    
    init(Power1: Powers, Power2: Powers){
        self.Power1 = Power1
        self.Power2 = Power2
    }
    
    
}
