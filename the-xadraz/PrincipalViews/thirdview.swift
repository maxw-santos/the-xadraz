//
//  thirdview.swift
//  the-xadraz
//
//  Created by maxwel gomes dos santos on 22/11/22.
//

import SwiftUI

struct thirdview: View {
    
    @EnvironmentObject private var powerOfPlayers: PowerOfPlayers
    
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
                               
                               Image(nameOfPowers[powerOfPlayers.Power2.rawValue]!)
                                   
                               }
                           }
                )
                       }
                
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
                                   
                                   Image(nameOfPowers[powerOfPlayers.Power2.rawValue]!)
                                   
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
    

