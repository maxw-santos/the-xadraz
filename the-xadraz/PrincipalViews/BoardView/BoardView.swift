//
//  BoardView.swift
//  the-xadraz
//
//  Created by Raul Braga on 01/12/22.
//

import SwiftUI

struct BoardView: View {
    
    @EnvironmentObject private var powerOfPlayers: PowerOfPlayers
    
    @State var buttonsStates: [Bool] = [false, false, false, false, false, false, false, false]
    
    let counterValues: [Int] = [5, 3, 3, 9, 0, 3, 3, 5]
    
    let numbers = Array(1...8)
    
    
    
    var body: some View {
        
        
        
        HStack(spacing: 0) {
            
            
            
            ForEach(numbers, id: \.self) { number in
                
                
                
                Button {
                    
                    if (!buttonsStates[number - 1]){
                        buttonsStates[number - 1].toggle()
                        
                        powerOfPlayers.count1 += counterValues[number - 1]
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
                
                
                
            }
            
            
            
        }
    }
    struct Boardview_Previews: PreviewProvider {
        
        static var previews: some View {
            
            BoardView()
                .environmentObject(PowerOfPlayers(Power1: .bombardeioDeGuerra, Power2: .bombardeioDeGuerra))
            
        }
        
    }
}
