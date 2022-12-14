//
//  thirdview.swift
//  the-xadraz
//
//  Created by maxwel gomes dos santos on 22/11/22.
//

import SwiftUI

struct thirdview: View {
    
    @State var isShowingAlert = false;
    @EnvironmentObject var powerOfPlayers: PowerOfPlayers
    @EnvironmentObject private var alertMEssage: AlertMessage
    
    var body: some View {
        
        ZStack{
            
            Image("tela3")
            
                .resizable()
            
                .edgesIgnoringSafeArea(.all)
            
                .frame(width: UIScreen.main.bounds.width, height:
                        
                        UIScreen.main.bounds.height)
            
            VStack(spacing: 0.0) {
                HStack{
//                    Button(
////                        action: {print()},
//                           label: {
                               ZStack{
                                   Circle()
                                       .fill(.white.opacity(0.9))
                                       .frame(width: 100, height:100)
                                   
                                   Image(powerOfPlayers.Power1.rawValue)

                                   }
//                               }
//                    )
                        .position(x: 130, y: 115)
                    HStack{
                        Text(String(powerOfPlayers.count1))
                            .font((.system(size: 50, weight: .heavy, design: .rounded)))
                        Image("pb")
                    }
                    .position(x: 130, y: 180)
                }
                Spacer()
                       }
                
                TableView()
                    .padding(50)
            
                Spacer()
            
            HStack{
//                Button(
//                    action: {print()},
//                       label: {
                           ZStack{
                               Circle()
                                   .fill(.white.opacity(0.9))
                                   .frame(width: 100, height: 100)
                               
                               Image(powerOfPlayers.Power2.rawValue)
                               
                               
                           }
//            )
                .position(x: 360, y: 710)
                HStack{
                    Image("pp")
                    Text(String(powerOfPlayers.count2))
                        .font((.system(size: 50, weight: .heavy, design: .rounded)))
                }
                    .position(x: -150, y: 670)
                
            }

            }
    
        }
        
    }
    
    
    
    struct thirdview_Previews: PreviewProvider {
        
        static var previews: some View {
            
            thirdview()
                .environmentObject(PowerOfPlayers(Power1: .bombardeioDeGuerra, Power2: .bombardeioDeGuerra))
                .environmentObject(AlertMessage(titulo: "", mensagem: ""))
            
        }
    }
    

