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
                Image("tela2")//Background
                    .resizable()
                    .ignoresSafeArea()
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                VStack {
                    Image("tex1")
                        .position(x : 150 , y : 90 )
                    SelectionPowerButton()
                        .position(x : 200, y: 50)
                    Image("tex2")
                        .position(x : 150 , y : 35 )
                    
                    SelectionPowerButton()
                        .position(x : 200, y: 50 )
                    
                    
                    HStack {
                        NavigationLink(destination: thirdview()) {
                            Image("PlayIcon")
                            
                        }
                        .position(x : 320 ,  y : 45)
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
        
    }
    
}
