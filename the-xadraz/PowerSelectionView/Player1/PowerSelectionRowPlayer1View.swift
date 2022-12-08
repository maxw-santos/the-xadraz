//
//  PowerSelectionRowView.swift
//  the-xadraz
//
//  Created by maxwel gomes dos santos on 24/11/22.
//
import SwiftUI

struct PowerSelectionRowPlayer1View: View {
    
    
    let model: PowerSelectionRow

    var body: some View {

        VStack{
                HStack{
                    Text(nameOfPowers[model.title.rawValue]!)
                    Image(model.iconName)
                }
            
            }
            
        }

    }

