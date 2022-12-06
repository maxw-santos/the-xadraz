//
//  PowerSelectionPowerPlayer2View.swift
//  the-xadraz
//
//  Created by Raul Braga on 01/12/22.
//

import SwiftUI

struct PowerSelectionRowPlayer2View: View {
    
    
    let model: PowerSelectionRow

    var body: some View {

        VStack{
            
            Button(
                action: {
                    powerPlayer2(power: model.title)
            },
                label: {
                HStack{
                    Text(nameOfPowers[model.title.rawValue]!)
                    Image(model.iconName)
                }
            })
            
        }
            
        }

    }