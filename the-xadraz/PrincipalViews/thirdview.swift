//
//  thirdview.swift
//  the-xadraz
//
//  Created by maxwel gomes dos santos on 22/11/22.
//

import SwiftUI

struct thirdview: View {
    
    @EnvironmentObject var powerOfPlayers: PowerOfPlayers
    
    var body: some View {
        
        ZStack{
            
            Image("tela3")
            
                .resizable()
            
                .edgesIgnoringSafeArea(.all)
            
                .frame(width: UIScreen.main.bounds.width, height:
                        
                        UIScreen.main.bounds.height)
            
            VStack(spacing: 0.0) {
                HStack{
                    Button(
                        action: {print()},
                           label: {
                               ZStack{
                                   Circle()
                                       .fill(.white.opacity(0.9))
                                       .frame(width: 100, height:100)
                                   
                                   Image(powerOfPlayers.Power1.rawValue)

                                   }
                               }
                    )
                        .position(x: 130, y: 115)
                    Image("pb")
                        .position(x: 130, y: 180)
                }
                Spacer()
                       }
                
                TableView()
                    .padding(50)
            
                Spacer()
            
            HStack{
                Button(
                    action: {print()},
                       label: {
                           ZStack{
                               Circle()
                                   .fill(.white.opacity(0.9))
                                   .frame(width: 100, height: 100)
                               
                               Image(powerOfPlayers.Power2.rawValue)
                               
                               
                           }
                       }
            )
                .position(x: 360, y: 710)
                Image("pp")
                    .position(x: -150, y: 670)
            }

            }
    
        }
        
    }
    
    
    
    struct thirdview_Previews: PreviewProvider {
        
        static var previews: some View {
            
            thirdview()
                .environmentObject(PowerOfPlayers(Power1: .bombardeioDeGuerra, Power2: .bombardeioDeGuerra))
            
        }
    }
    

