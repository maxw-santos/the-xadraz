//
//  BoardView5.swift
//  the-xadraz
//
//  Created by maxwel gomes dos santos on 08/12/22.
//

import SwiftUI

struct BoardView5: View {
    
    @EnvironmentObject private var settingsofPlayers: SettingsOfPlayers
    @EnvironmentObject private var alertMessage: AlertMessage
    
    @State var buttonsStates: [Bool] = [false, false, false, false, false, false, false, false]
    @State var isShowingAlert = false
        
        
        let numbers = Array(1...8)
        
        
        
        var body: some View {
            
            
            
            HStack(spacing: 0) {
                
                
                
                ForEach(numbers, id: \.self) { number in
                    
                    
                    
                    Button {
                        if (!buttonsStates[number - 1]){
                            
                            buttonsStates[number - 1].toggle()
                            
                            settingsofPlayers.count2 += 1
                            
                            alertMessage.setAlert(buttonsStates: buttonsStates, number: number, player: 0, pawn: true)
                            
                            isShowingAlert = alertMessage.numberOfPawns == 4 ? true : false;
                            
                    }
                        
                        
                        
                        
                        
                    } label: {
                        
                        
                        
                        ZStack {
                            
                            if number % 2 == 0 {
                                if !buttonsStates[number - 1]{
                                    
                                    Image("pwhb")
                                    
                                        .aspectRatio(1, contentMode: .fit)
                                }
                                else {
                                    Image("dwhb")
                                        .aspectRatio(1, contentMode: .fit)
                                    
                                }
                            }
                            if number % 2 != 0 {
                                if !buttonsStates[number - 1]{
                                    Image("pwhw")
                                    
                                        .aspectRatio(1, contentMode: .fit)
                                    
                                } else {
                                    Image("dwhw")
                                        .aspectRatio(1, contentMode: .fit)
                                    
                                }
                            }
                            
                        }
                        
                        
                    }.alert(isPresented: $isShowingAlert){
                        Alert(title: Text(alertMessage.titulo), message: Text(alertMessage.mensagem),
                              dismissButton:
                                .default(Text("OK"), action: {
                                    alertMessage.titulo = "";
                                    alertMessage.mensagem = ""

                                    
                                }))
                    }
                        
                    
                    
                    
                }
                
                
                
            }
            
            
            
        }
    
    struct BoardView5_Previews: PreviewProvider {
        static var previews: some View {
            BoardView5()
                .environmentObject(SettingsOfPlayers(Power1: .bombardeioDeGuerra, Power2: .bombardeioDeGuerra))
                .environmentObject(AlertMessage(titulo: "", mensagem: ""))
        }
    }
}
