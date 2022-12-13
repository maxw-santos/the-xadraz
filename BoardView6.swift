//
//  BoardView6.swift
//  the-xadraz
//
//  Created by maxwel gomes dos santos on 08/12/22.
//

import SwiftUI

struct BoardView6: View {
    
    let numbers = Array(1...8)
    
    let counterValues: [Int] = [5, 3, 3, 9, 0, 3, 3, 5]
    
    @EnvironmentObject private var powerOfPlayers: PowerOfPlayers
    @State var buttonsStates: [Bool] = [false, false, false, false, false, false, false, false]

    
    var body: some View {
        
        
        
        HStack(spacing: 0) {
            
            
            
            ForEach(numbers, id: \.self) { number in
                
                
                
                Button {
                    
                    if (!buttonsStates[number - 1]){
                        buttonsStates[number - 1].toggle()
                        
                        powerOfPlayers.count2 += counterValues[number - 1]
                    }
                   
                    
                    
                    
                } label: {
                    
                    
                    
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
                            
                            
                        };
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
                                .aspectRatio(1, contentMode: .fit)                        }
                        }
                        
                        
                        
                    }
                    
                    
                    
                }
                
                
                
            }
        }
    }
        struct BoardView6_Previews: PreviewProvider {
            static var previews: some View {
                BoardView6()
            }
        }
    }
