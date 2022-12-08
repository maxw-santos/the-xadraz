//
//  PowerOfPlayer1.swift
//  the-xadraz
//
//  Created by Raul Braga on 08/12/22.
//

import Foundation

class PowerOfPlayer1: ObservableObject{
    
    @Published var Power: powers;
    
    init(Power: powers){
        self.Power = Power
    }
    
    
}
