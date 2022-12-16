//
//  BoardView6.swift
//  the-xadraz
//
//  Created by maxwel gomes dos santos on 08/12/22.
//

import SwiftUI

struct BoardView6: View {
    
    
    @State var buttonsStates: [Bool] = [false, false, false, false, false, false, false, false]
    @State var isShowingAlert = false;
    
    let numbers = Array(1...8)
    
    //    (buttonsStates[0] || buttonsStates[7]) Tower condition
    //    (buttonsStates[1] || buttonsStates[6]) Horse condition
    //    (buttonsStates[2] || buttonsStates[5]) Bishop condition
    
    
    let counterValues: [Int] = [5, 3, 3, 9, 0, 3, 3, 5]
    
    @EnvironmentObject private var settingsOfPlayers: SettingsOfPlayers
    @EnvironmentObject private var alertMessage: AlertMessage
    
    var body: some View {
        
        HStack(spacing: 0) {
            
            
            ForEach(numbers, id: \.self) { number in
                
                
                
                Button(
                    action: {
                    
                    if (!buttonsStates[number - 1] && number != 5) {
                        buttonsStates[number - 1].toggle()
                        
                        alertMessage.setAlert(buttonsStates: buttonsStates, number: number, player: 0, pawn: false)
                        
                        settingsOfPlayers.count2 += counterValues[number - 1]
                        
                        if (buttonsStates[number - 1] && !buttonsStates[7 - (number - 1)] && number != 5 && number != 4){
                            
                            isShowingAlert = true
                            
                        }
                        else if(!buttonsStates[number - 1] && buttonsStates[7 - (number - 1)] && number != 5 && number != 4) {
                            
                            isShowingAlert = true
                            
                        }
                        else if (alertMessage.numberOfPowerful
                                 == 7){
                            
                            isShowingAlert = true
                            
                        }
                        else if (alertMessage.numberOfPowerful == 6 && !buttonsStates[3]){
                            
                            isShowingAlert = true
                            
                        }
                         
                        
                        
                    }
                    
                },
                    label: {
                        ZStack {
                            if number == 1 {
                                if !buttonsStates[number - 1]{
                                    Image("twhb")
                                        .aspectRatio(1, contentMode: .fit)
                                }
                                else {
                                    Image("dwhb")
                                        .aspectRatio(1, contentMode: .fit)
                                }
                                
                                
                            }
                            if number == 2 {
                                if !buttonsStates[number - 1]{
                                    Image("hwhw")
                                        .aspectRatio(1, contentMode: .fit)
                                } else{
                                    Image("dwhw")
                                        .aspectRatio(1, contentMode: .fit)
                                }
                            }
                            if number == 3{
                                if !buttonsStates[number - 1]{
                                    Image("bwhb")
                                        .aspectRatio(1, contentMode: .fit)
                                } else{
                                    Image("dwhb")
                                        .aspectRatio(1, contentMode: .fit)
                                }
                            }
                            if number == 4{
                                if !buttonsStates[number - 1]{
                                    Image("qw")
                                        .aspectRatio(1, contentMode: .fit)
                                }
                                else{
                                    Image("dwhw")
                                        .aspectRatio(1, contentMode: .fit)
                                    
                                }
                            }
                            if number == 5{
                                
                                Image("kw")
                                    .aspectRatio(1, contentMode: .fit)
                                
                                
                            }
                            if number == 6{
                                if !buttonsStates[number - 1]{
                                    
                                    Image("bwhw")
                                        .aspectRatio(1, contentMode: .fit)
                                }
                                else{
                                    Image("dwhw")
                                        .aspectRatio(1, contentMode: .fit)
                                }
                                
                            }
                            if number == 7{
                                if !buttonsStates[number - 1]{
                                    Image("hwhb")
                                        .aspectRatio(1, contentMode: .fit)
                                }
                                else{
                                    Image("dwhb")
                                        .aspectRatio(1, contentMode: .fit)
                                    
                                }
                            }
                            if number == 8{
                                if !buttonsStates[number - 1]{
                                    Image("twhw")
                                        .aspectRatio(1, contentMode: .fit)
                                }
                                else{
                                    Image("dwhw")
                                        .aspectRatio(1, contentMode: .fit)
                                    
                                }
                            }
                        }
                    }
        ).alert(isPresented: $isShowingAlert){
            Alert(title: Text(alertMessage.titulo), message: Text(alertMessage.mensagem))
            }

            }
        }
    }
    struct BoardView6_Previews: PreviewProvider {
        static var previews: some View {
            BoardView6()
                .environmentObject(AlertMessage(titulo: "", mensagem: ""))
                .environmentObject(SettingsOfPlayers(Power1: .bombardeioDeGuerra, Power2: .bombardeioDeGuerra))
        }
    }
}
