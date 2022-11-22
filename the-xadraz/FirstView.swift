//
//  ContentView.swift
//  the-xadraz
//
//  Created by maxwel gomes dos santos on 04/11/22.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        ZStack {
                Image("LoadTela")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)

                    

        }
        .padding()

    }

}

struct FirstView_Previews: PreviewProvider {
    
    static var previews: some View {

        FirstView()

    }

}
