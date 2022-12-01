//
//  BoardView2.swift
//  the-xadraz
//
//  Created by Raul Braga on 01/12/22.
//

import SwiftUI

struct BoardView2: View {

    

    let numbers = Array(1...8)

    

    var body: some View {

        

        HStack(spacing: 0) {

            

            ForEach(numbers, id: \.self) { number in

                

                Button {

                    

                    print(number)

                    

                } label: {

                    

                    ZStack {

                        if number % 2 == 0 {

                            Image("white")

                                .aspectRatio(1, contentMode: .fit)

                        } else {

                            Image("black")

                                .aspectRatio(1, contentMode: .fit)

                        }

                    }

                    

                }

                

            }

            

        }

        

    }

    

}



struct boardview2_Previews: PreviewProvider {

    static var previews: some View {

        BoardView2()

    }

}
