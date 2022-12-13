//
//  BoardView5.swift
//  the-xadraz
//
//  Created by maxwel gomes dos santos on 08/12/22.
//

import SwiftUI

struct BoardView5: View {
    
    @EnvironmentObject private var powerOfPlayers: PowerOfPlayers
    @State var buttonsStates: [Bool] = [false, false, false, false, false, false, false, false]

        
        
        let numbers = Array(1...8)
        
        
        
        var body: some View {
            
            
            
            HStack(spacing: 0) {
                
                
                
                ForEach(numbers, id: \.self) { number in
                    
                    
                    
                    Button {
                        if (!buttonsStates[number - 1]){
                            
                            buttonsStates[number - 1].toggle()
                            
                            powerOfPlayers.count2 += 1
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
                        
                        
                    }
                    
                    
                    
                }
                
                
                
            }
            
            
            
        }
    
    struct BoardView5_Previews: PreviewProvider {
        static var previews: some View {
            BoardView5()
                .environmentObject(PowerOfPlayers(Power1: .bombardeioDeGuerra, Power2: .bombardeioDeGuerra))
        }
    }
}
