//
//  ClockView.swift
//  the-xadraz
//
//  Created by Raul Braga on 15/12/22.
//

import SwiftUI

struct ClockView1: View {
    @EnvironmentObject private var settingsOfPlayers: SettingsOfPlayers
    @State private var isShowing = false
    @State private var isShowingView = false
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        
//        NavigationLink(destination: SecondView(), isActive: $isShowingView){EmptyView()}
        
            Button(
                action:
                    {
                        settingsOfPlayers.turn.toggle()
                    },
                label:
                    {
                        Text("\(settingsOfPlayers.formatTime(player: 0))")
                            .font(.system(size: 50))
                            .onReceive(timer){ _ in
                                if (settingsOfPlayers.timeRemaining[0] > 0 && !settingsOfPlayers.turn) {
                                    settingsOfPlayers.timeRemaining[0] -= 1;
                                }
                                else if (settingsOfPlayers.timeRemaining[0] == 0 && isShowing == false) {
                                    isShowing.toggle()
                                    
                                }
                            }
                    }
            )
            .alert(isPresented: $isShowing ){
                Alert(title: Text("Fim de jogo!"), message: Text("As peças pretas venceram!"), dismissButton: .default(Text("Sair"), action: {isShowingView = true}))
            }
            
        
    }
}

struct ClockView1_Previews: PreviewProvider {
    static var previews: some View {
        ClockView1()
            .environmentObject(SettingsOfPlayers(Power1: .bombardeioDeGuerra, Power2: .bombardeioDeGuerra))
    }
}
