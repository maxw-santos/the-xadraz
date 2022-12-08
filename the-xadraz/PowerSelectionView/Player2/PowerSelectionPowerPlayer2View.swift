//
//  PowerSelectionPowerPlayer2View.swift
//  the-xadraz
//
//  Created by Raul Braga on 01/12/22.
//

import SwiftUI

struct PowerSelectionRowPlayer2View: View {
    
    
    let power: Powers

    var body: some View {

        VStack{
                HStack{
                    Text(nameOfPowers[power.rawValue]!)
                    Image(power.rawValue)
                }
            
        }
            
        }

    }
