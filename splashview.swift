//
//  splashview.swift
//  the-xadraz
//
//  Created by maxwel gomes dos santos on 22/11/22.
//

import SwiftUI
struct splashview: View {
    
    @State var isShowingImage = true
    
    var body: some View {
        ZStack {
            if isShowingImage {
                Image("LoadTela")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            } else {
                ZStack{
                    SecondView()
                    
                    
                }
                
            }
        }
        .padding()
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                withAnimation(.default.delay(0)) {
                    isShowingImage = false
                }
            }
        }
    }
    
}

struct splashview_Previews: PreviewProvider {
    
    static var previews: some View {
        
        FirstView()
        
    }
    
}
