//
//  thirdview.swift
//  the-xadraz
//
//  Created by maxwel gomes dos santos on 22/11/22.
//

import SwiftUI

struct thirdview: View {
    
    @State var isShowingAlert = false;
    @EnvironmentObject var settingOfPlayers: SettingsOfPlayers
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
                                   
                                   Image(settingOfPlayers.Power1.rawValue)

                                   }
                                    .position(x: 110, y: 148)
//                               }
//                    )
                    VStack{
                        ZStack{
                            Rectangle()
                                .fill(.white)
                                .opacity(0.9)
                                .frame(width: 180, height: 90)
                                .cornerRadius(100)
                                .position(x: -100, y: 330)
                                .padding(10)
                                .position(x: 290, y: -50)
                            ClockView1()
                                .position(x: 80, y: 80)
                        }
                                
                        
                        HStack{
                            Text(String(settingOfPlayers.count2))
                                .font((.system(size: 50, weight: .heavy, design: .rounded)))
                            Image("pb")
                        }
                        .position(x: 120, y: -235)
                        
                    }
                       

                }
                
            }
                    
                Spacer()
            
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
                               
                               Image(settingOfPlayers.Power2.rawValue)
                               
                               
                           }
//            )
                .position(x: 370, y: 700)
                VStack{
                    
                    HStack{
                        Image("pp")
                        Text(String(settingOfPlayers.count1))
                            .font((.system(size: 50, weight: .heavy, design: .rounded)))
                    }
                    .position(x: -130, y: 660)
                    
                    
                    ZStack{
                        Rectangle()
                            .fill(.white)
                            .opacity(0.9)
                            .frame(width: 180, height: 90)
                            .cornerRadius(100)
                            .position(x: -100, y: 310)
                            .padding(10)
                        ClockView2()
                            .position(x: -90, y: 320)
                    }
                    
                }
                
            }

            }
    
        }
        
    }
    
    
    
    struct thirdview_Previews: PreviewProvider {
        
        static var previews: some View {
            
            thirdview()
                .environmentObject(SettingsOfPlayers(Power1: .bombardeioDeGuerra, Power2: .bombardeioDeGuerra))
                .environmentObject(AlertMessage(titulo: "", mensagem: ""))
            
        }
    }
    

