//
//  SelectionTimeButtons.swift
//  the-xadraz
//
//  Created by Raul Braga on 30/11/22.
//

import SwiftUI

struct SelectionTimeButtons: View {
    
    @EnvironmentObject private var settingsOfPlayer: SettingsOfPlayers
    
    var body: some View {
        Menu(
            content:{
                Button(
                    action: {settingsOfPlayer.setTime(time: .FiveMin)},
                    label: {Text("5 minutos")})
                
                Button(
                    action: {settingsOfPlayer.setTime(time: .FifteenMin)},
                    label: {Text("15 minutos")})
                
                Button(
                    action: {settingsOfPlayer.setTime(time: .TwentyMin)},
                    label: {Text("20 minutos")})
                
            },
            label: {Image("ChessClock")}
        )
    }
}

struct SelectionTimeButtons_Previews: PreviewProvider {
    static var previews: some View {
        SelectionTimeButtons()
            .environmentObject(SettingsOfPlayers(Power1: .bombardeioDeGuerra, Power2: .bombardeioDeGuerra))
    }
}
