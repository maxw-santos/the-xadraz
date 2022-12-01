//
//  TableView.swift
//  the-xadraz
//
//  Created by Raul Braga on 01/12/22.
//


import SwiftUI



struct TableView: View {

    var body: some View {

        ZStack{

            Image("table")

            

            VStack(spacing: 0.0){

                ForEach(0..<4) { _ in

                    BoardView()

                    BoardView2()

                }

            }

        }

    }

}



struct tableview_Previews: PreviewProvider {

    static var previews: some View {

        TableView()

    }

}
