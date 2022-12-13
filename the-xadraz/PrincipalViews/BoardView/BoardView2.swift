//
//  BoardView2.swift
//  the-xadraz
//
//  Created by Raul Braga on 01/12/22.
//

import SwiftUI

struct BoardView2: View {
    
    @EnvironmentObject private var powerOfPlayers: PowerOfPlayers
    @State var buttonsStates: [Bool] = [false, false, false, false, false, false, false, false]


    let numbers = Array(1...8)

    

    var body: some View {

        

        HStack(spacing: 0) {

            

            ForEach(numbers, id: \.self) { number in

                

                Button {

                    if (!buttonsStates[number - 1]){
                        buttonsStates[number - 1].toggle()
                        
                        powerOfPlayers.count1 += 1
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

//                            Image("pbhb")
//
//                                .aspectRatio(1, contentMode: .fit)
//
//                        }
//
//                    }

                    

                }

                

            }

            

        }

        

    }

    

}



struct boardview2_Previews: PreviewProvider {

    static var previews: some View {

        BoardView2()
            .environmentObject(PowerOfPlayers(Power1: .bombardeioDeGuerra, Power2: .bombardeioDeGuerra))

    }

}
