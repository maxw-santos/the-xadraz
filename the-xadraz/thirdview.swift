//
//  thirdview.swift
//  the-xadraz
//
//  Created by maxwel gomes dos santos on 22/11/22.
//

import SwiftUI

struct thirdview: View {
    var body: some View {
        ZStack{
            Image("tela3")
            .resizable()
            .edgesIgnoringSafeArea(.all)
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)

        }    }
}

struct thirdview_Previews: PreviewProvider {
    static var previews: some View {
        thirdview()
    }
}
