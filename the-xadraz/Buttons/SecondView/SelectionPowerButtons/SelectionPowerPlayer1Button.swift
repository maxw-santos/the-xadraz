//
//  SelectionPowerButton.swift
//  the-xadraz
//
//  Created by Raul Braga on 24/11/22.
//

import SwiftUI

struct SelectionPowerPlayer1Button: View {
    var body: some View {
            ZStack{
                Rectangle()
                    .fill(.white)
                    .cornerRadius(200.0)
                    .opacity(0.7)
                    .frame(width:300, height:100)
                    .shadow(radius: 35)
                
                    PowerSelectionPlayer1View()
                    
                
            }
                        
    }
}

struct SelectionPowerButton_Previews: PreviewProvider {
    static var previews: some View {
        SelectionPowerPlayer1Button()
    }
}
