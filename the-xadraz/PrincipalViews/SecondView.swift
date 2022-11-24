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
        
        ZStack{
            
            Image("tela2")//Background
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            
            SelectionPowerButton()
            
        }
        
    }
    
}



struct SecondView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        SecondView()
        
    }
    
}
