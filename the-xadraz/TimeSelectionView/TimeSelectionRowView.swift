//
//  TimeSelectionRowView.swift
//  the-xadraz
//
//  Created by Raul Braga on 30/11/22.
//

import SwiftUI

struct TimeSelectionRowView: View {
    
    let model: TimeSelectionRow
    
    var body: some View {
        
        HStack{
            
            Text(model.time)
            
        }
        
    }
}

