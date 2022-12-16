//
//  ClockView2.swift
//  the-xadraz
//
//  Created by Raul Braga on 15/12/22.
//

import SwiftUI

struct ClockView2: View {
    @EnvironmentObject private var settingsOfPlayers: SettingsOfPlayers
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        Button(
            action:
                {
                    settingsOfPlayers.turn.toggle()
                },
            label:
                {
                    Text("\(settingsOfPlayers.formatTime(player: 1))")
                        .font(.system(size: 50))
                        .onReceive(timer){ _ in
                            if (settingsOfPlayers.timeRemaining[1] > 0 && settingsOfPlayers.turn) {
                                settingsOfPlayers.timeRemaining[1] -= 1;
                            }
                        }
                }
        )
    }
}

struct ClockView2_Previews: PreviewProvider {
    static var previews: some View {
        ClockView2()
            .environmentObject(SettingsOfPlayers(Power1: .bombardeioDeGuerra, Power2: .bombardeioDeGuerra))
    }
}
