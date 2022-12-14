//
//  PowerSelectionRowView.swift
//  the-xadraz
//
//  Created by maxwel gomes dos santos on 24/11/22.
//
import SwiftUI

struct PowerSelectionRowPlayer1View: View {
    
    
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

