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
                    SelectionPowerButton()
                    SelectionPowerButton()
                    HStack {
                        NavigationLink(destination: thirdview()) {
                            Image("PlayIcon")
                        }
                        
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
