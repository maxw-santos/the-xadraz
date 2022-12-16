//
//  BoardView2.swift
//  the-xadraz
//
//  Created by Raul Braga on 01/12/22.
//

import SwiftUI

struct BoardView2: View {
    
    @EnvironmentObject private var settingsOfPlayers: SettingsOfPlayers
    @EnvironmentObject private var alertMessage: AlertMessage
    
    @State var isShowingAlert = false
    @State var buttonsStates: [Bool] = [false, false, false, false, false, false, false, false]

    let numbers = Array(1...8)

    

    var body: some View {
        
        

        HStack(spacing: 0) {

            

            ForEach(numbers, id: \.self) { number in

                

                Button {

                    if (!buttonsStates[number - 1]){
                        buttonsStates[number - 1].toggle()
                        
                        settingsOfPlayers.count1 += 1
                        
                        alertMessage.setAlert(buttonsStates: buttonsStates, number: number, player: 1, pawn: true)
                        
                        isShowingAlert = alertMessage.numberOfPawns == 4 ? true : false
                        
                        
                    }

                    

                } label: {

                    

                    ZStack {
                        
                        if number % 2 == 0 {
                            if !buttonsStates[number - 1]{
                                Image("pbhw")
                                
                                    .aspectRatio(1, contentMode: .fit)
                                
                            }
                            else {
                                Image("dbhw")
                                    .aspectRatio(1, contentMode: .fit)

                            }
                        }
                        if number % 2 != 0 {
                            if !buttonsStates[number - 1]{
                                Image("pbhb")
                                
                                    .aspectRatio(1, contentMode: .fit)
                                
                            } else {
                                Image("dbhb")
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

    

}



struct boardview2_Previews: PreviewProvider {

    static var previews: some View {

        BoardView2()
            .environmentObject(SettingsOfPlayers(Power1: .bombardeioDeGuerra, Power2: .bombardeioDeGuerra))
            .environmentObject(AlertMessage(titulo: "", mensagem: ""))

    }

}
