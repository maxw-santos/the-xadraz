//
//  SelectionTimeButtons.swift
//  the-xadraz
//
//  Created by Raul Braga on 30/11/22.
//

import SwiftUI

struct SelectionTimeButtons: View {
    
    var body: some View {
        Menu(
            content:{
                Button(
                    action: {},
                    label: {Text("Sem tempo")})
                
                Button(
                    action: {},
                    label: {Text("15 minutos")})
                
                Button(
                    action: {},
                    label: {Text("20 minutos")})
                
            },
            label: {Image("ChessClock")}
        )
    }
}

struct SelectionTimeButtons_Previews: PreviewProvider {
    static var previews: some View {
        SelectionTimeButtons()
    }
}
