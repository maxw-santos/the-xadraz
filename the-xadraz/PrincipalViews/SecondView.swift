//
//  SecondView.swift
//  the-xadraz
//
//  Created by Raul Braga on 22/11/22.
//

import SwiftUI

struct SecondView: View {
    
    @State var isShowingSheet = false
    
    var body: some View {
        
        NavigationView {
            
            ZStack{
                Image("tela2") //Background
                    .resizable()
                    .ignoresSafeArea()
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                VStack {
                    Image("tex1")
                        .position(x : 150 , y : 90 )
                    SelectionPowerPlayer1Button()
                    
                        .position(x : 200, y: 50)
                    Image("tex2")
                        .position(x : 150 , y : 35 )
                    
                    SelectionPowerPlayer2Button()
                        .position(x : 200, y: 50 )
                    
                    
                    HStack {
                        SelectionTimeButtons()
                            .position(x: 70 , y: 50 )
                        
                        NavigationLink(destination: thirdview()) {
                            Image("PlayIcon")
                            
                        }
                        .position(x : 120 ,  y : 50)
                    }
                }
                
            }
        }.ignoresSafeArea()
            .edgesIgnoringSafeArea(.all)
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        
    }
}



struct SecondView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        SecondView()
            .environmentObject(PowerOfPlayers(Power1: .bombardeioDeGuerra, Power2: .bombardeioDeGuerra))
    }
    
}
