//
//  thirdview.swift
//  the-xadraz
//
//  Created by maxwel gomes dos santos on 22/11/22.
//

import SwiftUI

struct thirdview: View {
    
    var powerPlayer1 = PowerSelectionPlayer1View().selectedPower
    var powerPlayer2 = PowerSelectionPlayer2View().selectedPower
    
    var body: some View {
        
        ZStack{
            
            Image("tela3")
            
                .resizable()
            
                .edgesIgnoringSafeArea(.all)
            
                .frame(width: UIScreen.main.bounds.width, height:
                        
                        UIScreen.main.bounds.height)
            
            VStack(spacing: 0.0) {
                
                Button(
                    action: {print()},
                       label: {
                           ZStack{
                               Circle()
                                   .fill(.white.opacity(0.9))
                                   .frame(width: 100, height:100)
                                   .position(x: 370, y: 140)
                                   .ignoresSafeArea()
                               
                               switch(powerPlayer2){
                               case .bombardeioDeGuerra:
                                       Image("Cannon")
                                            .position(x: 370, y: 140)
                               case .acordoDeMercenarios:
                                       Image("AcordoDeMercenarios")
                                            .position(x: 370, y: 140)
                               case .campoFechado:
                                       Image("CampoFechado")
                                            .position(x: 370, y: 140)
                               case .ataqueAoPosto:
                                        Image("AtaqueAoPosto")
                                            .position(x: 370, y: 140)
                                   
                               }
                           }
                       }
                )
                
                TableView()
                    .padding(50)
                
                    Button(
                        action: {print()},
                           label: {
                               ZStack{
                                   Circle()
                                       .fill(.white.opacity(0.9))
                                       .frame(width: 100, height:100)
                                       .position(x: 120, y: 30)
                                       .ignoresSafeArea()
                                   
                                   switch(powerPlayer1){
                                   case .bombardeioDeGuerra:
                                           Image("Cannon")
                                                .position(x: 120, y: 30)
                                   case .acordoDeMercenarios:
                                           Image("AcordoDeMercenarios")
                                                .position(x: 120, y: 30)
                                   case .campoFechado:
                                           Image("CampoFechado")
                                                .position(x: 120, y: 30)
                                   case .ataqueAoPosto:
                                            Image("AtaqueAoPosto")
                                                .position(x: 120, y: 30)
                                            
                                   }
                               }
                           }
                )

            }
    
        }
        
    }
    
    
    
    struct thirdview_Previews: PreviewProvider {
        
        static var previews: some View {
            
            thirdview()
            
        }
    }
    
    
}
