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
                   
                    BoardView()
                    BoardView2()
                
                ForEach( 1..<3 ){ _ in
                    BoardView3()
                    BoardView4()

                }
                BoardView5()
                BoardView6()
                    
                }

            }

        }

    }



struct tableview_Previews: PreviewProvider {

    static var previews: some View {

        TableView()

    }

}
