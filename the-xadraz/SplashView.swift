//
//  SplashView.swift
//  the-xadraz
//
//  Created by maxwel gomes dos santos on 22/11/22.
//

import Foundation
struct : View {
    
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
                    Image("tela2")//Background
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    
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

struct FirstView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        FirstView()
        
    }
    
}
