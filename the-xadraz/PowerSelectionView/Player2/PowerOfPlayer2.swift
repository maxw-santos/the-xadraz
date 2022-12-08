//
//  PowerOfPlayer2.swift
//  the-xadraz
//
//  Created by Raul Braga on 08/12/22.
//

import Foundation

class PowerOfPlayer2: ObservableObject{
    
    @Published var Power: powers;
    
    init(Power: powers){
        self.Power = Power
    }
    
    
}
