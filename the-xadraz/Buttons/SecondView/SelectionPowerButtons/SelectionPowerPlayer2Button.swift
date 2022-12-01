//
//  SelectionPowerPlayer2Button.swift
//  the-xadraz
//
//  Created by Raul Braga on 01/12/22.
//

import SwiftUI

struct SelectionPowerPlayer2Button: View {
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

struct SelectionPowerPlayer2Button_Previews: PreviewProvider {
    static var previews: some View {
        SelectionPowerPlayer2Button()
    }
}
