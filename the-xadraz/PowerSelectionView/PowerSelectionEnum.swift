//
//  PowerSelectionEnum.swift
//  the-xadraz
//
//  Created by Raul Braga on 25/11/22.
//

import Foundation


enum Powers: String {
    case bombardeioDeGuerra = "Cannon"
    case ataqueAoPosto = "AtaqueAoPosto"
    case campoFechado = "CampoFechado"
    case acordoDeMercenarios = "AcordoDeMercenarios"
}

let nameOfPowers: [String: String] = [
    "Cannon": "Bombardeio de Guerra",
    "AtaqueAoPosto": "Ataque ao Posto",
    "CampoFechado": "Campo Fechado",
    "AcordoDeMercenarios": "Acordo de Mercenários"
]
