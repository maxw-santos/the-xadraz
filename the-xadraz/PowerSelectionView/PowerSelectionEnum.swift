//
//  PowerSelectionEnum.swift
//  the-xadraz
//
//  Created by Raul Braga on 25/11/22.
//

import Foundation


enum powers: Int {
    case bombardeioDeGuerra = 1
    case ataqueAoPosto = 2
    case campoFechado = 3
    case acordoDeMercenarios = 4
}

let nameOfPowers: [Int: String] = [
    1: "Bombardeio de Guerra",
    2: "Ataque ao posto",
    3: "Campo Fechado",
    4: "Acordo de mercenários"
]
