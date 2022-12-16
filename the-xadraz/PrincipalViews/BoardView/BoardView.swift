//
//  BoardView.swift
//  the-xadraz
//
//  Created by Raul Braga on 01/12/22.
//

import SwiftUI

struct BoardView: View {
    
    @EnvironmentObject private var settingOfPlayers: SettingsOfPlayers
    @EnvironmentObject var alertMessage: AlertMessage
    
    @State var isShowingAlert = false;
    @State var buttonsStates: [Bool] = [false, false, false, false, false, false, false, false]
    
    let counterValues: [Int] = [5, 3, 3, 9, 0, 3, 3, 5]
    
    let numbers = Array(1...8)
    
    
    
    var body: some View {
        
        
        
        HStack(spacing: 0) {
            
            
            
            ForEach(numbers, id: \.self) { number in
                
                
                
                Button {
                    
                    if (!buttonsStates[number - 1] && number != 5) {
                        buttonsStates[number - 1].toggle()
                        
                        alertMessage.setAlert(buttonsStates: buttonsStates, number: number, player: 0, pawn: false)
                        
                        settingOfPlayers.count1 += counterValues[number - 1]
                        
                        if (buttonsStates[number - 1] && !buttonsStates[7 - (number - 1)] && number != 5 && number != 4){
                            
                            isShowingAlert = true
                            
                        }
                        else if(!buttonsStates[number - 1] && buttonsStates[7 - (number - 1)] && number != 5 && number != 4) {
                            
                            isShowingAlert = true
                            
                        }
                        else if (alertMessage.numberOfPowerful == 7){
                            
                            isShowingAlert = true
                            
                        }
                        else if (alertMessage.numberOfPowerful == 6 && !buttonsStates[3]){
                            
                            isShowingAlert = true
                            
                        }
                        
                        
                        
                        
                    }
                    
                    
                } label: {
                    
                    
                    ZStack {
                        
                        if number == 1 {
                            if !buttonsStates[number - 1]{
                                Image("tbhw")
                                    .aspectRatio(1, contentMode: .fit)
                            }
                            else {
                                Image("dbhw")
                                        .aspectRatio(1, contentMode: .fit)
                                    
        
                                
                            }
                            
                            
                        };
                        if number == 2 {
                            if !buttonsStates[number - 1]{
                                Image("hbcb")
                                    .aspectRatio(1, contentMode: .fit)
                            } else{
                                Image("dbhb")
                                    .aspectRatio(1, contentMode: .fit)
                                
                            }
                        } 
                        
                        if number == 3{
                            if !buttonsStates[number - 1]{
                                Image("bbhw")
                                    .aspectRatio(1, contentMode: .fit)
                            } else{
                                Image("dbhw")
                                    .aspectRatio(1, contentMode: .fit)
                                
                            }
                        }
                        if number == 4{
                            if !buttonsStates[number - 1]{
                                Image("qb")
                                    .aspectRatio(1, contentMode: .fit)
                            }
                            else{
                                Image("dbhb")
                                    .aspectRatio(1, contentMode: .fit)
                                
                                
                            }
                        }
                        if number == 5{
                            
                                Image("kb")
                                    .aspectRatio(1, contentMode: .fit)

                            
                        }
                        if number == 6{
                            if !buttonsStates[number - 1]{
                                
                                Image("bbhb")
                                    .aspectRatio(1, contentMode: .fit)
                            }
                            else{
                                Image("dbhb")
                                    .aspectRatio(1, contentMode: .fit)
                                
                            }
                            
                        }
                        if number == 7{
                            if !buttonsStates[number - 1]{
                                Image("hbcw")
                                    .aspectRatio(1, contentMode: .fit)
                            }
                            else{
                                Image("dbhw")
                                    .aspectRatio(1, contentMode: .fit)
                                                                
                            }
                        }
                        if number == 8{
                            if !buttonsStates[number - 1]{
                                Image("tbhb")
                                    .aspectRatio(1, contentMode: .fit)
                            }
                            else{
                                Image("dbhb")
                                .aspectRatio(1, contentMode: .fit)
                                
                            }
                        }
                        
                        
                        
                    }
                    
                    
                    
                }
                .alert(isPresented: $isShowingAlert){
                    Alert(title: Text(alertMessage.titulo), message: Text(alertMessage.mensagem),
                          dismissButton:
                            .default(Text("OK"), action: {
                                alertMessage.titulo = "";
                                alertMessage.mensagem = ""

                                
                            })
                    )
                    }
                
                
                
            }
            
            
            
        }
    }
    struct Boardview_Previews: PreviewProvider {
        
        static var previews: some View {
            
            BoardView()
                .environmentObject(SettingsOfPlayers(Power1: .bombardeioDeGuerra, Power2: .bombardeioDeGuerra))
                .environmentObject(AlertMessage(titulo: "", mensagem: ""))
            
        }
        
    }
}
