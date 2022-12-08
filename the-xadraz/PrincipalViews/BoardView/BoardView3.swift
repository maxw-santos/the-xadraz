//
//  BoardView3.swift
//  the-xadraz
//
//  Created by maxwel gomes dos santos on 08/12/22.
//

import SwiftUI

struct BoardView3: View {
    @State var buttonsStates: [Bool] = [false, false, false, false, false, false, false, false]

    let numbers = Array(1...8)
    
    
    
    var body: some View {
        
        
        
        HStack(spacing: 0) {
            
            
            
            ForEach(numbers, id: \.self) { number in
                
                
                
                Button {
                    
                    
                    
                    buttonsStates[number - 1].toggle()

                    
                    
                    
                } label: {
                    
                    
                    
                    ZStack {
                        
                        if number % 2 == 0 {
                            
                            Image("black")
                            
                                .aspectRatio(1, contentMode: .fit)
                            
                        } else {
                            
                            Image("white")
                            
                                .aspectRatio(1, contentMode: .fit)
                            
                        }
                        
                    }
                    
                    
                    
                }
                
                
                
            }
            
            
            
        }
    }
    struct BoardView3_Previews: PreviewProvider {
        static var previews: some View {
            BoardView3()
        }
    }
}
